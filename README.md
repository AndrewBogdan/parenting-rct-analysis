
Child Data Cleaning — Important Details
---------------------------------------

Here are the choices (yes, choices) I made while cleaning the data.
- I (basically manually) matched the English and Spanish questions.
  - I didn't use AI to do it, but AI probably would have been better at it. I did
  get an outsider to check that I did it right, so it's probably fine.
- DROPPED: all entries marked with `FINISHED = 0`
- DROPPED: all entries which had the same phone number and baseline
  - These are potentially duplicates, but are probably siblings. Either way, we can't match the siblings.
- DROPPED: follow-up measurements with no corresponding baseline
  - We _might_ be able to use these for aggregate metrics, but we don't know why the 
  baseline is missing, so I wouldn't call it safe.
- I combined the data from what seemed to be the childhood and adolescent 
  flourishing measures into one.