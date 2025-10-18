# I named the columns in Excel, exported a CSV, and then used the following
#  regex: s/^(.*?),(.*?),(.*)$/  # $3\n  $1 = "$2",\n/g to make this mapping

#' It seems that our data has a unique column name for each question across
#'  every survey. This is great, it allows us to nicely rename the columns
#'  into something legible without writing something long and similar six
#'  times. This is the map of old name to new name (new names on the right).
column_name_map_english <- c(
  # Start Date
  StartDate = "start_date",
  
  # End Date
  EndDate = "end_date",
  
  # Response Type
  Status = "status",
  
  # IP Address
  IPAddress = "ip_address",
  
  # Progress
  Progress = "progress",
  
  # Duration (in seconds)
  Duration__in_seconds_ = "duration",
  
  # Finished
  Finished = "finished",
  
  # Recorded Date
  RecordedDate = "recorded_date",
  
  # Response ID
  ResponseId = "response_id",
  
  # Recipient Last Name
  RecipientLastName = "last_name",
  
  # Recipient First Name
  RecipientFirstName = "first_name",
  
  # Recipient Email
  RecipientEmail = "email",
  
  # External Data Reference
  ExternalReference = "external_reference",
  
  # Location Latitude
  LocationLatitude = "location_latitude",
  
  # Location Longitude
  LocationLongitude = "location_longitude",
  
  # Distribution Channel
  DistributionChannel = "distribution_channel",
  
  # User Language
  UserLanguage = "language",
  
  # "First, please select your country code:"
  Q3 = "country_code",
  
  # Please enter your parent's mobile number (without country code):
  Q4 = "phone_number_1",
  
  # Please confirm your parent's mobile number (without country code):
  Q5 = "phone_number_1_conf",
  
  # Please enter your parent's mobile number (without country code):
  Q6 = "phone_number_2",
  
  # Please confirm your parent's mobile number (without country code):
  Q7 = "phone_number_2_conf",
  
  # Please enter your parent's mobile number (without country code):
  Q8 = "phone_number_3",
  
  # Please confirm your parent's mobile number (without country code):
  Q9 = "phone_number_3_conf",
  
  # Please enter your parent's mobile number in the format of / +[country code] [phone number]
  Q10 = "phone_number_cc",
  
  # Please confirm your parent's mobile number in the format of / +[country code] [phone number]
  Q11 = "phone_number_cc_conf",
  
  # How old are you?
  Q12 = "age",
  
  # What is your birthday? / Day
  Q13 = "birth_day",
  
  # Month
  Q14 = "birth_month",
  
  # Year
  Q15 = "birth_year",
  
  # "Please respond to the following questions on a scale from 0 to 10: - Overall, how satisfied are you with life as a whole these days?"
  Q16_1 = "adolescent_1",
  
  # Q17 - In general I consider myself a happy person.
  Q17_1 = "adolescent_2",
  
  # "Q18 - In general, how would you rate your physical health?"
  Q18_1 = "adolescent_3",
  
  # Q19 - How would you rate your overall mental health?
  Q19_1 = "adolescent_4",
  
  # "Q20 - Overall, to what extent do you feel the things you do in your life are worthwhile?"
  Q20_1 = "adolescent_5",
  
  # Q21 - I am doing things now that will help me achieve my goals in life.
  Q21_1 = "adolescent_6",
  
  # "Q22 - I always act to promote good in all circumstances, even in difficult and challenging situations."
  Q22_1 = "adolescent_7",
  
  # Q23 - I am always able to give up some happiness now for greater happiness later.
  Q23_1 = "adolescent_8",
  
  # Q24 - I am content with my friendships and relationships.
  Q24_1 = "adolescent_9",
  
  # Q25 - I have people in my life I can talk to about things that really matter.
  Q25_1 = "adolescent_10",
  
  # Q26 - My family has enough money to live a truly decent life.
  Q26_1 = "adolescent_11",
  
  # "Q27 - How often do you worry about safety, food, or housing?"
  Q27_1 = "adolescent_12",
  
  # "Please respond to the following questions on a scale from 0 to 10: - Overall, I am happy with life."
  Q28_1 = "childhood_1",
  
  # Q29 - I’m a happy person.
  Q29_1 = "childhood_2",
  
  # Q30 - How healthy are you?
  Q30_1 = "childhood_3",
  
  # Q31 - My mind is at peace.
  Q31_1 = "childhood_4",
  
  # Q32 - Do you feel the things you do in your life matter?
  Q32_1 = "childhood_5",
  
  # Q33 - I am doing things now that will help me in my life when I grow up.
  Q33_1 = "childhood_6",
  
  # "Q34 - I always try to do the right thing, even when it is hard."
  Q34_1 = "childhood_7",
  
  # Q35 - I am always able to do something hard now that I know will make me happy later.
  Q35_1 = "childhood_8",
  
  # Q36 - I am happy with my friendships and relationships.
  Q36_1 = "childhood_9",
  
  # Q37 - I have people in my life I can talk to about things that really matter.
  Q37_1 = "childhood_10",
  
  # Q38 - My family has enough money to live a good life.
  Q38_1 = "childhood_11",
  
  # "Q39 - How often do you worry about being safe, having food to eat, or having a place to live?"
  Q39_1 = "childhood_12",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - My parent senses when I’m upset about something.
  Q40_1 = "ippa_1",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - I feel that my parent doesn’t understand me.
  Q40_2 = "ippa_2",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - My parent encourages me to talk about my difficulties.
  Q40_3 = "ippa_3",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - My parent trusts my judgment.
  Q40_4 = "ippa_4",
  
  # "Please think about the parent who shared this questionnaire with you when you respond to the following statements. - If my parent knows something is bothering me, she asks me about it."
  Q40_5 = "ippa_5",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - I cannot depend on my parent these days.
  Q40_6 = "ippa_6",
  
  # "Please think about the parent who shared this questionnaire with you when you respond to the following statements. - When we discuss things, my parent considers my point of view."
  Q40_7 = "ippa_7",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - I tell my parent about my problems and troubles.
  Q40_8 = "ippa_8",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - I get upset a lot more than my parent knows about.
  Q40_9 = "ippa_9",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - My parent helps me to understand myself better.
  Q40_10 = "ippa_10",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - My parent respects my feelings.
  Q40_11 = "ippa_11",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - My parent doesn’t understand what I’m going through these days.
  Q40_12 = "ippa_12",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - I can count on my parent when I need to get something off my chest.
  Q40_13 = "ippa_13",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following statements. - I trust my parent.
  Q40_14 = "ippa_14",
  
  # Please respond to the following: - I am patient with other people.
  Q41_1 = "patience_1",
  
  # Please respond to the following: - My parents would say I am very patient.
  Q41_2 = "patience_2",
  
  # Please respond to the following: - I am pretty calm.
  Q42_1 = "serenity_1",
  
  # Please respond to the following: - I like to be at peace.
  Q42_2 = "serenity_2",
  
  # Please respond to the following: - When someone bothers me I try to stay calm.
  Q42_3 = "serenity_3",
  
  # Please respond to the following: - I am almost always relaxed.
  Q42_4 = "serenity_4",
  
  # Please respond to the following: - When things go wrong I try to calm myself down.
  Q42_5 = "serenity_5",
  
  # Please respond to the following: - Even if other people are nervous I can feel calm.
  Q42_6 = "serenity_6",
  
  # Please respond to the following: - Most days I feel at peace.
  Q42_7 = "serenity_7",
  
  # "Please respond to the following: - Even if I have problems, I still stay calm."
  Q42_8 = "serenity_8",
  
  # Please respond to the following: - I stay calm even if I can't do what I like.
  Q42_9 = "serenity_9",
  
  # Please respond to the following: - I solve problems very calmly.
  Q42_10 = "serenity_10",
  
  # Please respond to the following: - When I am scared I try to calm myself down.
  Q42_11 = "serenity_11",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following questions. - I am deeply loved by my mother/father.
  Q43_1 = "parent_love_1",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following questions. - My mother/father deeply desires that our lives will always be closely connected.
  Q43_2 = "parent_love_2",
  
  # Please think about the parent who shared this questionnaire with you when you respond to the following questions. - My mother/father deeply desires that all will go well for me.
  Q43_3 = "parent_love_3",
  
  # Q44 - I deeply love my mother/father
  Q44_1 = "child_love_1",
  
  # Q44 - I really desire that my life will always be closely connected with my mother/father
  Q44_2 = "child_love_2",
  
  # Q44 - I really want everything to go well for my mother/father
  Q44_3 = "child_love_3",
  
  # What is your gender? - Selected Choice
  Q45 = "gender",
  
  # What is your gender? - Prefer to describe it myself - Text
  Q45_3_TEXT = "gender_custom",
  
  # How often do you attend religious services?
  Q46 = "religion",
  
  # What is your English proficiency?
  Q47 = "english_proficiency",
  
  # "On a typical day, how many hours do you spend on your phone/mobile device?"
  Q48 = "phone_use",
  
  # Please think about your parent who shared this questionnaire with you when you respond to the following statement. / I spend as much quality time as I’d like to with my parent.
  Q49 = "quality_time",
  
  # In the past two months, did your parent reflect on what there is to be grateful for with you (in which you reflect on what you feel thankful for)?
  Q69 = "extra_binary_1",
  
  # What did they say? What did you share that you were grateful for?
  Q87 = "extra_binary_1_frq",
  
  # In the past two months, did your parent ever use a breathing exercise with you to calm down?
  Q70 = "extra_binary_2",
  
  # What happened? What did they do? How did it make you feel?
  Q88 = "extra_binary_2_frq",
  
  # In the past two months, did your parent try to support you to feel calm?
  Q71 = "extra_binary_3",
  
  # "What happened? What did they do? Did they do anything differently than they usually do? If so, what?"
  Q89 = "extra_binary_3_frq",
  
  # In the past two months, did your parent try to teach you something during a difficult moment?
  Q72 = "extra_binary_4",
  
  # In the past two months, did your parent try to understand your perspective (what you think) about a disagreement?
  Q73 = "extra_binary_5",
  
  # What happened? What did they say?
  Q91 = "extra_binary_5_frq",
  
  # In the past two months, did your parent ask you how you feel during a disagreement?
  Q74 = "extra_binary_6",
  
  # What happened? What did they say?
  Q92 = "extra_binary_6_frq",
  
  # In the past two months, did your parent talk with you in a way that made you feel supported and cared for after you did something wrong?
  Q75 = "extra_binary_7",
  
  # What happened? What did they say?
  Q93 = "extra_binary_7_frq",
  
  # In the past two months, did your parent ask you for forgiveness after getting angry with you or yelling at you?
  Q76 = "extra_binary_8",
  
  # What happened? What did they say?
  Q94 = "extra_binary_8_frq",
  
  # In the past two months, have you noticed your parent being more patient with you?
  Q77 = "extra_binary_9",
  
  # Can you describe a moment in the past two months that your parent was patient with you?
  Q95 = "extra_binary_9_frq",
  
  # In the past two months, have you noticed your parent being calmer?
  Q78 = "extra_scale_1",
  
  # In the past two months, have you noticed your parent being more joyful?
  Q79 = "extra_scale_2",
  
  # In the past two months, have you noticed your parent being more grateful (thankful)?
  Q80 = "extra_scale_3",
  
  # In the past two months, have you noticed you’ve been more patient?
  Q81 = "extra_scale_4",
  
  # In the past two months, have you noticed you’ve been calmer?
  Q82 = "extra_scale_5",
  
  # Can you describe a moment in the past two months that you felt calm with your parent?
  Q101 = "extra_scale_5_frq",
  
  # In the past two months, have you noticed you’ve been more joyful?
  Q83 = "extra_scale_6",
  
  # In the past two months, have you noticed you’ve been more grateful (thankful)?
  Q84 = "extra_scale_7",
  
  # Can you describe a moment in the past two months that you felt grateful (thankful) for your parent?
  Q103 = "extra_scale_7_frq",
  
  # Reflecting on the past two months, have you noticed any improvement in your relationship with your parent?
  Q85 = "extra_scale_8",
  
  # How has your relationship with your parent improved?
  Q104 = "extra_scale_8_frq",
  
  # Reflecting on the past two months, have you noticed any improvement in your wellbeing (how good you feel)?
  Q86 = "extra_scale_9",
  
  # How has your wellbeing improved?
  Q105 = "extra_scale_9_frq"
)

