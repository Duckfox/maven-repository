@echo off
echo ������ȡ���´���
setlocal enabledelayedexpansion

:: ��ȡ���´���
git pull origin master

:: ��ʾ�û������ύ��Ϣ
set /p commitMessage=Enter the commit message:

:: ����Ƿ�������
if "!commitMessage!"=="" (
    echo Commit message is required.
    exit /b 1
)

:: ��Ӹ��ĵ��ݴ���
git add .

:: �ύ����
git commit -m "!commitMessage!"

:: ���͵�Զ�ֿ̲�
git push origin master

echo Done.
pause
