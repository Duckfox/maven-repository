@echo off
echo ������ȡ���´���...
setlocal enabledelayedexpansion

:: ��ȡ���´���
git pull origin master

:: ��ʾ�û������ύ��Ϣ
set /p commitMessage=�������ύ��Ϣ:

:: ����Ƿ�������
if "!commitMessage!"=="" (
    echo δ�����ύ��Ϣ�������˳�.
    exit /b 1
)

:: ��Ӹ��ĵ��ݴ���
git add .

:: �ύ����
git commit -m "!commitMessage!"

:: ���͵�Զ�ֿ̲�
git push origin master

echo �ϴ����.
pause
