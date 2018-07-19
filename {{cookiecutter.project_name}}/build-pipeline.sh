#! sh

aws cloudformation package \
    --template-file pipeline.yaml \
    --output-template-file pipeline-out.yaml \
    --s3-bucket {{cookiecutter.bucket_name}}

aws cloudformation deploy \
    --template-file pipeline-out.yaml \
    --stack-name {{cookiecutter.bucket_name.replace(' ', '-')}}-CICD-Pipeline \
    --capabilities CAPABILITY_IAM

