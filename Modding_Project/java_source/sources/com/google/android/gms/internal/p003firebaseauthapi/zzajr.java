package com.google.android.gms.internal.p003firebaseauthapi;

import com.google.android.gms.internal.p003firebaseauthapi.zzalf;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzajr  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzajr {
    private static volatile int zza = 100;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double zza(byte[] bArr, int i10) {
        return Double.longBitsToDouble(zzd(bArr, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float zzb(byte[] bArr, int i10) {
        return Float.intBitsToFloat(zzc(bArr, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(byte[] bArr, int i10) {
        return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) | ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(byte[] bArr, int i10, zzaju zzajuVar) {
        byte b10;
        int i11 = i10 + 1;
        long j10 = bArr[i10];
        if (j10 >= 0) {
            zzajuVar.zzb = j10;
            return i11;
        }
        int i12 = i10 + 2;
        byte b11 = bArr[i11];
        long j11 = (j10 & 127) | ((b11 & ByteCompanionObject.MAX_VALUE) << 7);
        int i13 = 7;
        while (b11 < 0) {
            int i14 = i12 + 1;
            i13 += 7;
            j11 |= (b10 & ByteCompanionObject.MAX_VALUE) << i13;
            b11 = bArr[i12];
            i12 = i14;
        }
        zzajuVar.zzb = j11;
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(byte[] bArr, int i10, zzaju zzajuVar) throws zzall {
        int zzc = zzc(bArr, i10, zzajuVar);
        int i11 = zzajuVar.zza;
        if (i11 >= 0) {
            if (i11 <= bArr.length - zzc) {
                if (i11 == 0) {
                    zzajuVar.zzc = zzajv.zza;
                    return zzc;
                }
                zzajuVar.zzc = zzajv.zza(bArr, zzc, i11);
                return zzc + i11;
            }
            throw zzall.zzj();
        }
        throw zzall.zzf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(zzanb<?> zzanbVar, int i10, byte[] bArr, int i11, int i12, zzalm<?> zzalmVar, zzaju zzajuVar) throws IOException {
        int zza2 = zza(zzanbVar, bArr, i11, i12, zzajuVar);
        zzalmVar.add(zzajuVar.zzc);
        while (zza2 < i12) {
            int zzc = zzc(bArr, zza2, zzajuVar);
            if (i10 != zzajuVar.zza) {
                break;
            }
            zza2 = zza(zzanbVar, bArr, zzc, i12, zzajuVar);
            zzalmVar.add(zzajuVar.zzc);
        }
        return zza2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(byte[] bArr, int i10, zzaju zzajuVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            zzajuVar.zza = b10;
            return i11;
        }
        return zza(b10, bArr, i11, zzajuVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzd(byte[] bArr, int i10) {
        return ((bArr[i10 + 7] & 255) << 56) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(byte[] bArr, int i10, zzaju zzajuVar) throws zzall {
        int zzc = zzc(bArr, i10, zzajuVar);
        int i11 = zzajuVar.zza;
        if (i11 >= 0) {
            if (i11 == 0) {
                zzajuVar.zzc = "";
                return zzc;
            }
            zzajuVar.zzc = zzaoa.zzb(bArr, zzc, i11);
            return zzc + i11;
        }
        throw zzall.zzf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, byte[] bArr, int i11, int i12, Object obj, zzamm zzammVar, zzanu<zzanx, zzanx> zzanuVar, zzaju zzajuVar) throws IOException {
        if (zzajuVar.zzd.zza(zzammVar, i10 >>> 3) == null) {
            return zza(i10, bArr, i11, i12, zzamq.zzc(obj), zzajuVar);
        }
        zzalf.zzd zzdVar = (zzalf.zzd) obj;
        zzdVar.zza();
        zzakx<zzalf.zzc> zzakxVar = zzdVar.zzc;
        throw new NoSuchMethodError();
    }

    private static <T> int zza(zzanb<T> zzanbVar, byte[] bArr, int i10, int i11, int i12, zzaju zzajuVar) throws IOException {
        T zza2 = zzanbVar.zza();
        int zza3 = zza(zza2, zzanbVar, bArr, i10, i11, i12, zzajuVar);
        zzanbVar.zzd(zza2);
        zzajuVar.zzc = zza2;
        return zza3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(zzanb<?> zzanbVar, int i10, byte[] bArr, int i11, int i12, zzalm<Object> zzalmVar, zzaju zzajuVar) throws IOException {
        int i13 = (i10 & (-8)) | 4;
        int zza2 = zza(zzanbVar, bArr, i11, i12, i13, zzajuVar);
        zzalmVar.add(zzajuVar.zzc);
        while (zza2 < i12) {
            int zzc = zzc(bArr, zza2, zzajuVar);
            if (i10 != zzajuVar.zza) {
                break;
            }
            zza2 = zza(zzanbVar, bArr, zzc, i12, i13, zzajuVar);
            zzalmVar.add(zzajuVar.zzc);
        }
        return zza2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> int zza(zzanb<T> zzanbVar, byte[] bArr, int i10, int i11, zzaju zzajuVar) throws IOException {
        T zza2 = zzanbVar.zza();
        int zza3 = zza(zza2, zzanbVar, bArr, i10, i11, zzajuVar);
        zzanbVar.zzd(zza2);
        zzajuVar.zzc = zza2;
        return zza3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(byte[] bArr, int i10, zzalm<?> zzalmVar, zzaju zzajuVar) throws IOException {
        zzali zzaliVar = (zzali) zzalmVar;
        int zzc = zzc(bArr, i10, zzajuVar);
        int i11 = zzajuVar.zza + zzc;
        while (zzc < i11) {
            zzc = zzc(bArr, zzc, zzajuVar);
            zzaliVar.zzc(zzajuVar.zza);
        }
        if (zzc == i11) {
            return zzc;
        }
        throw zzall.zzj();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, byte[] bArr, int i11, int i12, zzanx zzanxVar, zzaju zzajuVar) throws zzall {
        if ((i10 >>> 3) != 0) {
            int i13 = i10 & 7;
            if (i13 == 0) {
                int zzd = zzd(bArr, i11, zzajuVar);
                zzanxVar.zza(i10, Long.valueOf(zzajuVar.zzb));
                return zzd;
            } else if (i13 == 1) {
                zzanxVar.zza(i10, Long.valueOf(zzd(bArr, i11)));
                return i11 + 8;
            } else if (i13 == 2) {
                int zzc = zzc(bArr, i11, zzajuVar);
                int i14 = zzajuVar.zza;
                if (i14 >= 0) {
                    if (i14 <= bArr.length - zzc) {
                        if (i14 == 0) {
                            zzanxVar.zza(i10, zzajv.zza);
                        } else {
                            zzanxVar.zza(i10, zzajv.zza(bArr, zzc, i14));
                        }
                        return zzc + i14;
                    }
                    throw zzall.zzj();
                }
                throw zzall.zzf();
            } else if (i13 != 3) {
                if (i13 == 5) {
                    zzanxVar.zza(i10, Integer.valueOf(zzc(bArr, i11)));
                    return i11 + 4;
                }
                throw zzall.zzc();
            } else {
                zzanx zzd2 = zzanx.zzd();
                int i15 = (i10 & (-8)) | 4;
                int i16 = zzajuVar.zze + 1;
                zzajuVar.zze = i16;
                zza(i16);
                int i17 = 0;
                while (true) {
                    if (i11 >= i12) {
                        break;
                    }
                    int zzc2 = zzc(bArr, i11, zzajuVar);
                    int i18 = zzajuVar.zza;
                    i17 = i18;
                    if (i18 == i15) {
                        i11 = zzc2;
                        break;
                    }
                    int zza2 = zza(i17, bArr, zzc2, i12, zzd2, zzajuVar);
                    i17 = i18;
                    i11 = zza2;
                }
                zzajuVar.zze--;
                if (i11 <= i12 && i17 == i15) {
                    zzanxVar.zza(i10, zzd2);
                    return i11;
                }
                throw zzall.zzg();
            }
        }
        throw zzall.zzc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, byte[] bArr, int i11, zzaju zzajuVar) {
        int i12 = i10 & 127;
        int i13 = i11 + 1;
        byte b10 = bArr[i11];
        if (b10 >= 0) {
            zzajuVar.zza = i12 | (b10 << 7);
            return i13;
        }
        int i14 = i12 | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i13];
        if (b11 >= 0) {
            zzajuVar.zza = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & ByteCompanionObject.MAX_VALUE) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            zzajuVar.zza = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & ByteCompanionObject.MAX_VALUE) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            zzajuVar.zza = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] >= 0) {
                zzajuVar.zza = i20;
                return i21;
            }
            i19 = i21;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, byte[] bArr, int i11, int i12, zzalm<?> zzalmVar, zzaju zzajuVar) {
        zzali zzaliVar = (zzali) zzalmVar;
        int zzc = zzc(bArr, i11, zzajuVar);
        zzaliVar.zzc(zzajuVar.zza);
        while (zzc < i12) {
            int zzc2 = zzc(bArr, zzc, zzajuVar);
            if (i10 != zzajuVar.zza) {
                break;
            }
            zzc = zzc(bArr, zzc2, zzajuVar);
            zzaliVar.zzc(zzajuVar.zza);
        }
        return zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> int zza(Object obj, zzanb<T> zzanbVar, byte[] bArr, int i10, int i11, int i12, zzaju zzajuVar) throws IOException {
        zzamq zzamqVar = (zzamq) zzanbVar;
        int i13 = zzajuVar.zze + 1;
        zzajuVar.zze = i13;
        zza(i13);
        int zza2 = zzamqVar.zza((zzamq) obj, bArr, i10, i11, i12, zzajuVar);
        zzajuVar.zze--;
        zzajuVar.zzc = obj;
        return zza2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> int zza(Object obj, zzanb<T> zzanbVar, byte[] bArr, int i10, int i11, zzaju zzajuVar) throws IOException {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = zza(i13, bArr, i12, zzajuVar);
            i13 = zzajuVar.zza;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            int i15 = zzajuVar.zze + 1;
            zzajuVar.zze = i15;
            zza(i15);
            int i16 = i13 + i14;
            zzanbVar.zza(obj, bArr, i14, i16, zzajuVar);
            zzajuVar.zze--;
            zzajuVar.zzc = obj;
            return i16;
        }
        throw zzall.zzj();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(int i10, byte[] bArr, int i11, int i12, zzaju zzajuVar) throws zzall {
        if ((i10 >>> 3) != 0) {
            int i13 = i10 & 7;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 == 5) {
                                return i11 + 4;
                            }
                            throw zzall.zzc();
                        }
                        int i14 = (i10 & (-8)) | 4;
                        int i15 = 0;
                        while (i11 < i12) {
                            i11 = zzc(bArr, i11, zzajuVar);
                            i15 = zzajuVar.zza;
                            if (i15 == i14) {
                                break;
                            }
                            i11 = zza(i15, bArr, i11, i12, zzajuVar);
                        }
                        if (i11 > i12 || i15 != i14) {
                            throw zzall.zzg();
                        }
                        return i11;
                    }
                    return zzc(bArr, i11, zzajuVar) + zzajuVar.zza;
                }
                return i11 + 8;
            }
            return zzd(bArr, i11, zzajuVar);
        }
        throw zzall.zzc();
    }

    private static void zza(int i10) throws zzall {
        if (i10 >= zza) {
            throw zzall.zzh();
        }
    }
}
