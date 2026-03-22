package com.google.android.gms.internal.p003firebaseauthapi;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaoe  reason: invalid package */
/* loaded from: classes4.dex */
final class zzaoe extends zzaob {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
        return r10 + r0;
     */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaob
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(java.lang.String r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p003firebaseauthapi.zzaoe.zza(java.lang.String, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaob
    public final int zza(int i10, byte[] bArr, int i11, int i12) {
        while (i11 < i12 && bArr[i11] >= 0) {
            i11++;
        }
        if (i11 >= i12) {
            return 0;
        }
        while (i11 < i12) {
            int i13 = i11 + 1;
            byte b10 = bArr[i11];
            if (b10 < 0) {
                if (b10 < -32) {
                    if (i13 >= i12) {
                        return b10;
                    }
                    if (b10 >= -62) {
                        i11 += 2;
                        if (bArr[i13] > -65) {
                        }
                    }
                    return -1;
                } else if (b10 >= -16) {
                    if (i13 >= i12 - 2) {
                        return zzaoa.zza(bArr, i13, i12);
                    }
                    int i14 = i11 + 2;
                    byte b11 = bArr[i13];
                    if (b11 <= -65 && (((b10 << 28) + (b11 + 112)) >> 30) == 0) {
                        int i15 = i11 + 3;
                        if (bArr[i14] <= -65) {
                            i11 += 4;
                            if (bArr[i15] > -65) {
                            }
                        }
                    }
                    return -1;
                } else if (i13 >= i12 - 1) {
                    return zzaoa.zza(bArr, i13, i12);
                } else {
                    int i16 = i11 + 2;
                    byte b12 = bArr[i13];
                    if (b12 <= -65 && ((b10 != -32 || b12 >= -96) && (b10 != -19 || b12 < -96))) {
                        i11 += 3;
                        if (bArr[i16] > -65) {
                        }
                    }
                    return -1;
                }
            }
            i11 = i13;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzaob
    public final String zza(byte[] bArr, int i10, int i11) throws zzall {
        if ((i10 | i11 | ((bArr.length - i10) - i11)) >= 0) {
            int i12 = i10 + i11;
            char[] cArr = new char[i11];
            int i13 = 0;
            while (i10 < i12) {
                byte b10 = bArr[i10];
                if (b10 < 0) {
                    break;
                }
                i10++;
                zzaoc.zza(b10, cArr, i13);
                i13++;
            }
            int i14 = i13;
            while (i10 < i12) {
                int i15 = i10 + 1;
                byte b11 = bArr[i10];
                if (b11 >= 0) {
                    int i16 = i14 + 1;
                    zzaoc.zza(b11, cArr, i14);
                    while (i15 < i12) {
                        byte b12 = bArr[i15];
                        if (b12 < 0) {
                            break;
                        }
                        i15++;
                        zzaoc.zza(b12, cArr, i16);
                        i16++;
                    }
                    i14 = i16;
                    i10 = i15;
                } else if (b11 < -32) {
                    if (i15 < i12) {
                        i10 += 2;
                        zzaoc.zza(b11, bArr[i15], cArr, i14);
                        i14++;
                    } else {
                        throw zzall.zzd();
                    }
                } else if (b11 < -16) {
                    if (i15 < i12 - 1) {
                        int i17 = i10 + 2;
                        i10 += 3;
                        zzaoc.zza(b11, bArr[i15], bArr[i17], cArr, i14);
                        i14++;
                    } else {
                        throw zzall.zzd();
                    }
                } else if (i15 < i12 - 2) {
                    byte b13 = bArr[i15];
                    int i18 = i10 + 3;
                    i10 += 4;
                    zzaoc.zza(b11, b13, bArr[i10 + 2], bArr[i18], cArr, i14);
                    i14 += 2;
                } else {
                    throw zzall.zzd();
                }
            }
            return new String(cArr, 0, i14);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i10), Integer.valueOf(i11)));
    }
}