column_name_map_spanish <- c(
  # Start Date
  StartDate = "start_date",

  # End Date
  EndDate = "end_date",

  # Response Type
  Status = "status",

  # IP Address
  IPAddress = "ip_address",

  # Progress
  Progress = "progress",

  # Duration (in seconds)
  Duration__in_seconds_ = "duration",

  # Finished
  Finished = "finished",

  # Recorded Date
  RecordedDate = "recorded_date",

  # Response ID
  ResponseId = "response_id",

  # Recipient Last Name
  RecipientLastName = "last_name",

  # Recipient First Name
  RecipientFirstName = "first_name",

  # Recipient Email
  RecipientEmail = "email",

  # External Data Reference
  ExternalReference = "external_reference",

  # Location Latitude
  LocationLatitude = "location_latitude",

  # Location Longitude
  LocationLongitude = "location_longitude",

  # Distribution Channel
  DistributionChannel = "distribution_channel",

  # User Language
  UserLanguage = "language",

  # "Primero, seleccione el código de tu país:"
  Q3 = "country_code",

  # "Por favor, introduce el número de móvil de tu padre o madre (sin código de país):"
  Q4 = "phone_number_1",

  # "Por favor, confirma el número de móvil de tu padre o madre (sin código de país):"
  Q5 = "phone_number_1_conf",

  # "Por favor, introduce el número de móvil de tu padre o madre (sin código de país):"
  Q6 = "phone_number_2",

  # "Por favor, confirma el número de móvil de tu padre o madre (sin código de país):"
  Q7 = "phone_number_2_conf",

  # Por favor introduce el número de móvil de tu padre o madre en el formato de / +[código de país] [número de teléfono]
  Q8 = "phone_number_cc",

  # "Por favor, confirma el número de móvil de tu padre o madre en el formato de / +[código de país] [número de teléfono]"
  Q9 = "phone_number_cc_conf",

  # ¿Cuántos años tienes?
  Q10 = "age",

  # ¿Cuál es tu fecha de nacimiento? / Día
  Q11 = "birth_day",

  # Mes
  Q12 = "birth_month",

  # Año
  Q13 = "birth_year",

  # "Por favor, responde a las siguientes preguntas en una escala del 0 al 10: - En general, ¿qué tan satisfecho/a te sientes con tu vida?"
  Q14_1 = "adolescent_1",

  # "Q15 - En general, me considero una persona feliz."
  Q15_1 = "adolescent_2",

  # "Q16 - En general, ¿cómo calificarías tu salud física?"
  Q16_1 = "adolescent_3",

  # "Q17 - En general, ¿cómo calificarías tu salud mental?"
  Q17_1 = "adolescent_4",

  # "Q18 - En general, ¿hasta qué punto sientes que las cosas que haces en tu vida valen la pena?"
  Q18_1 = "adolescent_5",

  # Q19 - Ahora mismo estoy haciendo cosas que me ayudarán a lograr mis metas en la vida.
  Q19_1 = "adolescent_6",

  # "Q20 - Siempre actúo para promover el bien en todas las circunstancias, incluso en situaciones difíciles y adversas."
  Q20_1 = "adolescent_7",

  # Q21 - Siempre soy capaz de renunciar a algo de felicidad ahora a cambio de conseguir una mayor felicidad más tarde.
  Q21_1 = "adolescent_8",

  # Q22 - Estoy contento/a con mis amistades y relaciones.
  Q22_1 = "adolescent_9",

  # Q23 - Tengo personas en mi vida con las que puedo hablar de cosas que realmente importan.
  Q23_1 = "adolescent_10",

  # Q24 - Mi familia tiene suficiente dinero para vivir una vida verdaderamente digna.
  Q24_1 = "adolescent_11",

  # "Q25 - ¿Con qué frecuencia te preocupa la seguridad, la comida o la vivienda?"
  Q25_1 = "adolescent_12",

  # "Por favor, responde a las siguientes preguntas en una escala del 0 al 10: - En general, estoy contento con la vida."
  Q26_1 = "childhood_1",

  # Q27 - Soy una persona feliz.
  Q27_1 = "childhood_2",

  # Q28 - ¿Te sientes sano/a?
  Q28_1 = "childhood_3",

  # Q29 - Mi mente está tranquila.
  Q29_1 = "childhood_4",

  # Q30 - ¿Sientes que las cosas que haces en tu vida valen la pena?
  Q30_1 = "childhood_5",

  # Q31 - Ahora mismo estoy haciendo cosas que me ayudarán en mi vida cuando crezca.
  Q31_1 = "childhood_6",

  # "Q32 - Siempre hago lo que es bueno, aunque me cueste."
  Q32_1 = "childhood_7",

  # Q33 - Siempre soy capaz de hacer algo que me cueste ahora que sé que me hará feliz después.
  Q33_1 = "childhood_8",

  # Q34 - Soy muy feliz con mis amistades y mis relaciones.
  Q34_1 = "childhood_9",

  # Q35 - Tengo personas en mi vida con las que puedo hablar de cosas que realmente importan.
  Q35_1 = "childhood_10",

  # Q36 - Mi familia tiene suficiente dinero para vivir una buena vida.
  Q36_1 = "childhood_11",

  # "Q37 - ¿Con qué frecuencia te preocupas por estar seguro, tener comida para comer o tener un lugar en el que vivir?"
  Q37_1 = "childhood_12",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Mi madre/padre nota cuando estoy molesta/o por algo."
  Q38_1 = "ippa_1",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Siento que mi madre/padre no me entiende."
  Q38_2 = "ippa_2",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Mi madre/padre me anima a hablar sobre mis dificultades."
  Q38_3 = "ippa_3",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Mi madre/padre confía en mi juicio."
  Q38_4 = "ippa_4",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Si mi madre/padre sabe que algo me está molestando, me pregunta al respecto."
  Q38_5 = "ippa_5",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - No puedo depender de mi madre/padre estos días."
  Q38_6 = "ippa_6",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Cuando hablamos de cosas, mi padre considera mi punto de vista."
  Q38_7 = "ippa_7",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Le cuento a mi padre mis problemas y dificultades."
  Q38_8 = "ippa_8",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Me molesto mucho más de lo que mi madre/padre se da cuenta."
  Q38_9 = "ippa_9",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Mi madre/padre me ayuda a entenderme mejor a mí misma/o."
  Q38_10 = "ippa_10",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Mis padres respetan mis sentimientos."
  Q38_11 = "ippa_11",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Mis padres no entienden por lo que estoy pasando estos días."
  Q38_12 = "ippa_12",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Puedo contar con mis padres cuando necesito sacar algo de mi pecho."
  Q38_13 = "ippa_13",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Confío en mis padres."
  Q38_14 = "ippa_14",

  # Responde a lo siguiente: - Soy paciente con otras personas.
  Q39_1 = "patience_1",

  # Responde a lo siguiente: - Mis padres dirían que soy muy paciente.
  Q39_2 = "patience_2",

  # Por favor responda a lo siguiente: - Soy bastante tranquilo/a.
  Q40_1 = "serentiy_1",

  # Por favor responda a lo siguiente: - Me gusta estar en paz.
  Q40_2 = "serentiy_2",

  # Por favor responda a lo siguiente: - Cuando alguien me molesta trato de quedarme tranquilo/a.
  Q40_3 = "serentiy_3",

  # Por favor responda a lo siguiente: - Casi siempre estoy relajado/a.
  Q40_4 = "serentiy_4",

  # Por favor responda a lo siguiente: - Cuando las cosas salen mal intento tranquilizarme.
  Q40_5 = "serentiy_5",

  # Por favor responda a lo siguiente: - Aunque las demás personas estén nerviosos yo puedo sentirme tranquilo/a.
  Q40_6 = "serentiy_6",

  # Por favor responda a lo siguiente: - La mayor parte de los días me siento en paz.
  Q40_7 = "serentiy_7",

  # "Por favor responda a lo siguiente: - Aunque tenga problemas, igual mantengo la calma."
  Q40_8 = "serentiy_8",

  # Por favor responda a lo siguiente: - Me quedo tranquilo/a aunque no pueda hacer lo que me gusta.
  Q40_9 = "serentiy_9",

  # Por favor responda a lo siguiente: - Soluciono los problemas con mucha tranquilidad.
  Q40_10 = "serentiy_10",

  # Por favor responda a lo siguiente: - Cuando tengo miedo trato de serenarme.
  Q40_11 = "serentiy_11",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Mi madre/padre me ama profundamente."
  Q41_1 = "parent_love_1",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Mi madre/padre desea profundamente que nuestras vidas siempre estén estrechamente conectadas."
  Q41_2 = "parent_love_2",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. - Mi madre/padre desea profundamente que me vaya bien en todo."
  Q41_3 = "parent_love_3",

  # Q42 - Amo profundamente a mi madre/padre.
  Q42_1 = "child_love_1",

  # Q42 - Realmente deseo que mi vida siempre esté estrechamente conectada con mi madre/padre.
  Q42_2 = "child_love_2",

  # Q42 - Realmente quiero que le vaya bien en todo a mi madre/padre.
  Q42_3 = "child_love_3",

  # ¿Cuál es tu género? - Selected Choice
  Q43 = "gender",

  # ¿Cuál es tu género? - Prefiero describirlo yo mismo/a - Text
  Q43_3_TEXT = "gender_custom",

  # ¿Con qué frecuencia asiste a servicios religiosos?
  Q44 = "religion",

  # "En un día normal, ¿cuántas horas pasa en su teléfono/dispositivo móvil?"
  Q45 = "phone_use",

  # "Por favor, piensa en tu padre o madre, el/la que compartió este cuestionario contigo, cuando respondas a las siguientes declaraciones. / Paso todo el tiempo de calidad que me gustaría con mi madre/padre."
  Q46 = "quality_time",

  # "En los últimos 2 meses, ¿ha reflexionado tu padre/madre contigo acerca de aquello por lo que hay que estar agradecido? (en el que tú has reflexionado en aquello por lo que estás agradecido)?"
  Q48 = "extra_binary_1",

  # ¿Qué dijiste? ¿Qué te hace sentir agradecido/a?
  Q71 = "extra_binary_1_frq",

  # "En los últimos 2 meses, ¿alguna vez tu padre/madre utilizó un ejercicio de respiración contigo para calmarse?"
  Q50 = "extra_binary_2",

  # ¿Qué sucedió? ¿Qué hicieron?
  Q72 = "extra_binary_2_frq",

  # "En los últimos 2 meses, ¿intentaron tus padres ayudarte a tranquilizarte?"
  Q73 = "extra_binary_3",

  # "¿Qué sucedió? ¿Qué hicieron? ¿Hicieron algo diferente a lo habitual? Si es así, ¿qué?"
  Q74 = "extra_binary_3_frq",

  # "En los últimos 2 meses, ¿intentaron tus padres comprender tu perspectiva (lo que piensas) sobre un desacuerdo?"
  Q57 = "extra_binary_5",

  # ¿Qué sucedió? ¿Qué dijeron?
  Q76 = "extra_binary_5_frq",

  # "En los últimos 2 meses, ¿te preguntaron tus padres cómo te sentiste durante un desacuerdo?"
  Q58 = "extra_binary_6",

  # ¿Qué sucedió? ¿Qué dijeron?
  Q77 = "extra_binary_6_frq",

  # "En los últimos dos meses, ¿te habló tu padre o tu madre de una manera que te hizo sentir apoyado y cuidado después de hacer algo malo?"
  Q59 = "extra_binary_7",

  # ¿Qué sucedió? ¿Qué dijeron?
  Q78 = "extra_binary_7_frq",

  # "En los últimos dos meses, ¿te pidió perdón tu padre o tu madre después de enojarse contigo o gritarte?"
  Q60 = "extra_binary_8",

  # ¿Qué sucedió? ¿Qué dijeron?
  Q79 = "extra_binary_8_frq",

  # "En los últimos dos meses, ¿has notado que tu padre o tu madre es más paciente contigo?"
  Q61 = "extra_binary_9",

  # ¿Puedes describir un momento en los últimos dos meses en el que tu padre o tu madre fue más paciente contigo?
  Q80 = "extra_binary_9_frq",

  # "En los últimos dos meses, ¿has notado que tu padre o tu madre está más tranquilo?"
  Q62 = "extra_scale_1",

  # "En los últimos dos meses, ¿has notado que tu padre o tu madre ha estado alegre?"
  Q63 = "extra_scale_2",

  # "En los últimos dos meses, ¿has notado que tu padre o madre está más agradecido?"
  Q64 = "extra_scale_3",

  # "En los últimos dos meses, ¿has notado que has sido más paciente?"
  Q65 = "extra_scale_4",

  # "En los últimos dos meses, ¿has notado que has estado más tranquilo?"
  Q66 = "extra_scale_5",

  # ¿Puedes describir un momento en los últimos dos meses en el que hayas sentido calma con tu padre o madre?
  Q81 = "extra_scale_5_frq",

  # "En los últimos dos meses, ¿has notado que has estado más feliz?"
  Q67 = "extra_scale_6",

  # "En los últimos dos meses, ¿has notado que has estado más agradecido?"
  Q68 = "extra_scale_7",

  # ¿Puedes describir un momento en los últimos dos meses en el que te hayas sentido agradecido por tu padre o madre?
  Q82 = "extra_scale_7_frq",

  # "Reflexionando sobre los últimos dos meses, ¿has notado alguna mejora en la relación con tu padre o madre?"
  Q69 = "extra_scale_8",

  # ¿Cómo ha mejorado tu relación con tu padre o madre?
  Q83 = "extra_scale_8_frq",

  # "Reflexionando sobre los últimos dos meses, ¿has notado alguna mejora en tu bienestar (te sientes bien)?"
  Q70 = "extra_scale_9",

  # ¿Cómo ha mejorado tu bienestar?
  Q84 = "extra_scale_9_frq"
)
