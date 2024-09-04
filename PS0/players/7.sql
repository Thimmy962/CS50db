SELECT COUNT("id") from "players"
where ("bats" = 'L' AND "throws" = 'R') OR ("bats" = 'R' AND "throws" = 'L');