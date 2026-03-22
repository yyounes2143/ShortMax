package com.google.android.recaptcha.internal;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzku {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzb = 100;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(byte[] bArr, int i10, zzkt zzktVar) throws zznn {
        int zzi = zzi(bArr, i10, zzktVar);
        int i11 = zzktVar.zza;
        if (i11 >= 0) {
            if (i11 <= bArr.length - zzi) {
                if (i11 == 0) {
                    zzktVar.zzc = zzle.zzb;
                    return zzi;
                }
                zzktVar.zzc = zzle.zzk(bArr, zzi, i11);
                return zzi + i11;
            }
            throw new zznn("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new zznn("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(byte[] bArr, int i10) {
        int i11 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i12 = bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(zzow zzowVar, byte[] bArr, int i10, int i11, int i12, zzkt zzktVar) throws IOException {
        Object zze = zzowVar.zze();
        int zzm = zzm(zze, zzowVar, bArr, i10, i11, i12, zzktVar);
        zzowVar.zzf(zze);
        zzktVar.zzc = zze;
        return zzm;
    }

    static int zzd(zzow zzowVar, byte[] bArr, int i10, int i11, zzkt zzktVar) throws IOException {
        Object zze = zzowVar.zze();
        int zzn = zzn(zze, zzowVar, bArr, i10, i11, zzktVar);
        zzowVar.zzf(zze);
        zzktVar.zzc = zze;
        return zzn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(zzow zzowVar, int i10, byte[] bArr, int i11, int i12, zznk zznkVar, zzkt zzktVar) throws IOException {
        int zzd = zzd(zzowVar, bArr, i11, i12, zzktVar);
        zznkVar.add(zzktVar.zzc);
        while (zzd < i12) {
            int zzi = zzi(bArr, zzd, zzktVar);
            if (i10 != zzktVar.zza) {
                break;
            }
            zzd = zzd(zzowVar, bArr, zzi, i12, zzktVar);
            zznkVar.add(zzktVar.zzc);
        }
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzf(byte[] bArr, int i10, zznk zznkVar, zzkt zzktVar) throws IOException {
        zzne zzneVar = (zzne) zznkVar;
        int zzi = zzi(bArr, i10, zzktVar);
        int i11 = zzktVar.zza + zzi;
        while (zzi < i11) {
            zzi = zzi(bArr, zzi, zzktVar);
            zzneVar.zzh(zzktVar.zza);
        }
        if (zzi == i11) {
            return zzi;
        }
        throw new zznn("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(byte[] bArr, int i10, zzkt zzktVar) throws zznn {
        int zzi = zzi(bArr, i10, zzktVar);
        int i11 = zzktVar.zza;
        if (i11 >= 0) {
            if (i11 == 0) {
                zzktVar.zzc = "";
                return zzi;
            }
            zzktVar.zzc = new String(bArr, zzi, i11, zznl.zza);
            return zzi + i11;
        }
        throw new zznn("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i10, byte[] bArr, int i11, int i12, zzpm zzpmVar, zzkt zzktVar) throws zznn {
        if ((i10 >>> 3) != 0) {
            int i13 = i10 & 7;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 == 5) {
                                zzpmVar.zzj(i10, Integer.valueOf(zzb(bArr, i11)));
                                return i11 + 4;
                            }
                            throw new zznn("Protocol message contained an invalid tag (zero).");
                        }
                        int i14 = (i10 & (-8)) | 4;
                        zzpm zzf = zzpm.zzf();
                        int i15 = zzktVar.zze + 1;
                        zzktVar.zze = i15;
                        zzq(i15);
                        int i16 = 0;
                        while (true) {
                            if (i11 >= i12) {
                                break;
                            }
                            int zzi = zzi(bArr, i11, zzktVar);
                            i16 = zzktVar.zza;
                            if (i16 == i14) {
                                i11 = zzi;
                                break;
                            }
                            i11 = zzh(i16, bArr, zzi, i12, zzf, zzktVar);
                        }
                        zzktVar.zze--;
                        if (i11 <= i12 && i16 == i14) {
                            zzpmVar.zzj(i10, zzf);
                            return i11;
                        }
                        throw new zznn("Failed to parse the message.");
                    }
                    int zzi2 = zzi(bArr, i11, zzktVar);
                    int i17 = zzktVar.zza;
                    if (i17 >= 0) {
                        if (i17 <= bArr.length - zzi2) {
                            if (i17 == 0) {
                                zzpmVar.zzj(i10, zzle.zzb);
                            } else {
                                zzpmVar.zzj(i10, zzle.zzk(bArr, zzi2, i17));
                            }
                            return zzi2 + i17;
                        }
                        throw new zznn("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                    }
                    throw new zznn("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                }
                zzpmVar.zzj(i10, Long.valueOf(zzp(bArr, i11)));
                return i11 + 8;
            }
            int zzl = zzl(bArr, i11, zzktVar);
            zzpmVar.zzj(i10, Long.valueOf(zzktVar.zzb));
            return zzl;
        }
        throw new zznn("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(byte[] bArr, int i10, zzkt zzktVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            zzktVar.zza = b10;
            return i11;
        }
        return zzj(b10, bArr, i11, zzktVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(int i10, byte[] bArr, int i11, zzkt zzktVar) {
        byte b10 = bArr[i11];
        int i12 = i11 + 1;
        int i13 = i10 & 127;
        if (b10 >= 0) {
            zzktVar.zza = i13 | (b10 << 7);
            return i12;
        }
        int i14 = i13 | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            zzktVar.zza = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & ByteCompanionObject.MAX_VALUE) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            zzktVar.zza = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & ByteCompanionObject.MAX_VALUE) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            zzktVar.zza = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] < 0) {
                i19 = i21;
            } else {
                zzktVar.zza = i20;
                return i21;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(int i10, byte[] bArr, int i11, int i12, zznk zznkVar, zzkt zzktVar) {
        zzne zzneVar = (zzne) zznkVar;
        int zzi = zzi(bArr, i11, zzktVar);
        zzneVar.zzh(zzktVar.zza);
        while (zzi < i12) {
            int zzi2 = zzi(bArr, zzi, zzktVar);
            if (i10 != zzktVar.zza) {
                break;
            }
            zzi = zzi(bArr, zzi2, zzktVar);
            zzneVar.zzh(zzktVar.zza);
        }
        return zzi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzl(byte[] bArr, int i10, zzkt zzktVar) {
        byte b10;
        long j10 = bArr[i10];
        int i11 = i10 + 1;
        if (j10 >= 0) {
            zzktVar.zzb = j10;
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
        zzktVar.zzb = j11;
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzm(Object obj, zzow zzowVar, byte[] bArr, int i10, int i11, int i12, zzkt zzktVar) throws IOException {
        zzol zzolVar = (zzol) zzowVar;
        int i13 = zzktVar.zze + 1;
        zzktVar.zze = i13;
        zzq(i13);
        int zzc = zzolVar.zzc(obj, bArr, i10, i11, i12, zzktVar);
        zzktVar.zze--;
        zzktVar.zzc = obj;
        return zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzn(Object obj, zzow zzowVar, byte[] bArr, int i10, int i11, zzkt zzktVar) throws IOException {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = zzj(i13, bArr, i12, zzktVar);
            i13 = zzktVar.zza;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            int i15 = zzktVar.zze + 1;
            zzktVar.zze = i15;
            zzq(i15);
            int i16 = i13 + i14;
            zzowVar.zzi(obj, bArr, i14, i16, zzktVar);
            zzktVar.zze--;
            zzktVar.zzc = obj;
            return i16;
        }
        throw new zznn("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzo(int i10, byte[] bArr, int i11, int i12, zzkt zzktVar) throws zznn {
        if ((i10 >>> 3) != 0) {
            int i13 = i10 & 7;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 == 5) {
                                return i11 + 4;
                            }
                            throw new zznn("Protocol message contained an invalid tag (zero).");
                        }
                        int i14 = (i10 & (-8)) | 4;
                        int i15 = 0;
                        while (i11 < i12) {
                            i11 = zzi(bArr, i11, zzktVar);
                            i15 = zzktVar.zza;
                            if (i15 == i14) {
                                break;
                            }
                            i11 = zzo(i15, bArr, i11, i12, zzktVar);
                        }
                        if (i11 <= i12 && i15 == i14) {
                            return i11;
                        }
                        throw new zznn("Failed to parse the message.");
                    }
                    return zzi(bArr, i11, zzktVar) + zzktVar.zza;
                }
                return i11 + 8;
            }
            return zzl(bArr, i11, zzktVar);
        }
        throw new zznn("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzp(byte[] bArr, int i10) {
        return (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48) | ((bArr[i10 + 7] & 255) << 56);
    }

    private static void zzq(int i10) throws zznn {
        if (i10 < zzb) {
            return;
        }
        throw new zznn("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }
}
