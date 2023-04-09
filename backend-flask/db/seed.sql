-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Andrew Brown', 'hello@me.com', 'andrewbrown', 'MOCK'),
  ('Andrew Bayko', 'hello@me.com', 'bayko', 'MOCK'),
  ('Londo Mollari','lmollari@centari.com' ,'londo' ,'MOCK'),
  ('Mama', 'hello@me.com', 'itsmamahello', 'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )