# [WPF]Windows Presentation Foundation Pixel Shader Effects Library

WPF�ŕ\�����Ă���摜�ɃG�t�F�N�g��������K�v������CPU�ւ̕��ׂ��Ⴂ���@��T���Ă��܂����B  

CodePlex�Ō��J����Ă���[http://wpffx.codeplex.com/:Windows Presentation Foundation Pixel Shader Effects Library]��Pixeal Shader���g�p���Ă���ᕉ�ׂȓ��삪���҂ł��܂��B  

�T���v���̓���m�F���ɃR���p�C�����ʂ炸�������̂ŁA�Ώ����@���܂ߓ������@���L�ڂ��܂��B  

## 1.)�R���p�C�����̏���  
�@�ȉ��̃c�[�����K�v�ɂȂ�܂��̂ŁA���肵�C���X�g�[�����܂��B  

�@[Shader Effects BuildTask and Templates.zip:http://wpf.codeplex.com/downloads/get/40167]  
�@��CodePlex����WPF Futures�̃y�[�W�Ɍf�ڂ���Ă��܂��B  
�@
�@[Direct X SDK:http://www.microsoft.com/en-us/download/details.aspx?id=6812]  
�@��2010/6/7�łŃR���p�C�����邱�Ƃ��ł��܂����B  
�@
## 2.)�R���p�C��  
�@WPF�ł��R���p�C������ƈȉ��̃G���[���������܂��B  
�@
```
Error    1    error X5608: Compiled shader code uses too many arithmetic instruction slots (65). Max. allowed by the target (ps_2_0) is 64.
```

���̃G���[�͈ȉ��̃t�H�[�����ŉ��P���@���f�ڂ���Ă��܂��B  

[https://wpffx.codeplex.com/discussions/73720:https://wpffx.codeplex.com/discussions/73720]  

���̋L���ɂ���ripple.fx��38�s�ڂ��ȉ��̂悤�ɏC�����s���Ή����ł��܂��B  

```
//float falloff = saturate(1-distance);  
float falloff = 1-distance;
```