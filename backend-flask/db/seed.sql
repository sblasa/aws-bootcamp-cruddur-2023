-- this file was manually created
INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Andrew Brown', 'hello@me.com', 'andrewbrown', 'MOCK'),
  ('Sussette', 'msblasa@gmail.com', 'itsmamahello', 'MOCK'),
  ('Londo Mollari','lmollari@centari.com' ,'londo' ,'MOCK'),
  ('Test User', 'stblasa@gmail.com', 'testmeagain', 'MOCK');
  

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'itsmamahello' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp 0 interval '10 day'
  ),
  (
    (SELECT uuid from public.users WHERE users.handle = 'testmeagain' LIMIT 1),
    'I am the other!',
    current_timestamp + interval '10 day'
  );