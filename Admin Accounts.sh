# Lists all users in the 'admin' group
# EXCEPT for root.
group='admin'
  if (dsmemberutil checkmembership -U root -G "$group" 2>&1 \
    | grep "<result>group .* cannot be found</result>") >&2; then
    exit 1
  fi
printf '<result>'
# Check every user
exec dscl . -list /Users \
  | while read each_username
  do
    printf "$each_username "
    dsmemberutil checkmembership -U "$each_username" -G "$group"
  done \
    | grep "is a member" | cut -d " " -f 1 | sed '/root/d' 
printf '</result>'
exit 0
# eof


#ea_display_name	Admin Accounts
