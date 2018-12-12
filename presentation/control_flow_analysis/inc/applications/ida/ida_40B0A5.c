signed int sub_40B0A5()
{
  int v0; // esi
  signed int *v1; // edx
  _BYTE *v2; // ecx
  signed int result; // eax
  signed int v4; // [esp-4h] [ebp-18h]
  signed int v5; // [esp+Ch] [ebp-8h]
  int (*v6)[112]; // [esp+10h] [ebp-4h]

  v0 = 0;
  v6 = dword_5A5BD8;
  do
  {
    v1 = (signed int *)v6;
    v2 = (char *)byte_5C3008 + v0;
    v5 = 112;
    do
    {
      result = *v1;
      if ( *v1 != 12 )
      {
        if ( result == 11 )
          goto LABEL_21;
        if ( result != 71 )
        {
          if ( result == 259 )
          {
            v4 = 5;
LABEL_9:
            result = v4;
            goto LABEL_22;
          }
          if ( result == 249 || result == 325 )
            goto LABEL_21;
          if ( result != 321 )
          {
            if ( result == 255 )
            {
              v4 = 4;
              goto LABEL_9;
            }
            if ( result != 211 )
            {
              if ( result == 344 )
                goto LABEL_21;
              if ( result != 341 )
              {
                if ( result == 331 )
                  goto LABEL_21;
                if ( result != 418 )
                {
                  if ( result != 421 )
                    goto LABEL_23;
LABEL_21:
                  result = 2;
                  goto LABEL_22;
                }
              }
            }
          }
        }
      }
      result = 1;
LABEL_22:
      *v2 = result;
LABEL_23:
      v1 += 112;
      v2 += 112;
      --v5;
    }
    while ( v5 );
    v6 = (int (*)[112])((char *)v6 + 4);
    ++v0;
  }
  while ( (signed int)v6 < (signed int)dword_5A5BD8[1] );
  return result;
}
