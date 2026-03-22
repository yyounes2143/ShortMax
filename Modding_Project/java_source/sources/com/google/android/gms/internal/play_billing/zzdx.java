package com.google.android.gms.internal.play_billing;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.IOException;
import kotlin.jvm.internal.ByteCompanionObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzdx {
    public static final /* synthetic */ int zza = 0;
    private static volatile int zzb = 100;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(byte[] bArr, int i10, zzdw zzdwVar) throws zzfq {
        int zzi = zzi(bArr, i10, zzdwVar);
        int i11 = zzdwVar.zza;
        if (i11 >= 0) {
            if (i11 <= bArr.length - zzi) {
                if (i11 == 0) {
                    zzdwVar.zzc = zzei.zzb;
                    return zzi;
                }
                zzdwVar.zzc = zzei.zzj(bArr, zzi, i11);
                return zzi + i11;
            }
            throw new zzfq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
        throw new zzfq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(byte[] bArr, int i10) {
        int i11 = bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i12 = bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        int i13 = bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
        return ((bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) | (i12 << 8) | i11 | (i13 << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(zzgv zzgvVar, byte[] bArr, int i10, int i11, int i12, zzdw zzdwVar) throws IOException {
        Object zze = zzgvVar.zze();
        int zzm = zzm(zze, zzgvVar, bArr, i10, i11, i12, zzdwVar);
        zzgvVar.zzf(zze);
        zzdwVar.zzc = zze;
        return zzm;
    }

    static int zzd(zzgv zzgvVar, byte[] bArr, int i10, int i11, zzdw zzdwVar) throws IOException {
        Object zze = zzgvVar.zze();
        int zzn = zzn(zze, zzgvVar, bArr, i10, i11, zzdwVar);
        zzgvVar.zzf(zze);
        zzdwVar.zzc = zze;
        return zzn;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(zzgv zzgvVar, int i10, byte[] bArr, int i11, int i12, zzfn zzfnVar, zzdw zzdwVar) throws IOException {
        int zzd = zzd(zzgvVar, bArr, i11, i12, zzdwVar);
        zzfnVar.add(zzdwVar.zzc);
        while (zzd < i12) {
            int zzi = zzi(bArr, zzd, zzdwVar);
            if (i10 != zzdwVar.zza) {
                break;
            }
            zzd = zzd(zzgvVar, bArr, zzi, i12, zzdwVar);
            zzfnVar.add(zzdwVar.zzc);
        }
        return zzd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzf(byte[] bArr, int i10, zzfn zzfnVar, zzdw zzdwVar) throws IOException {
        zzfj zzfjVar = (zzfj) zzfnVar;
        int zzi = zzi(bArr, i10, zzdwVar);
        int i11 = zzdwVar.zza + zzi;
        while (zzi < i11) {
            zzi = zzi(bArr, zzi, zzdwVar);
            zzfjVar.zzg(zzdwVar.zza);
        }
        if (zzi == i11) {
            return zzi;
        }
        throw new zzfq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(byte[] bArr, int i10, zzdw zzdwVar) throws zzfq {
        int i11;
        int zzi = zzi(bArr, i10, zzdwVar);
        int i12 = zzdwVar.zza;
        if (i12 >= 0) {
            if (i12 == 0) {
                zzdwVar.zzc = "";
                return zzi;
            }
            int i13 = zzhr.zza;
            int length = bArr.length;
            if ((((length - zzi) - i12) | zzi | i12) >= 0) {
                int i14 = zzi + i12;
                char[] cArr = new char[i12];
                int i15 = 0;
                while (zzi < i14) {
                    byte b10 = bArr[zzi];
                    if (!zzhp.zzd(b10)) {
                        break;
                    }
                    zzi++;
                    cArr[i15] = (char) b10;
                    i15++;
                }
                int i16 = i15;
                while (zzi < i14) {
                    int i17 = zzi + 1;
                    byte b11 = bArr[zzi];
                    if (zzhp.zzd(b11)) {
                        cArr[i16] = (char) b11;
                        i16++;
                        zzi = i17;
                        while (zzi < i14) {
                            byte b12 = bArr[zzi];
                            if (zzhp.zzd(b12)) {
                                zzi++;
                                cArr[i16] = (char) b12;
                                i16++;
                            }
                        }
                    } else {
                        if (b11 < -32) {
                            if (i17 < i14) {
                                i11 = i16 + 1;
                                zzi += 2;
                                zzhp.zzc(b11, bArr[i17], cArr, i16);
                            } else {
                                throw new zzfq("Protocol message had invalid UTF-8.");
                            }
                        } else if (b11 < -16) {
                            if (i17 < i14 - 1) {
                                i11 = i16 + 1;
                                int i18 = zzi + 2;
                                zzi += 3;
                                zzhp.zzb(b11, bArr[i17], bArr[i18], cArr, i16);
                            } else {
                                throw new zzfq("Protocol message had invalid UTF-8.");
                            }
                        } else if (i17 < i14 - 2) {
                            byte b13 = bArr[i17];
                            int i19 = zzi + 3;
                            zzi += 4;
                            zzhp.zza(b11, b13, bArr[zzi + 2], bArr[i19], cArr, i16);
                            i16 += 2;
                        } else {
                            throw new zzfq("Protocol message had invalid UTF-8.");
                        }
                        i16 = i11;
                    }
                }
                zzdwVar.zzc = new String(cArr, 0, i16);
                return i14;
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(length), Integer.valueOf(zzi), Integer.valueOf(i12)));
        }
        throw new zzfq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(int i10, byte[] bArr, int i11, int i12, zzhi zzhiVar, zzdw zzdwVar) throws zzfq {
        if ((i10 >>> 3) != 0) {
            int i13 = i10 & 7;
            if (i13 != 0) {
                if (i13 != 1) {
                    if (i13 != 2) {
                        if (i13 != 3) {
                            if (i13 == 5) {
                                zzhiVar.zzj(i10, Integer.valueOf(zzb(bArr, i11)));
                                return i11 + 4;
                            }
                            throw new zzfq("Protocol message contained an invalid tag (zero).");
                        }
                        int i14 = (i10 & (-8)) | 4;
                        zzhi zzf = zzhi.zzf();
                        int i15 = zzdwVar.zze + 1;
                        zzdwVar.zze = i15;
                        zzp(i15);
                        int i16 = 0;
                        while (true) {
                            if (i11 >= i12) {
                                break;
                            }
                            int zzi = zzi(bArr, i11, zzdwVar);
                            i16 = zzdwVar.zza;
                            if (i16 == i14) {
                                i11 = zzi;
                                break;
                            }
                            i11 = zzh(i16, bArr, zzi, i12, zzf, zzdwVar);
                        }
                        zzdwVar.zze--;
                        if (i11 <= i12 && i16 == i14) {
                            zzhiVar.zzj(i10, zzf);
                            return i11;
                        }
                        throw new zzfq("Failed to parse the message.");
                    }
                    int zzi2 = zzi(bArr, i11, zzdwVar);
                    int i17 = zzdwVar.zza;
                    if (i17 >= 0) {
                        if (i17 <= bArr.length - zzi2) {
                            if (i17 == 0) {
                                zzhiVar.zzj(i10, zzei.zzb);
                            } else {
                                zzhiVar.zzj(i10, zzei.zzj(bArr, zzi2, i17));
                            }
                            return zzi2 + i17;
                        }
                        throw new zzfq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                    }
                    throw new zzfq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                }
                zzhiVar.zzj(i10, Long.valueOf(zzo(bArr, i11)));
                return i11 + 8;
            }
            int zzl = zzl(bArr, i11, zzdwVar);
            zzhiVar.zzj(i10, Long.valueOf(zzdwVar.zzb));
            return zzl;
        }
        throw new zzfq("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(byte[] bArr, int i10, zzdw zzdwVar) {
        int i11 = i10 + 1;
        byte b10 = bArr[i10];
        if (b10 >= 0) {
            zzdwVar.zza = b10;
            return i11;
        }
        return zzj(b10, bArr, i11, zzdwVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(int i10, byte[] bArr, int i11, zzdw zzdwVar) {
        byte b10 = bArr[i11];
        int i12 = i11 + 1;
        int i13 = i10 & 127;
        if (b10 >= 0) {
            zzdwVar.zza = i13 | (b10 << 7);
            return i12;
        }
        int i14 = i13 | ((b10 & ByteCompanionObject.MAX_VALUE) << 7);
        int i15 = i11 + 2;
        byte b11 = bArr[i12];
        if (b11 >= 0) {
            zzdwVar.zza = i14 | (b11 << 14);
            return i15;
        }
        int i16 = i14 | ((b11 & ByteCompanionObject.MAX_VALUE) << 14);
        int i17 = i11 + 3;
        byte b12 = bArr[i15];
        if (b12 >= 0) {
            zzdwVar.zza = i16 | (b12 << 21);
            return i17;
        }
        int i18 = i16 | ((b12 & ByteCompanionObject.MAX_VALUE) << 21);
        int i19 = i11 + 4;
        byte b13 = bArr[i17];
        if (b13 >= 0) {
            zzdwVar.zza = i18 | (b13 << 28);
            return i19;
        }
        int i20 = i18 | ((b13 & ByteCompanionObject.MAX_VALUE) << 28);
        while (true) {
            int i21 = i19 + 1;
            if (bArr[i19] < 0) {
                i19 = i21;
            } else {
                zzdwVar.zza = i20;
                return i21;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzk(int i10, byte[] bArr, int i11, int i12, zzfn zzfnVar, zzdw zzdwVar) {
        zzfj zzfjVar = (zzfj) zzfnVar;
        int zzi = zzi(bArr, i11, zzdwVar);
        zzfjVar.zzg(zzdwVar.zza);
        while (zzi < i12) {
            int zzi2 = zzi(bArr, zzi, zzdwVar);
            if (i10 != zzdwVar.zza) {
                break;
            }
            zzi = zzi(bArr, zzi2, zzdwVar);
            zzfjVar.zzg(zzdwVar.zza);
        }
        return zzi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzl(byte[] bArr, int i10, zzdw zzdwVar) {
        byte b10;
        long j10 = bArr[i10];
        int i11 = i10 + 1;
        if (j10 >= 0) {
            zzdwVar.zzb = j10;
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
        zzdwVar.zzb = j11;
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzm(Object obj, zzgv zzgvVar, byte[] bArr, int i10, int i11, int i12, zzdw zzdwVar) throws IOException {
        zzgo zzgoVar = (zzgo) zzgvVar;
        int i13 = zzdwVar.zze + 1;
        zzdwVar.zze = i13;
        zzp(i13);
        int zzc = zzgoVar.zzc(obj, bArr, i10, i11, i12, zzdwVar);
        zzdwVar.zze--;
        zzdwVar.zzc = obj;
        return zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzn(Object obj, zzgv zzgvVar, byte[] bArr, int i10, int i11, zzdw zzdwVar) throws IOException {
        int i12 = i10 + 1;
        int i13 = bArr[i10];
        if (i13 < 0) {
            i12 = zzj(i13, bArr, i12, zzdwVar);
            i13 = zzdwVar.zza;
        }
        int i14 = i12;
        if (i13 >= 0 && i13 <= i11 - i14) {
            int i15 = zzdwVar.zze + 1;
            zzdwVar.zze = i15;
            zzp(i15);
            int i16 = i13 + i14;
            zzgvVar.zzh(obj, bArr, i14, i16, zzdwVar);
            zzdwVar.zze--;
            zzdwVar.zzc = obj;
            return i16;
        }
        throw new zzfq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzo(byte[] bArr, int i10) {
        return (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16) | ((bArr[i10 + 3] & 255) << 24) | ((bArr[i10 + 4] & 255) << 32) | ((bArr[i10 + 5] & 255) << 40) | ((bArr[i10 + 6] & 255) << 48) | ((bArr[i10 + 7] & 255) << 56);
    }

    private static void zzp(int i10) throws zzfq {
        if (i10 < zzb) {
            return;
        }
        throw new zzfq("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }
}
