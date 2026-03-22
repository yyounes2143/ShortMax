package com.google.android.gms.internal.ads;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgxo {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzb = 100;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(byte[] bArr, int i10, zzgxn zzgxnVar) throws zzgzw {
        int zzh = zzh(bArr, i10, zzgxnVar);
        int i11 = zzgxnVar.zza;
        if (i11 >= 0) {
            if (i11 <= bArr.length - zzh) {
                if (i11 == 0) {
                    zzgxnVar.zzc = zzgxz.zzb;
                    return zzh;
                }
                zzgxnVar.zzc = zzgxz.zzv(bArr, zzh, i11);
                return zzh + i11;
            }
            throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(byte[] bArr, int i10) {
        int i11 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i12 = bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(zzhbl zzhblVar, byte[] bArr, int i10, int i11, int i12, zzgxn zzgxnVar) throws IOException {
        Object zze = zzhblVar.zze();
        int zzl = zzl(zze, zzhblVar, bArr, i10, i11, i12, zzgxnVar);
        zzhblVar.zzf(zze);
        zzgxnVar.zzc = zze;
        return zzl;
    }

    static int zzd(zzhbl zzhblVar, byte[] bArr, int i10, int i11, zzgxn zzgxnVar) throws IOException {
        Object zze = zzhblVar.zze();
        int zzm = zzm(zze, zzhblVar, bArr, i10, i11, zzgxnVar);
        zzhblVar.zzf(zze);
        zzgxnVar.zzc = zze;
        return zzm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(zzhbl zzhblVar, int i10, byte[] bArr, int i11, int i12, zzgzt zzgztVar, zzgxn zzgxnVar) throws IOException {
        int zzd = zzd(zzhblVar, bArr, i11, i12, zzgxnVar);
        zzgztVar.add(zzgxnVar.zzc);
        while (zzd < i12) {
            int zzh = zzh(bArr, zzd, zzgxnVar);
            if (i10 != zzgxnVar.zza) {
                break;
            }
            zzd = zzd(zzhblVar, bArr, zzh, i12, zzgxnVar);
            zzgztVar.add(zzgxnVar.zzc);
        }
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzf(byte[] bArr, int i10, zzgzt zzgztVar, zzgxn zzgxnVar) throws IOException {
        zzgzi zzgziVar = (zzgzi) zzgztVar;
        int zzh = zzh(bArr, i10, zzgxnVar);
        int i11 = zzgxnVar.zza + zzh;
        while (zzh < i11) {
            zzh = zzh(bArr, zzh, zzgxnVar);
            zzgziVar.zzi(zzgxnVar.zza);
        }
        if (zzh == i11) {
            return zzh;
        }
        throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(int i10, byte[] bArr, int i11, int i12, zzhby zzhbyVar, zzgxn zzgxnVar) throws zzgzw {
        if ((i10 >>> 3) != 0) {
            int i13 = i10 & 7;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 == 5) {
                                zzhbyVar.zzj(i10, Integer.valueOf(zzb(bArr, i11)));
                                return i11 + 4;
                            }
                            throw new zzgzw("Protocol message contained an invalid tag (zero).");
                        }
                        int i14 = (i10 & (-8)) | 4;
                        zzhby zzf = zzhby.zzf();
                        int i15 = zzgxnVar.zze + 1;
                        zzgxnVar.zze = i15;
                        zzo(i15);
                        int i16 = 0;
                        while (true) {
                            if (i11 >= i12) {
                                break;
                            }
                            int zzh = zzh(bArr, i11, zzgxnVar);
                            i16 = zzgxnVar.zza;
                            if (i16 == i14) {
                                i11 = zzh;
                                break;
                            }
                            i11 = zzg(i16, bArr, zzh, i12, zzf, zzgxnVar);
                        }
                        zzgxnVar.zze--;
                        if (i11 <= i12 && i16 == i14) {
                            zzhbyVar.zzj(i10, zzf);
                            return i11;
                        }
                        throw new zzgzw("Failed to parse the message.");
                    }
                    int zzh2 = zzh(bArr, i11, zzgxnVar);
                    int i17 = zzgxnVar.zza;
                    if (i17 >= 0) {
                        if (i17 <= bArr.length - zzh2) {
                            if (i17 == 0) {
                                zzhbyVar.zzj(i10, zzgxz.zzb);
                            } else {
                                zzhbyVar.zzj(i10, zzgxz.zzv(bArr, zzh2, i17));
                            }
                            return zzh2 + i17;
                        }
                        throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                    }
                    throw new zzgzw("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                }
                zzhbyVar.zzj(i10, Long.valueOf(zzn(bArr, i11)));
                return i11 + 8;
            }
            int zzk = zzk(bArr, i11, zzgxnVar);
            zzhbyVar.zzj(i10, Long.valueOf(zzgxnVar.zzb));
            return zzk;
        }
        throw new zzgzw("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(byte[] bArr, int i10, zzgxn zzgxnVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            zzgxnVar.zza = b10;
            return i11;
        }
        return zzi(b10, bArr, i11, zzgxnVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(int i10, byte[] bArr, int i11, zzgxn zzgxnVar) {
        byte b10 = bArr[i11];
        int i12 = i11 + 1;
        int i13 = i10 & 127;
        if (b10 >= 0) {
            zzgxnVar.zza = i13 | (b10 << 7);
            return i12;
        }
        int i14 = i13 | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            zzgxnVar.zza = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & ByteCompanionObject.MAX_VALUE) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            zzgxnVar.zza = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & ByteCompanionObject.MAX_VALUE) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            zzgxnVar.zza = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] < 0) {
                i19 = i21;
            } else {
                zzgxnVar.zza = i20;
                return i21;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(int i10, byte[] bArr, int i11, int i12, zzgzt zzgztVar, zzgxn zzgxnVar) {
        zzgzi zzgziVar = (zzgzi) zzgztVar;
        int zzh = zzh(bArr, i11, zzgxnVar);
        zzgziVar.zzi(zzgxnVar.zza);
        while (zzh < i12) {
            int zzh2 = zzh(bArr, zzh, zzgxnVar);
            if (i10 != zzgxnVar.zza) {
                break;
            }
            zzh = zzh(bArr, zzh2, zzgxnVar);
            zzgziVar.zzi(zzgxnVar.zza);
        }
        return zzh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(byte[] bArr, int i10, zzgxn zzgxnVar) {
        byte b10;
        long j10 = bArr[i10];
        int i11 = i10 + 1;
        if (j10 >= 0) {
            zzgxnVar.zzb = j10;
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
        zzgxnVar.zzb = j11;
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzl(Object obj, zzhbl zzhblVar, byte[] bArr, int i10, int i11, int i12, zzgxn zzgxnVar) throws IOException {
        zzhav zzhavVar = (zzhav) zzhblVar;
        int i13 = zzgxnVar.zze + 1;
        zzgxnVar.zze = i13;
        zzo(i13);
        int zzc = zzhavVar.zzc(obj, bArr, i10, i11, i12, zzgxnVar);
        zzgxnVar.zze--;
        zzgxnVar.zzc = obj;
        return zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzm(Object obj, zzhbl zzhblVar, byte[] bArr, int i10, int i11, zzgxn zzgxnVar) throws IOException {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = zzi(i13, bArr, i12, zzgxnVar);
            i13 = zzgxnVar.zza;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            int i15 = zzgxnVar.zze + 1;
            zzgxnVar.zze = i15;
            zzo(i15);
            int i16 = i13 + i14;
            zzhblVar.zzi(obj, bArr, i14, i16, zzgxnVar);
            zzgxnVar.zze--;
            zzgxnVar.zzc = obj;
            return i16;
        }
        throw new zzgzw("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzn(byte[] bArr, int i10) {
        return (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48) | ((bArr[i10 + 7] & 255) << 56);
    }

    private static void zzo(int i10) throws zzgzw {
        if (i10 < zzb) {
            return;
        }
        throw new zzgzw("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }
}
