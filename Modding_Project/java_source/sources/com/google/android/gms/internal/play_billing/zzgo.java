package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.android.billingclient:billing@@8.0.0 */
/* loaded from: classes5.dex */
public final class zzgo<T> implements zzgv<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzho.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzgl zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzhh zzl;
    private final zzev zzm;

    private zzgo(int[] iArr, Object[] objArr, int i10, int i11, zzgl zzglVar, boolean z10, int[] iArr2, int i12, int i13, zzgq zzgqVar, zzfy zzfyVar, zzhh zzhhVar, zzev zzevVar, zzgg zzggVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i10;
        this.zzf = i11;
        boolean z11 = false;
        if (zzevVar != null && (zzglVar instanceof zzff)) {
            z11 = true;
        }
        this.zzh = z11;
        this.zzi = iArr2;
        this.zzj = i12;
        this.zzk = i13;
        this.zzl = zzhhVar;
        this.zzm = zzevVar;
        this.zzg = zzglVar;
    }

    private static void zzA(Object obj) {
        if (zzL(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    private final void zzB(Object obj, Object obj2, int i10) {
        if (!zzI(obj2, i10)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzs = zzs(i10) & 1048575;
        Object object = unsafe.getObject(obj2, zzs);
        if (object != null) {
            zzgv zzv = zzv(i10);
            if (!zzI(obj, i10)) {
                if (!zzL(object)) {
                    unsafe.putObject(obj, zzs, object);
                } else {
                    Object zze = zzv.zze();
                    zzv.zzg(zze, object);
                    unsafe.putObject(obj, zzs, zze);
                }
                zzD(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzs);
            if (!zzL(object2)) {
                Object zze2 = zzv.zze();
                zzv.zzg(zze2, object2);
                unsafe.putObject(obj, zzs, zze2);
                object2 = zze2;
            }
            zzv.zzg(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + obj2.toString());
    }

    private final void zzC(Object obj, Object obj2, int i10) {
        int[] iArr = this.zzc;
        int i11 = iArr[i10];
        if (!zzM(obj2, i11, i10)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzs = zzs(i10) & 1048575;
        Object object = unsafe.getObject(obj2, zzs);
        if (object != null) {
            zzgv zzv = zzv(i10);
            if (!zzM(obj, i11, i10)) {
                if (!zzL(object)) {
                    unsafe.putObject(obj, zzs, object);
                } else {
                    Object zze = zzv.zze();
                    zzv.zzg(zze, object);
                    unsafe.putObject(obj, zzs, zze);
                }
                zzE(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzs);
            if (!zzL(object2)) {
                Object zze2 = zzv.zze();
                zzv.zzg(zze2, object2);
                unsafe.putObject(obj, zzs, zze2);
                object2 = zze2;
            }
            zzv.zzg(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + iArr[i10] + " is present but null: " + obj2.toString());
    }

    private final void zzD(Object obj, int i10) {
        int zzp = zzp(i10);
        long j10 = 1048575 & zzp;
        if (j10 == 1048575) {
            return;
        }
        zzho.zzq(obj, j10, (1 << (zzp >>> 20)) | zzho.zzc(obj, j10));
    }

    private final void zzE(Object obj, int i10, int i11) {
        zzho.zzq(obj, zzp(i11) & 1048575, i10);
    }

    private final void zzF(Object obj, int i10, Object obj2) {
        zzb.putObject(obj, zzs(i10) & 1048575, obj2);
        zzD(obj, i10);
    }

    private final void zzG(Object obj, int i10, int i11, Object obj2) {
        zzb.putObject(obj, zzs(i11) & 1048575, obj2);
        zzE(obj, i10, i11);
    }

    private final boolean zzH(Object obj, Object obj2, int i10) {
        if (zzI(obj, i10) == zzI(obj2, i10)) {
            return true;
        }
        return false;
    }

    private final boolean zzI(Object obj, int i10) {
        int zzp = zzp(i10);
        long j10 = zzp & 1048575;
        if (j10 == 1048575) {
            int zzs = zzs(i10);
            long j11 = zzs & 1048575;
            switch (zzr(zzs)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzho.zza(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzho.zzb(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzho.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzho.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzho.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzho.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzho.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzho.zzw(obj, j11);
                case 8:
                    Object zzf = zzho.zzf(obj, j11);
                    if (zzf instanceof String) {
                        if (((String) zzf).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (zzf instanceof zzei) {
                        if (zzei.zzb.equals(zzf)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (zzho.zzf(obj, j11) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzei.zzb.equals(zzho.zzf(obj, j11))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzho.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzho.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzho.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzho.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzho.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzho.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzho.zzf(obj, j11) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzho.zzc(obj, j10) & (1 << (zzp >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final boolean zzJ(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return zzI(obj, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    private static boolean zzK(Object obj, int i10, zzgv zzgvVar) {
        return zzgvVar.zzk(zzho.zzf(obj, i10 & 1048575));
    }

    private static boolean zzL(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzfi) {
            return ((zzfi) obj).zzz();
        }
        return true;
    }

    private final boolean zzM(Object obj, int i10, int i11) {
        if (zzho.zzc(obj, zzp(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private static boolean zzN(Object obj, long j10) {
        return ((Boolean) zzho.zzf(obj, j10)).booleanValue();
    }

    private static final void zzO(int i10, Object obj, zzhu zzhuVar) throws IOException {
        if (obj instanceof String) {
            zzhuVar.zzG(i10, (String) obj);
        } else {
            zzhuVar.zzd(i10, (zzei) obj);
        }
    }

    static zzhi zzd(Object obj) {
        zzfi zzfiVar = (zzfi) obj;
        zzhi zzhiVar = zzfiVar.zzc;
        if (zzhiVar == zzhi.zzc()) {
            zzhi zzf = zzhi.zzf();
            zzfiVar.zzc = zzf;
            return zzf;
        }
        return zzhiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x039f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.play_billing.zzgo zzl(java.lang.Class r34, com.google.android.gms.internal.play_billing.zzgi r35, com.google.android.gms.internal.play_billing.zzgq r36, com.google.android.gms.internal.play_billing.zzfy r37, com.google.android.gms.internal.play_billing.zzhh r38, com.google.android.gms.internal.play_billing.zzev r39, com.google.android.gms.internal.play_billing.zzgg r40) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzgo.zzl(java.lang.Class, com.google.android.gms.internal.play_billing.zzgi, com.google.android.gms.internal.play_billing.zzgq, com.google.android.gms.internal.play_billing.zzfy, com.google.android.gms.internal.play_billing.zzhh, com.google.android.gms.internal.play_billing.zzev, com.google.android.gms.internal.play_billing.zzgg):com.google.android.gms.internal.play_billing.zzgo");
    }

    private static double zzm(Object obj, long j10) {
        return ((Double) zzho.zzf(obj, j10)).doubleValue();
    }

    private static float zzn(Object obj, long j10) {
        return ((Float) zzho.zzf(obj, j10)).floatValue();
    }

    private static int zzo(Object obj, long j10) {
        return ((Integer) zzho.zzf(obj, j10)).intValue();
    }

    private final int zzp(int i10) {
        return this.zzc[i10 + 2];
    }

    private final int zzq(int i10, int i11) {
        int[] iArr = this.zzc;
        int length = (iArr.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = iArr[i13];
            if (i10 == i14) {
                return i13;
            }
            if (i10 < i14) {
                length = i12 - 1;
            } else {
                i11 = i12 + 1;
            }
        }
        return -1;
    }

    private static int zzr(int i10) {
        return (i10 >>> 20) & 255;
    }

    private final int zzs(int i10) {
        return this.zzc[i10 + 1];
    }

    private static long zzt(Object obj, long j10) {
        return ((Long) zzho.zzf(obj, j10)).longValue();
    }

    private final zzfl zzu(int i10) {
        int i11 = i10 / 3;
        return (zzfl) this.zzd[i11 + i11 + 1];
    }

    private final zzgv zzv(int i10) {
        Object[] objArr = this.zzd;
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzgv zzgvVar = (zzgv) objArr[i12];
        if (zzgvVar != null) {
            return zzgvVar;
        }
        zzgv zzb2 = zzgs.zza().zzb((Class) objArr[i12 + 1]);
        objArr[i12] = zzb2;
        return zzb2;
    }

    private final Object zzw(int i10) {
        int i11 = i10 / 3;
        return this.zzd[i11 + i11];
    }

    private final Object zzx(Object obj, int i10) {
        zzgv zzv = zzv(i10);
        int zzs = zzs(i10) & 1048575;
        if (!zzI(obj, i10)) {
            return zzv.zze();
        }
        Object object = zzb.getObject(obj, zzs);
        if (zzL(object)) {
            return object;
        }
        Object zze = zzv.zze();
        if (object != null) {
            zzv.zzg(zze, object);
        }
        return zze;
    }

    private final Object zzy(Object obj, int i10, int i11) {
        zzgv zzv = zzv(i11);
        if (!zzM(obj, i10, i11)) {
            return zzv.zze();
        }
        Object object = zzb.getObject(obj, zzs(i11) & 1048575);
        if (zzL(object)) {
            return object;
        }
        Object zze = zzv.zze();
        if (object != null) {
            zzv.zzg(zze, object);
        }
        return zze;
    }

    private static Field zzz(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e10) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields), e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v118, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v137 */
    /* JADX WARN: Type inference failed for: r0v185, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v263, types: [int] */
    /* JADX WARN: Type inference failed for: r1v78 */
    /* JADX WARN: Type inference failed for: r2v37 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v54, types: [int] */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28, types: [int] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31, types: [int] */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v47, types: [int] */
    /* JADX WARN: Type inference failed for: r3v50 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30, types: [int] */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35, types: [int] */
    /* JADX WARN: Type inference failed for: r4v37, types: [int] */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final int zza(Object obj) {
        int i10;
        boolean z10;
        int i11;
        int zzC;
        int zzC2;
        int zzC3;
        int zzD;
        int zzC4;
        int zzC5;
        int zzd;
        int zzC6;
        int zzg;
        int size;
        int zzC7;
        int zzC8;
        int zzC9;
        int i12;
        int zze;
        int zzC10;
        int zzC11;
        int i13;
        Unsafe unsafe = zzb;
        boolean z11 = false;
        int i14 = 1048575;
        boolean z12 = false;
        int i15 = 0;
        int i16 = 0;
        int i17 = 1048575;
        while (true) {
            int[] iArr = this.zzc;
            if (i15 < iArr.length) {
                int zzs = zzs(i15);
                int zzr = zzr(zzs);
                int i18 = iArr[i15];
                int i19 = iArr[i15 + 2];
                int i20 = i19 & i14;
                if (zzr <= 17) {
                    if (i20 != i17) {
                        z12 = i20 == i14 ? z11 : unsafe.getInt(obj, i20);
                        i17 = i20;
                    }
                    i10 = i17;
                    z10 = z12;
                    i11 = 1 << (i19 >>> 20);
                } else {
                    i10 = i17;
                    z10 = z12;
                    i11 = z11;
                }
                int i21 = zzs & i14;
                if (zzr >= zzfa.zzJ.zza()) {
                    zzfa.zzW.zza();
                }
                long j10 = i21;
                switch (zzr) {
                    case 0:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzC = zzep.zzC(i18 << 3);
                            i12 = zzC + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzC2 = zzep.zzC(i18 << 3);
                            i12 = zzC2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            long j11 = unsafe.getLong(obj, j10);
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzD(j11);
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            long j12 = unsafe.getLong(obj, j10);
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzD(j12);
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzD(unsafe.getInt(obj, j10));
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzC = zzep.zzC(i18 << 3);
                            i12 = zzC + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzC2 = zzep.zzC(i18 << 3);
                            i12 = zzC2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzC4 = zzep.zzC(i18 << 3);
                            i12 = zzC4 + 1;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            break;
                        } else {
                            int i22 = i18 << 3;
                            Object object = unsafe.getObject(obj, j10);
                            if (object instanceof zzei) {
                                zzC5 = zzep.zzC(i22);
                                zzd = ((zzei) object).zzd();
                                zzC6 = zzep.zzC(zzd);
                                i12 = zzC5 + zzC6 + zzd;
                                i16 += i12;
                                break;
                            } else {
                                zzC3 = zzep.zzC(i22);
                                zzD = zzep.zzB((String) object);
                                i12 = zzC3 + zzD;
                                i16 += i12;
                            }
                        }
                    case 9:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            i12 = zzgx.zzh(i18, unsafe.getObject(obj, j10), zzv(i15));
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzC5 = zzep.zzC(i18 << 3);
                            zzd = ((zzei) unsafe.getObject(obj, j10)).zzd();
                            zzC6 = zzep.zzC(zzd);
                            i12 = zzC5 + zzC6 + zzd;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            int i23 = unsafe.getInt(obj, j10);
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzC(i23);
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzD(unsafe.getInt(obj, j10));
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzC2 = zzep.zzC(i18 << 3);
                            i12 = zzC2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzC = zzep.zzC(i18 << 3);
                            i12 = zzC + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            int i24 = unsafe.getInt(obj, j10);
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzC((i24 >> 31) ^ (i24 + i24));
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            long j13 = unsafe.getLong(obj, j10);
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzD((j13 >> 63) ^ (j13 + j13));
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzJ(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            i12 = zzep.zzy(i18, (zzgl) unsafe.getObject(obj, j10), zzv(i15));
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i12 = zzgx.zzd(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 19:
                        i12 = zzgx.zzb(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 20:
                        List list = (List) unsafe.getObject(obj, j10);
                        int i25 = zzgx.zza;
                        if (list.size() != 0) {
                            zzg = zzgx.zzg(list) + (list.size() * zzep.zzC(i18 << 3));
                            i16 += zzg;
                            break;
                        }
                        zzg = z11;
                        i16 += zzg;
                    case 21:
                        List list2 = (List) unsafe.getObject(obj, j10);
                        int i26 = zzgx.zza;
                        size = list2.size();
                        if (size != 0) {
                            zzC3 = zzgx.zzl(list2);
                            zzC7 = zzep.zzC(i18 << 3);
                            zzD = size * zzC7;
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 22:
                        List list3 = (List) unsafe.getObject(obj, j10);
                        int i27 = zzgx.zza;
                        size = list3.size();
                        if (size != 0) {
                            zzC3 = zzgx.zzf(list3);
                            zzC7 = zzep.zzC(i18 << 3);
                            zzD = size * zzC7;
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 23:
                        i12 = zzgx.zzd(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 24:
                        i12 = zzgx.zzb(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 25:
                        int i28 = zzgx.zza;
                        int size2 = ((List) unsafe.getObject(obj, j10)).size();
                        if (size2 != 0) {
                            i12 = size2 * (zzep.zzC(i18 << 3) + 1);
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 26:
                        ?? r02 = (List) unsafe.getObject(obj, j10);
                        int i29 = zzgx.zza;
                        int size3 = r02.size();
                        if (size3 != 0) {
                            zzg = zzep.zzC(i18 << 3) * size3;
                            if (r02 instanceof zzfx) {
                                zzfx zzfxVar = (zzfx) r02;
                                for (int i30 = z11; i30 < size3; i30++) {
                                    Object zza2 = zzfxVar.zza();
                                    if (zza2 instanceof zzei) {
                                        int zzd2 = ((zzei) zza2).zzd();
                                        zzg += zzep.zzC(zzd2) + zzd2;
                                    } else {
                                        zzg += zzep.zzB((String) zza2);
                                    }
                                }
                            } else {
                                for (int i31 = z11; i31 < size3; i31++) {
                                    Object obj2 = r02.get(i31);
                                    if (obj2 instanceof zzei) {
                                        int zzd3 = ((zzei) obj2).zzd();
                                        zzg += zzep.zzC(zzd3) + zzd3;
                                    } else {
                                        zzg += zzep.zzB((String) obj2);
                                    }
                                }
                            }
                            i16 += zzg;
                            break;
                        }
                        zzg = z11;
                        i16 += zzg;
                    case 27:
                        ?? r03 = (List) unsafe.getObject(obj, j10);
                        zzgv zzv = zzv(i15);
                        int i32 = zzgx.zza;
                        int size4 = r03.size();
                        if (size4 == 0) {
                            zzC8 = z11;
                        } else {
                            zzC8 = zzep.zzC(i18 << 3) * size4;
                            for (int i33 = z11; i33 < size4; i33++) {
                                Object obj3 = r03.get(i33);
                                if (obj3 instanceof zzfw) {
                                    int zza3 = ((zzfw) obj3).zza();
                                    zzC8 += zzep.zzC(zza3) + zza3;
                                } else {
                                    zzC8 += zzep.zzA((zzgl) obj3, zzv);
                                }
                            }
                        }
                        i16 += zzC8;
                        break;
                    case 28:
                        ?? r04 = (List) unsafe.getObject(obj, j10);
                        int i34 = zzgx.zza;
                        int size5 = r04.size();
                        if (size5 == 0) {
                            zzC9 = z11;
                        } else {
                            zzC9 = size5 * zzep.zzC(i18 << 3);
                            for (int i35 = z11; i35 < r04.size(); i35++) {
                                int zzd4 = ((zzei) r04.get(i35)).zzd();
                                zzC9 += zzep.zzC(zzd4) + zzd4;
                            }
                        }
                        i16 += zzC9;
                        break;
                    case 29:
                        List list4 = (List) unsafe.getObject(obj, j10);
                        int i36 = zzgx.zza;
                        size = list4.size();
                        if (size != 0) {
                            zzC3 = zzgx.zzk(list4);
                            zzC7 = zzep.zzC(i18 << 3);
                            zzD = size * zzC7;
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 30:
                        List list5 = (List) unsafe.getObject(obj, j10);
                        int i37 = zzgx.zza;
                        size = list5.size();
                        if (size != 0) {
                            zzC3 = zzgx.zza(list5);
                            zzC7 = zzep.zzC(i18 << 3);
                            zzD = size * zzC7;
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 31:
                        i12 = zzgx.zzb(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 32:
                        i12 = zzgx.zzd(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 33:
                        List list6 = (List) unsafe.getObject(obj, j10);
                        int i38 = zzgx.zza;
                        size = list6.size();
                        if (size != 0) {
                            zzC3 = zzgx.zzi(list6);
                            zzC7 = zzep.zzC(i18 << 3);
                            zzD = size * zzC7;
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 34:
                        List list7 = (List) unsafe.getObject(obj, j10);
                        int i39 = zzgx.zza;
                        size = list7.size();
                        if (size != 0) {
                            zzC3 = zzgx.zzj(list7);
                            zzC7 = zzep.zzC(i18 << 3);
                            zzD = size * zzC7;
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 35:
                        zze = zzgx.zze((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        zze = zzgx.zzc((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        zze = zzgx.zzg((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        zze = zzgx.zzl((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        zze = zzgx.zzf((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        zze = zzgx.zze((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        zze = zzgx.zzc((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        int i40 = zzgx.zza;
                        zze = ((List) unsafe.getObject(obj, j10)).size();
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        zze = zzgx.zzk((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        zze = zzgx.zza((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        zze = zzgx.zzc((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        zze = zzgx.zze((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        zze = zzgx.zzi((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        zze = zzgx.zzj((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzC10 = zzep.zzC(i18 << 3);
                            zzC11 = zzep.zzC(zze);
                            zzC9 = zzC10 + zzC11 + zze;
                            i16 += zzC9;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        ?? r05 = (List) unsafe.getObject(obj, j10);
                        zzgv zzv2 = zzv(i15);
                        int i41 = zzgx.zza;
                        int size6 = r05.size();
                        if (size6 == 0) {
                            i13 = z11;
                        } else {
                            boolean z13 = z11;
                            i13 = z13;
                            for (int i42 = z13; i42 < size6; i42++) {
                                i13 += zzep.zzy(i18, (zzgl) r05.get(i42), zzv2);
                            }
                        }
                        i16 += i13;
                        break;
                    case 50:
                        zzgf zzgfVar = (zzgf) unsafe.getObject(obj, j10);
                        zzge zzgeVar = (zzge) zzw(i15);
                        if (zzgfVar.isEmpty()) {
                            continue;
                        } else {
                            Iterator it = zzgfVar.entrySet().iterator();
                            if (it.hasNext()) {
                                Map.Entry entry = (Map.Entry) it.next();
                                entry.getKey();
                                entry.getValue();
                                throw null;
                            }
                            break;
                        }
                    case 51:
                        if (zzM(obj, i18, i15)) {
                            zzC = zzep.zzC(i18 << 3);
                            i12 = zzC + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzM(obj, i18, i15)) {
                            zzC2 = zzep.zzC(i18 << 3);
                            i12 = zzC2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzM(obj, i18, i15)) {
                            long zzt = zzt(obj, j10);
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzD(zzt);
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzM(obj, i18, i15)) {
                            long zzt2 = zzt(obj, j10);
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzD(zzt2);
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzM(obj, i18, i15)) {
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzD(zzo(obj, j10));
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzM(obj, i18, i15)) {
                            zzC = zzep.zzC(i18 << 3);
                            i12 = zzC + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzM(obj, i18, i15)) {
                            zzC2 = zzep.zzC(i18 << 3);
                            i12 = zzC2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzM(obj, i18, i15)) {
                            zzC4 = zzep.zzC(i18 << 3);
                            i12 = zzC4 + 1;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (!zzM(obj, i18, i15)) {
                            break;
                        } else {
                            int i43 = i18 << 3;
                            Object object2 = unsafe.getObject(obj, j10);
                            if (object2 instanceof zzei) {
                                zzC5 = zzep.zzC(i43);
                                zzd = ((zzei) object2).zzd();
                                zzC6 = zzep.zzC(zzd);
                                i12 = zzC5 + zzC6 + zzd;
                                i16 += i12;
                                break;
                            } else {
                                zzC3 = zzep.zzC(i43);
                                zzD = zzep.zzB((String) object2);
                                i12 = zzC3 + zzD;
                                i16 += i12;
                            }
                        }
                    case 60:
                        if (zzM(obj, i18, i15)) {
                            i12 = zzgx.zzh(i18, unsafe.getObject(obj, j10), zzv(i15));
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzM(obj, i18, i15)) {
                            zzC5 = zzep.zzC(i18 << 3);
                            zzd = ((zzei) unsafe.getObject(obj, j10)).zzd();
                            zzC6 = zzep.zzC(zzd);
                            i12 = zzC5 + zzC6 + zzd;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzM(obj, i18, i15)) {
                            int zzo = zzo(obj, j10);
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzC(zzo);
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzM(obj, i18, i15)) {
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzD(zzo(obj, j10));
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzM(obj, i18, i15)) {
                            zzC2 = zzep.zzC(i18 << 3);
                            i12 = zzC2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzM(obj, i18, i15)) {
                            zzC = zzep.zzC(i18 << 3);
                            i12 = zzC + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzM(obj, i18, i15)) {
                            int zzo2 = zzo(obj, j10);
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzC((zzo2 >> 31) ^ (zzo2 + zzo2));
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzM(obj, i18, i15)) {
                            long zzt3 = zzt(obj, j10);
                            zzC3 = zzep.zzC(i18 << 3);
                            zzD = zzep.zzD((zzt3 >> 63) ^ (zzt3 + zzt3));
                            i12 = zzC3 + zzD;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzM(obj, i18, i15)) {
                            i12 = zzep.zzy(i18, (zzgl) unsafe.getObject(obj, j10), zzv(i15));
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                }
                i15 += 3;
                i17 = i10;
                z12 = z10;
                z11 = false;
                i14 = 1048575;
            } else {
                int zza4 = i16 + ((zzfi) obj).zzc.zza();
                if (this.zzh) {
                    zzhd zzhdVar = ((zzff) obj).zzb.zza;
                    int zzc = zzhdVar.zzc();
                    int i44 = 0;
                    for (int i45 = 0; i45 < zzc; i45++) {
                        Map.Entry zzg2 = zzhdVar.zzg(i45);
                        i44 += zzez.zzc((zzey) ((zzgz) zzg2).zza(), zzg2.getValue());
                    }
                    for (Map.Entry entry2 : zzhdVar.zzd()) {
                        i44 += zzez.zzc((zzey) entry2.getKey(), entry2.getValue());
                    }
                    return zza4 + i44;
                }
                return zza4;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final int zzb(Object obj) {
        int i10;
        long doubleToLongBits;
        int floatToIntBits;
        int i11;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i12 < iArr.length) {
                int zzs = zzs(i12);
                int i14 = 1048575 & zzs;
                int zzr = zzr(zzs);
                int i15 = iArr[i12];
                long j10 = i14;
                int i16 = 37;
                switch (zzr) {
                    case 0:
                        i10 = i13 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzho.zza(obj, j10));
                        byte[] bArr = zzfo.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 1:
                        i10 = i13 * 53;
                        floatToIntBits = Float.floatToIntBits(zzho.zzb(obj, j10));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 2:
                        i10 = i13 * 53;
                        doubleToLongBits = zzho.zzd(obj, j10);
                        byte[] bArr2 = zzfo.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 3:
                        i10 = i13 * 53;
                        doubleToLongBits = zzho.zzd(obj, j10);
                        byte[] bArr3 = zzfo.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 4:
                        i10 = i13 * 53;
                        floatToIntBits = zzho.zzc(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 5:
                        i10 = i13 * 53;
                        doubleToLongBits = zzho.zzd(obj, j10);
                        byte[] bArr4 = zzfo.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 6:
                        i10 = i13 * 53;
                        floatToIntBits = zzho.zzc(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 7:
                        i10 = i13 * 53;
                        floatToIntBits = zzfo.zza(zzho.zzw(obj, j10));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 8:
                        i10 = i13 * 53;
                        floatToIntBits = ((String) zzho.zzf(obj, j10)).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 9:
                        i11 = i13 * 53;
                        Object zzf = zzho.zzf(obj, j10);
                        if (zzf != null) {
                            i16 = zzf.hashCode();
                        }
                        i13 = i11 + i16;
                        break;
                    case 10:
                        i10 = i13 * 53;
                        floatToIntBits = zzho.zzf(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 11:
                        i10 = i13 * 53;
                        floatToIntBits = zzho.zzc(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 12:
                        i10 = i13 * 53;
                        floatToIntBits = zzho.zzc(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 13:
                        i10 = i13 * 53;
                        floatToIntBits = zzho.zzc(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 14:
                        i10 = i13 * 53;
                        doubleToLongBits = zzho.zzd(obj, j10);
                        byte[] bArr5 = zzfo.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 15:
                        i10 = i13 * 53;
                        floatToIntBits = zzho.zzc(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 16:
                        i10 = i13 * 53;
                        doubleToLongBits = zzho.zzd(obj, j10);
                        byte[] bArr6 = zzfo.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 17:
                        i11 = i13 * 53;
                        Object zzf2 = zzho.zzf(obj, j10);
                        if (zzf2 != null) {
                            i16 = zzf2.hashCode();
                        }
                        i13 = i11 + i16;
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        i10 = i13 * 53;
                        floatToIntBits = zzho.zzf(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 50:
                        i10 = i13 * 53;
                        floatToIntBits = zzho.zzf(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 51:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = Double.doubleToLongBits(zzm(obj, j10));
                            byte[] bArr7 = zzfo.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 52:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = Float.floatToIntBits(zzn(obj, j10));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 53:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzt(obj, j10);
                            byte[] bArr8 = zzfo.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 54:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzt(obj, j10);
                            byte[] bArr9 = zzfo.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 55:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzo(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 56:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzt(obj, j10);
                            byte[] bArr10 = zzfo.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 57:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzo(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 58:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzfo.zza(zzN(obj, j10));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 59:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = ((String) zzho.zzf(obj, j10)).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 60:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzho.zzf(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 61:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzho.zzf(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 62:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzo(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 63:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzo(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 64:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzo(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 65:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzt(obj, j10);
                            byte[] bArr11 = zzfo.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 66:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzo(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 67:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzt(obj, j10);
                            byte[] bArr12 = zzfo.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 68:
                        if (!zzM(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzho.zzf(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                }
                i12 += 3;
            } else {
                int hashCode = (i13 * 53) + ((zzfi) obj).zzc.hashCode();
                if (this.zzh) {
                    return (hashCode * 53) + ((zzff) obj).zzb.zza.hashCode();
                }
                return hashCode;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x0e46, code lost:
        if (r11 == r2) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x0e48, code lost:
        r13.putInt(r7, r11, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0e4c, code lost:
        r0 = r14.zzj;
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x0e50, code lost:
        if (r0 >= r14.zzk) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:553:0x0e52, code lost:
        r2 = r14.zzi;
        r3 = r14.zzc;
        r2 = r2[r0];
        r3 = r3[r2];
        r3 = com.google.android.gms.internal.play_billing.zzho.zzf(r7, r14.zzs(r2) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x0e67, code lost:
        if (r3 != null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:557:0x0e6f, code lost:
        if (r14.zzu(r2) != null) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:559:0x0e72, code lost:
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:560:0x0e74, code lost:
        r3 = (com.google.android.gms.internal.play_billing.zzgf) r3;
        r0 = (com.google.android.gms.internal.play_billing.zzge) r14.zzw(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:561:0x0e7c, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:563:0x0e7f, code lost:
        if (r9 != 0) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x0e81, code lost:
        if (r8 != r12) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:567:0x0e89, code lost:
        throw new com.google.android.gms.internal.play_billing.zzfq("Failed to parse the message.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0e8a, code lost:
        if (r8 > r12) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:569:0x0e8c, code lost:
        if (r1 != r9) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x0e8e, code lost:
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:572:0x0e94, code lost:
        throw new com.google.android.gms.internal.play_billing.zzfq("Failed to parse the message.");
     */
    /* JADX WARN: Removed duplicated region for block: B:223:0x06ba  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0778  */
    /* JADX WARN: Removed duplicated region for block: B:538:0x0de0  */
    /* JADX WARN: Removed duplicated region for block: B:618:0x0056 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:221:0x06b7 -> B:222:0x06b8). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:258:0x0775 -> B:259:0x0776). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(java.lang.Object r35, byte[] r36, int r37, int r38, int r39, com.google.android.gms.internal.play_billing.zzdw r40) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3878
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzgo.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.play_billing.zzdw):int");
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final Object zze() {
        return ((zzfi) this.zzg).zzo();
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final void zzf(Object obj) {
        if (zzL(obj)) {
            if (obj instanceof zzfi) {
                zzfi zzfiVar = (zzfi) obj;
                zzfiVar.zzx(Integer.MAX_VALUE);
                zzfiVar.zza = 0;
                zzfiVar.zzv();
            }
            int[] iArr = this.zzc;
            for (int i10 = 0; i10 < iArr.length; i10 += 3) {
                int zzs = zzs(i10);
                int i11 = 1048575 & zzs;
                int zzr = zzr(zzs);
                long j10 = i11;
                if (zzr != 9) {
                    if (zzr != 60 && zzr != 68) {
                        switch (zzr) {
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                            case 34:
                            case 35:
                            case 36:
                            case 37:
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                            case 45:
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                                ((zzfn) zzho.zzf(obj, j10)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j10);
                                if (object != null) {
                                    ((zzgf) object).zzc();
                                    unsafe.putObject(obj, j10, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzM(obj, iArr[i10], i10)) {
                        zzv(i10).zzf(zzb.getObject(obj, j10));
                    }
                }
                if (zzI(obj, i10)) {
                    zzv(i10).zzf(zzb.getObject(obj, j10));
                }
            }
            this.zzl.zzb(obj);
            if (this.zzh) {
                this.zzm.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final void zzg(Object obj, Object obj2) {
        zzA(obj);
        obj2.getClass();
        int i10 = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i10 < iArr.length) {
                int zzs = zzs(i10);
                int i11 = 1048575 & zzs;
                int zzr = zzr(zzs);
                int i12 = iArr[i10];
                long j10 = i11;
                switch (zzr) {
                    case 0:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzo(obj, j10, zzho.zza(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 1:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzp(obj, j10, zzho.zzb(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 2:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzr(obj, j10, zzho.zzd(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 3:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzr(obj, j10, zzho.zzd(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 4:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzq(obj, j10, zzho.zzc(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 5:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzr(obj, j10, zzho.zzd(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 6:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzq(obj, j10, zzho.zzc(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 7:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzm(obj, j10, zzho.zzw(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 8:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzs(obj, j10, zzho.zzf(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 9:
                        zzB(obj, obj2, i10);
                        break;
                    case 10:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzs(obj, j10, zzho.zzf(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 11:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzq(obj, j10, zzho.zzc(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 12:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzq(obj, j10, zzho.zzc(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 13:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzq(obj, j10, zzho.zzc(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 14:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzr(obj, j10, zzho.zzd(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 15:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzq(obj, j10, zzho.zzc(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 16:
                        if (!zzI(obj2, i10)) {
                            break;
                        } else {
                            zzho.zzr(obj, j10, zzho.zzd(obj2, j10));
                            zzD(obj, i10);
                            break;
                        }
                    case 17:
                        zzB(obj, obj2, i10);
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        zzfn zzfnVar = (zzfn) zzho.zzf(obj, j10);
                        zzfn zzfnVar2 = (zzfn) zzho.zzf(obj2, j10);
                        int size = zzfnVar.size();
                        int size2 = zzfnVar2.size();
                        if (size > 0 && size2 > 0) {
                            if (!zzfnVar.zzc()) {
                                zzfnVar = zzfnVar.zzd(size2 + size);
                            }
                            zzfnVar.addAll(zzfnVar2);
                        }
                        if (size > 0) {
                            zzfnVar2 = zzfnVar;
                        }
                        zzho.zzs(obj, j10, zzfnVar2);
                        break;
                    case 50:
                        int i13 = zzgx.zza;
                        zzho.zzs(obj, j10, zzgg.zza(zzho.zzf(obj, j10), zzho.zzf(obj2, j10)));
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        if (!zzM(obj2, i12, i10)) {
                            break;
                        } else {
                            zzho.zzs(obj, j10, zzho.zzf(obj2, j10));
                            zzE(obj, i12, i10);
                            break;
                        }
                    case 60:
                        zzC(obj, obj2, i10);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!zzM(obj2, i12, i10)) {
                            break;
                        } else {
                            zzho.zzs(obj, j10, zzho.zzf(obj2, j10));
                            zzE(obj, i12, i10);
                            break;
                        }
                    case 68:
                        zzC(obj, obj2, i10);
                        break;
                }
                i10 += 3;
            } else {
                zzgx.zzp(this.zzl, obj, obj2);
                if (this.zzh) {
                    zzgx.zzo(this.zzm, obj, obj2);
                    return;
                }
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final void zzh(Object obj, byte[] bArr, int i10, int i11, zzdw zzdwVar) throws IOException {
        zzc(obj, bArr, i10, i11, 0, zzdwVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x05df  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x05e8  */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r9v20 */
    @Override // com.google.android.gms.internal.play_billing.zzgv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(java.lang.Object r20, com.google.android.gms.internal.play_billing.zzhu r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzgo.zzi(java.lang.Object, com.google.android.gms.internal.play_billing.zzhu):void");
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final boolean zzj(Object obj, Object obj2) {
        boolean zzE;
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int zzs = zzs(i10);
            long j10 = zzs & 1048575;
            switch (zzr(zzs)) {
                case 0:
                    if (zzH(obj, obj2, i10) && Double.doubleToLongBits(zzho.zza(obj, j10)) == Double.doubleToLongBits(zzho.zza(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzH(obj, obj2, i10) && Float.floatToIntBits(zzho.zzb(obj, j10)) == Float.floatToIntBits(zzho.zzb(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzH(obj, obj2, i10) && zzho.zzd(obj, j10) == zzho.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzH(obj, obj2, i10) && zzho.zzd(obj, j10) == zzho.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzH(obj, obj2, i10) && zzho.zzc(obj, j10) == zzho.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzH(obj, obj2, i10) && zzho.zzd(obj, j10) == zzho.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzH(obj, obj2, i10) && zzho.zzc(obj, j10) == zzho.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzH(obj, obj2, i10) && zzho.zzw(obj, j10) == zzho.zzw(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzH(obj, obj2, i10) && zzgx.zzE(zzho.zzf(obj, j10), zzho.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzH(obj, obj2, i10) && zzgx.zzE(zzho.zzf(obj, j10), zzho.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzH(obj, obj2, i10) && zzgx.zzE(zzho.zzf(obj, j10), zzho.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzH(obj, obj2, i10) && zzho.zzc(obj, j10) == zzho.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzH(obj, obj2, i10) && zzho.zzc(obj, j10) == zzho.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzH(obj, obj2, i10) && zzho.zzc(obj, j10) == zzho.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzH(obj, obj2, i10) && zzho.zzd(obj, j10) == zzho.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzH(obj, obj2, i10) && zzho.zzc(obj, j10) == zzho.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzH(obj, obj2, i10) && zzho.zzd(obj, j10) == zzho.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzH(obj, obj2, i10) && zzgx.zzE(zzho.zzf(obj, j10), zzho.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    zzE = zzgx.zzE(zzho.zzf(obj, j10), zzho.zzf(obj2, j10));
                    break;
                case 50:
                    zzE = zzgx.zzE(zzho.zzf(obj, j10), zzho.zzf(obj2, j10));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long zzp = zzp(i10) & 1048575;
                    if (zzho.zzc(obj, zzp) == zzho.zzc(obj2, zzp) && zzgx.zzE(zzho.zzf(obj, j10), zzho.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzE) {
                return false;
            }
        }
        if (!((zzfi) obj).zzc.equals(((zzfi) obj2).zzc)) {
            return false;
        }
        if (this.zzh) {
            return ((zzff) obj).zzb.equals(((zzff) obj2).zzb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgv
    public final boolean zzk(Object obj) {
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        while (i13 < this.zzj) {
            int[] iArr = this.zzi;
            int[] iArr2 = this.zzc;
            int i15 = iArr[i13];
            int i16 = iArr2[i15];
            int zzs = zzs(i15);
            int i17 = iArr2[i15 + 2];
            int i18 = i17 & 1048575;
            int i19 = 1 << (i17 >>> 20);
            if (i18 != i14) {
                if (i18 != 1048575) {
                    i12 = zzb.getInt(obj, i18);
                }
                i11 = i12;
                i10 = i18;
            } else {
                i10 = i14;
                i11 = i12;
            }
            if ((268435456 & zzs) != 0 && !zzJ(obj, i15, i10, i11, i19)) {
                return false;
            }
            int zzr = zzr(zzs);
            if (zzr != 9 && zzr != 17) {
                if (zzr != 27) {
                    if (zzr != 60 && zzr != 68) {
                        if (zzr != 49) {
                            if (zzr == 50 && !((zzgf) zzho.zzf(obj, zzs & 1048575)).isEmpty()) {
                                zzge zzgeVar = (zzge) zzw(i15);
                                throw null;
                            }
                        }
                    } else if (zzM(obj, i16, i15) && !zzK(obj, zzs, zzv(i15))) {
                        return false;
                    }
                }
                List list = (List) zzho.zzf(obj, zzs & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzgv zzv = zzv(i15);
                    for (int i20 = 0; i20 < list.size(); i20++) {
                        if (!zzv.zzk(list.get(i20))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zzJ(obj, i15, i10, i11, i19) && !zzK(obj, zzs, zzv(i15))) {
                return false;
            }
            i13++;
            i14 = i10;
            i12 = i11;
        }
        if (this.zzh && !((zzff) obj).zzb.zzi()) {
            return false;
        }
        return true;
    }
}
