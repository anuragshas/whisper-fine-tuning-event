python run_speech_recognition_seq2seq_streaming.py \
    --model_name_or_path="openai/whisper-small" \
    --dataset_name="mozilla-foundation/common_voice_11_0" \
    --dataset_config_name="pa-IN" \
    --language="punjabi" \
    --train_split_name="train+validation" \
    --eval_split_name="test" \
    --model_index_name="Whisper Small Punjabi" \
    --max_steps="400" \
    --output_dir="./" \
    --per_device_train_batch_size="64" \
    --per_device_eval_batch_size="32" \
    --logging_steps="25" \
    --learning_rate="1e-5" \
    --evaluation_strategy="steps" \
    --eval_steps="50" \
    --save_strategy="steps" \
    --save_steps="50" \
    --generation_max_length="225" \
    --length_column_name="input_length" \
    --max_duration_in_seconds="30" \
    --text_column_name="sentence" \
    --freeze_feature_encoder="False" \
    --report_to="tensorboard" \
    --gradient_checkpointing \
    --fp16 \
    --overwrite_output_dir \
    --do_train \
    --do_eval \
    --predict_with_generate \
    --do_normalize_eval \
    --use_auth_token \
    --push_to_hub
