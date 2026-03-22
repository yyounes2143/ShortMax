package com.google.android.recaptcha.internal;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzol<T> implements zzow<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzps.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzoi zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzpl zzm;
    private final zzmp zzn;

    private zzol(int[] iArr, Object[] objArr, int i10, int i11, zzoi zzoiVar, boolean z10, int[] iArr2, int i12, int i13, zzoo zzooVar, zznv zznvVar, zzpl zzplVar, zzmp zzmpVar, zzod zzodVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i10;
        this.zzf = i11;
        this.zzi = zzoiVar instanceof zznd;
        boolean z11 = false;
        if (zzmpVar != null && (zzoiVar instanceof zzna)) {
            z11 = true;
        }
        this.zzh = z11;
        this.zzj = iArr2;
        this.zzk = i12;
        this.zzl = i13;
        this.zzm = zzplVar;
        this.zzn = zzmpVar;
        this.zzg = zzoiVar;
    }

    private final Object zzA(Object obj, int i10) {
        zzow zzx = zzx(i10);
        int zzu = zzu(i10) & 1048575;
        if (!zzN(obj, i10)) {
            return zzx.zze();
        }
        Object object = zzb.getObject(obj, zzu);
        if (zzQ(object)) {
            return object;
        }
        Object zze = zzx.zze();
        if (object != null) {
            zzx.zzg(zze, object);
        }
        return zze;
    }

    private final Object zzB(Object obj, int i10, int i11) {
        zzow zzx = zzx(i11);
        if (!zzR(obj, i10, i11)) {
            return zzx.zze();
        }
        Object object = zzb.getObject(obj, zzu(i11) & 1048575);
        if (zzQ(object)) {
            return object;
        }
        Object zze = zzx.zze();
        if (object != null) {
            zzx.zzg(zze, object);
        }
        return zze;
    }

    private static Field zzC(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static void zzD(Object obj) {
        if (zzQ(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    private final void zzE(Object obj, Object obj2, int i10) {
        if (!zzN(obj2, i10)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzu = zzu(i10) & 1048575;
        Object object = unsafe.getObject(obj2, zzu);
        if (object != null) {
            zzow zzx = zzx(i10);
            if (!zzN(obj, i10)) {
                if (!zzQ(object)) {
                    unsafe.putObject(obj, zzu, object);
                } else {
                    Object zze = zzx.zze();
                    zzx.zzg(zze, object);
                    unsafe.putObject(obj, zzu, zze);
                }
                zzH(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzu);
            if (!zzQ(object2)) {
                Object zze2 = zzx.zze();
                zzx.zzg(zze2, object2);
                unsafe.putObject(obj, zzu, zze2);
                object2 = zze2;
            }
            zzx.zzg(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + obj2.toString());
    }

    private final void zzF(Object obj, Object obj2, int i10) {
        int i11 = this.zzc[i10];
        if (!zzR(obj2, i11, i10)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzu = zzu(i10) & 1048575;
        Object object = unsafe.getObject(obj2, zzu);
        if (object != null) {
            zzow zzx = zzx(i10);
            if (!zzR(obj, i11, i10)) {
                if (!zzQ(object)) {
                    unsafe.putObject(obj, zzu, object);
                } else {
                    Object zze = zzx.zze();
                    zzx.zzg(zze, object);
                    unsafe.putObject(obj, zzu, zze);
                }
                zzI(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzu);
            if (!zzQ(object2)) {
                Object zze2 = zzx.zze();
                zzx.zzg(zze2, object2);
                unsafe.putObject(obj, zzu, zze2);
                object2 = zze2;
            }
            zzx.zzg(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + obj2.toString());
    }

    private final void zzG(Object obj, int i10, zzov zzovVar) throws IOException {
        long j10 = i10 & 1048575;
        if (zzM(i10)) {
            zzps.zzs(obj, j10, zzovVar.zzs());
        } else if (this.zzi) {
            zzps.zzs(obj, j10, zzovVar.zzr());
        } else {
            zzps.zzs(obj, j10, zzovVar.zzp());
        }
    }

    private final void zzH(Object obj, int i10) {
        int zzr = zzr(i10);
        long j10 = 1048575 & zzr;
        if (j10 == 1048575) {
            return;
        }
        zzps.zzq(obj, j10, (1 << (zzr >>> 20)) | zzps.zzc(obj, j10));
    }

    private final void zzI(Object obj, int i10, int i11) {
        zzps.zzq(obj, zzr(i11) & 1048575, i10);
    }

    private final void zzJ(Object obj, int i10, Object obj2) {
        zzb.putObject(obj, zzu(i10) & 1048575, obj2);
        zzH(obj, i10);
    }

    private final void zzK(Object obj, int i10, int i11, Object obj2) {
        zzb.putObject(obj, zzu(i11) & 1048575, obj2);
        zzI(obj, i10, i11);
    }

    private final boolean zzL(Object obj, Object obj2, int i10) {
        if (zzN(obj, i10) == zzN(obj2, i10)) {
            return true;
        }
        return false;
    }

    private static boolean zzM(int i10) {
        if ((i10 & 536870912) != 0) {
            return true;
        }
        return false;
    }

    private final boolean zzN(Object obj, int i10) {
        int zzr = zzr(i10);
        long j10 = zzr & 1048575;
        if (j10 == 1048575) {
            int zzu = zzu(i10);
            long j11 = zzu & 1048575;
            switch (zzt(zzu)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzps.zza(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzps.zzb(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzps.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzps.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzps.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzps.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzps.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzps.zzw(obj, j11);
                case 8:
                    Object zzf = zzps.zzf(obj, j11);
                    if (zzf instanceof String) {
                        if (((String) zzf).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (zzf instanceof zzle) {
                        if (zzle.zzb.equals(zzf)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (zzps.zzf(obj, j11) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzle.zzb.equals(zzps.zzf(obj, j11))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzps.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzps.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzps.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzps.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzps.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzps.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzps.zzf(obj, j11) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzps.zzc(obj, j10) & (1 << (zzr >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final boolean zzO(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return zzN(obj, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    private static boolean zzP(Object obj, int i10, zzow zzowVar) {
        return zzowVar.zzl(zzps.zzf(obj, i10 & 1048575));
    }

    private static boolean zzQ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zznd) {
            return ((zznd) obj).zzL();
        }
        return true;
    }

    private final boolean zzR(Object obj, int i10, int i11) {
        if (zzps.zzc(obj, zzr(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private static boolean zzS(Object obj, long j10) {
        return ((Boolean) zzps.zzf(obj, j10)).booleanValue();
    }

    private static final void zzT(int i10, Object obj, zzpy zzpyVar) throws IOException {
        if (obj instanceof String) {
            zzpyVar.zzG(i10, (String) obj);
        } else {
            zzpyVar.zzd(i10, (zzle) obj);
        }
    }

    static zzpm zzd(Object obj) {
        zznd zzndVar = (zznd) obj;
        zzpm zzpmVar = zzndVar.zzc;
        if (zzpmVar == zzpm.zzc()) {
            zzpm zzf = zzpm.zzf();
            zzndVar.zzc = zzf;
            return zzf;
        }
        return zzpmVar;
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
    public static com.google.android.recaptcha.internal.zzol zzm(java.lang.Class r34, com.google.android.recaptcha.internal.zzof r35, com.google.android.recaptcha.internal.zzoo r36, com.google.android.recaptcha.internal.zznv r37, com.google.android.recaptcha.internal.zzpl r38, com.google.android.recaptcha.internal.zzmp r39, com.google.android.recaptcha.internal.zzod r40) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzol.zzm(java.lang.Class, com.google.android.recaptcha.internal.zzof, com.google.android.recaptcha.internal.zzoo, com.google.android.recaptcha.internal.zznv, com.google.android.recaptcha.internal.zzpl, com.google.android.recaptcha.internal.zzmp, com.google.android.recaptcha.internal.zzod):com.google.android.recaptcha.internal.zzol");
    }

    private static double zzn(Object obj, long j10) {
        return ((Double) zzps.zzf(obj, j10)).doubleValue();
    }

    private static float zzo(Object obj, long j10) {
        return ((Float) zzps.zzf(obj, j10)).floatValue();
    }

    private static int zzp(Object obj, long j10) {
        return ((Integer) zzps.zzf(obj, j10)).intValue();
    }

    private final int zzq(int i10) {
        if (i10 >= this.zze && i10 <= this.zzf) {
            return zzs(i10, 0);
        }
        return -1;
    }

    private final int zzr(int i10) {
        return this.zzc[i10 + 2];
    }

    private final int zzs(int i10, int i11) {
        int length = (this.zzc.length / 3) - 1;
        while (i11 <= length) {
            int i12 = (length + i11) >>> 1;
            int i13 = i12 * 3;
            int i14 = this.zzc[i13];
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

    private static int zzt(int i10) {
        return (i10 >>> 20) & 255;
    }

    private final int zzu(int i10) {
        return this.zzc[i10 + 1];
    }

    private static long zzv(Object obj, long j10) {
        return ((Long) zzps.zzf(obj, j10)).longValue();
    }

    private final zznh zzw(int i10) {
        int i11 = i10 / 3;
        return (zznh) this.zzd[i11 + i11 + 1];
    }

    private final zzow zzx(int i10) {
        Object[] objArr = this.zzd;
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzow zzowVar = (zzow) objArr[i12];
        if (zzowVar != null) {
            return zzowVar;
        }
        zzow zzb2 = zzos.zza().zzb((Class) objArr[i12 + 1]);
        this.zzd[i12] = zzb2;
        return zzb2;
    }

    private final Object zzy(Object obj, int i10, Object obj2, zzpl zzplVar, Object obj3) {
        int i11 = this.zzc[i10];
        Object zzf = zzps.zzf(obj, zzu(i10) & 1048575);
        if (zzf == null || zzw(i10) == null) {
            return obj2;
        }
        zzoc zzocVar = (zzoc) zzf;
        zzob zzobVar = (zzob) zzz(i10);
        throw null;
    }

    private final Object zzz(int i10) {
        int i11 = i10 / 3;
        return this.zzd[i11 + i11];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v118, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v137 */
    /* JADX WARN: Type inference failed for: r0v185, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v263, types: [int] */
    /* JADX WARN: Type inference failed for: r1v80 */
    /* JADX WARN: Type inference failed for: r2v38 */
    /* JADX WARN: Type inference failed for: r2v54 */
    /* JADX WARN: Type inference failed for: r2v55, types: [int] */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27, types: [int] */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v30, types: [int] */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v46, types: [int] */
    /* JADX WARN: Type inference failed for: r3v49 */
    /* JADX WARN: Type inference failed for: r4v30 */
    /* JADX WARN: Type inference failed for: r4v31, types: [int] */
    /* JADX WARN: Type inference failed for: r4v35 */
    /* JADX WARN: Type inference failed for: r4v36, types: [int] */
    /* JADX WARN: Type inference failed for: r4v38, types: [int] */
    /* JADX WARN: Type inference failed for: r4v39 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override // com.google.android.recaptcha.internal.zzow
    public final int zza(Object obj) {
        int i10;
        boolean z10;
        int i11;
        int zzA;
        int zzA2;
        int zzA3;
        int zzB;
        int zzA4;
        int zzA5;
        int zzd;
        int zzA6;
        int zzg;
        int size;
        int zzA7;
        int zzA8;
        int zzA9;
        int i12;
        int zze;
        int zzA10;
        int zzA11;
        int i13;
        Unsafe unsafe = zzb;
        boolean z11 = false;
        int i14 = 1048575;
        boolean z12 = false;
        int i15 = 0;
        int i16 = 0;
        int i17 = 1048575;
        while (i15 < this.zzc.length) {
            int zzu = zzu(i15);
            int zzt = zzt(zzu);
            int[] iArr = this.zzc;
            int i18 = iArr[i15];
            int i19 = iArr[i15 + 2];
            int i20 = i19 & i14;
            if (zzt <= 17) {
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
            int i21 = zzu & i14;
            if (zzt >= zzmu.zzJ.zza()) {
                zzmu.zzW.zza();
            }
            long j10 = i21;
            switch (zzt) {
                case 0:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        zzA = zzln.zzA(i18 << 3);
                        i12 = zzA + 8;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        zzA2 = zzln.zzA(i18 << 3);
                        i12 = zzA2 + 4;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        long j11 = unsafe.getLong(obj, j10);
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzB(j11);
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        long j12 = unsafe.getLong(obj, j10);
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzB(j12);
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzB(unsafe.getInt(obj, j10));
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        zzA = zzln.zzA(i18 << 3);
                        i12 = zzA + 8;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        zzA2 = zzln.zzA(i18 << 3);
                        i12 = zzA2 + 4;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        zzA4 = zzln.zzA(i18 << 3);
                        i12 = zzA4 + 1;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (!zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        break;
                    } else {
                        int i22 = i18 << 3;
                        Object object = unsafe.getObject(obj, j10);
                        if (object instanceof zzle) {
                            zzA5 = zzln.zzA(i22);
                            zzd = ((zzle) object).zzd();
                            zzA6 = zzln.zzA(zzd);
                            i12 = zzA5 + zzA6 + zzd;
                            i16 += i12;
                            break;
                        } else {
                            zzA3 = zzln.zzA(i22);
                            zzB = zzln.zzz((String) object);
                            i12 = zzA3 + zzB;
                            i16 += i12;
                        }
                    }
                case 9:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        i12 = zzoy.zzh(i18, unsafe.getObject(obj, j10), zzx(i15));
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        zzA5 = zzln.zzA(i18 << 3);
                        zzd = ((zzle) unsafe.getObject(obj, j10)).zzd();
                        zzA6 = zzln.zzA(zzd);
                        i12 = zzA5 + zzA6 + zzd;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        int i23 = unsafe.getInt(obj, j10);
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzA(i23);
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzB(unsafe.getInt(obj, j10));
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        zzA2 = zzln.zzA(i18 << 3);
                        i12 = zzA2 + 4;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        zzA = zzln.zzA(i18 << 3);
                        i12 = zzA + 8;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        int i24 = unsafe.getInt(obj, j10);
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzA((i24 >> 31) ^ (i24 + i24));
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        long j13 = unsafe.getLong(obj, j10);
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzB((j13 >> 63) ^ (j13 + j13));
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                        i12 = zzln.zzw(i18, (zzoi) unsafe.getObject(obj, j10), zzx(i15));
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    i12 = zzoy.zzd(i18, (List) unsafe.getObject(obj, j10), z11);
                    i16 += i12;
                    break;
                case 19:
                    i12 = zzoy.zzb(i18, (List) unsafe.getObject(obj, j10), z11);
                    i16 += i12;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(obj, j10);
                    int i25 = zzoy.zza;
                    if (list.size() != 0) {
                        zzg = zzoy.zzg(list) + (list.size() * zzln.zzA(i18 << 3));
                        i16 += zzg;
                        break;
                    }
                    zzg = z11;
                    i16 += zzg;
                case 21:
                    List list2 = (List) unsafe.getObject(obj, j10);
                    int i26 = zzoy.zza;
                    size = list2.size();
                    if (size != 0) {
                        zzA3 = zzoy.zzl(list2);
                        zzA7 = zzln.zzA(i18 << 3);
                        zzB = size * zzA7;
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    }
                    i12 = z11;
                    i16 += i12;
                case 22:
                    List list3 = (List) unsafe.getObject(obj, j10);
                    int i27 = zzoy.zza;
                    size = list3.size();
                    if (size != 0) {
                        zzA3 = zzoy.zzf(list3);
                        zzA7 = zzln.zzA(i18 << 3);
                        zzB = size * zzA7;
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    }
                    i12 = z11;
                    i16 += i12;
                case 23:
                    i12 = zzoy.zzd(i18, (List) unsafe.getObject(obj, j10), z11);
                    i16 += i12;
                    break;
                case 24:
                    i12 = zzoy.zzb(i18, (List) unsafe.getObject(obj, j10), z11);
                    i16 += i12;
                    break;
                case 25:
                    int i28 = zzoy.zza;
                    int size2 = ((List) unsafe.getObject(obj, j10)).size();
                    if (size2 != 0) {
                        i12 = size2 * (zzln.zzA(i18 << 3) + 1);
                        i16 += i12;
                        break;
                    }
                    i12 = z11;
                    i16 += i12;
                case 26:
                    ?? r02 = (List) unsafe.getObject(obj, j10);
                    int i29 = zzoy.zza;
                    int size3 = r02.size();
                    if (size3 != 0) {
                        zzg = zzln.zzA(i18 << 3) * size3;
                        if (r02 instanceof zznu) {
                            zznu zznuVar = (zznu) r02;
                            for (int i30 = z11; i30 < size3; i30++) {
                                Object zzc = zznuVar.zzc();
                                if (zzc instanceof zzle) {
                                    int zzd2 = ((zzle) zzc).zzd();
                                    zzg += zzln.zzA(zzd2) + zzd2;
                                } else {
                                    zzg += zzln.zzz((String) zzc);
                                }
                            }
                        } else {
                            for (int i31 = z11; i31 < size3; i31++) {
                                Object obj2 = r02.get(i31);
                                if (obj2 instanceof zzle) {
                                    int zzd3 = ((zzle) obj2).zzd();
                                    zzg += zzln.zzA(zzd3) + zzd3;
                                } else {
                                    zzg += zzln.zzz((String) obj2);
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
                    zzow zzx = zzx(i15);
                    int i32 = zzoy.zza;
                    int size4 = r03.size();
                    if (size4 == 0) {
                        zzA8 = z11;
                    } else {
                        zzA8 = zzln.zzA(i18 << 3) * size4;
                        for (int i33 = z11; i33 < size4; i33++) {
                            Object obj3 = r03.get(i33);
                            if (obj3 instanceof zznt) {
                                int zza2 = ((zznt) obj3).zza();
                                zzA8 += zzln.zzA(zza2) + zza2;
                            } else {
                                zzA8 += zzln.zzy((zzoi) obj3, zzx);
                            }
                        }
                    }
                    i16 += zzA8;
                    break;
                case 28:
                    ?? r04 = (List) unsafe.getObject(obj, j10);
                    int i34 = zzoy.zza;
                    int size5 = r04.size();
                    if (size5 == 0) {
                        zzA9 = z11;
                    } else {
                        zzA9 = size5 * zzln.zzA(i18 << 3);
                        for (int i35 = z11; i35 < r04.size(); i35++) {
                            int zzd4 = ((zzle) r04.get(i35)).zzd();
                            zzA9 += zzln.zzA(zzd4) + zzd4;
                        }
                    }
                    i16 += zzA9;
                    break;
                case 29:
                    List list4 = (List) unsafe.getObject(obj, j10);
                    int i36 = zzoy.zza;
                    size = list4.size();
                    if (size != 0) {
                        zzA3 = zzoy.zzk(list4);
                        zzA7 = zzln.zzA(i18 << 3);
                        zzB = size * zzA7;
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    }
                    i12 = z11;
                    i16 += i12;
                case 30:
                    List list5 = (List) unsafe.getObject(obj, j10);
                    int i37 = zzoy.zza;
                    size = list5.size();
                    if (size != 0) {
                        zzA3 = zzoy.zza(list5);
                        zzA7 = zzln.zzA(i18 << 3);
                        zzB = size * zzA7;
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    }
                    i12 = z11;
                    i16 += i12;
                case 31:
                    i12 = zzoy.zzb(i18, (List) unsafe.getObject(obj, j10), z11);
                    i16 += i12;
                    break;
                case 32:
                    i12 = zzoy.zzd(i18, (List) unsafe.getObject(obj, j10), z11);
                    i16 += i12;
                    break;
                case 33:
                    List list6 = (List) unsafe.getObject(obj, j10);
                    int i38 = zzoy.zza;
                    size = list6.size();
                    if (size != 0) {
                        zzA3 = zzoy.zzi(list6);
                        zzA7 = zzln.zzA(i18 << 3);
                        zzB = size * zzA7;
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    }
                    i12 = z11;
                    i16 += i12;
                case 34:
                    List list7 = (List) unsafe.getObject(obj, j10);
                    int i39 = zzoy.zza;
                    size = list7.size();
                    if (size != 0) {
                        zzA3 = zzoy.zzj(list7);
                        zzA7 = zzln.zzA(i18 << 3);
                        zzB = size * zzA7;
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    }
                    i12 = z11;
                    i16 += i12;
                case 35:
                    zze = zzoy.zze((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zze = zzoy.zzc((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zze = zzoy.zzg((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zze = zzoy.zzl((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zze = zzoy.zzf((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zze = zzoy.zze((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zze = zzoy.zzc((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int i40 = zzoy.zza;
                    zze = ((List) unsafe.getObject(obj, j10)).size();
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zze = zzoy.zzk((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zze = zzoy.zza((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zze = zzoy.zzc((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zze = zzoy.zze((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zze = zzoy.zzi((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zze = zzoy.zzj((List) unsafe.getObject(obj, j10));
                    if (zze > 0) {
                        zzA10 = zzln.zzA(i18 << 3);
                        zzA11 = zzln.zzA(zze);
                        zzA9 = zzA10 + zzA11 + zze;
                        i16 += zzA9;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    ?? r05 = (List) unsafe.getObject(obj, j10);
                    zzow zzx2 = zzx(i15);
                    int i41 = zzoy.zza;
                    int size6 = r05.size();
                    if (size6 == 0) {
                        i13 = z11;
                    } else {
                        boolean z13 = z11;
                        i13 = z13;
                        for (int i42 = z13; i42 < size6; i42++) {
                            i13 += zzln.zzw(i18, (zzoi) r05.get(i42), zzx2);
                        }
                    }
                    i16 += i13;
                    break;
                case 50:
                    zzoc zzocVar = (zzoc) unsafe.getObject(obj, j10);
                    zzob zzobVar = (zzob) zzz(i15);
                    if (zzocVar.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = zzocVar.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                        break;
                    }
                case 51:
                    if (zzR(obj, i18, i15)) {
                        zzA = zzln.zzA(i18 << 3);
                        i12 = zzA + 8;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzR(obj, i18, i15)) {
                        zzA2 = zzln.zzA(i18 << 3);
                        i12 = zzA2 + 4;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzR(obj, i18, i15)) {
                        long zzv = zzv(obj, j10);
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzB(zzv);
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzR(obj, i18, i15)) {
                        long zzv2 = zzv(obj, j10);
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzB(zzv2);
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzR(obj, i18, i15)) {
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzB(zzp(obj, j10));
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzR(obj, i18, i15)) {
                        zzA = zzln.zzA(i18 << 3);
                        i12 = zzA + 8;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzR(obj, i18, i15)) {
                        zzA2 = zzln.zzA(i18 << 3);
                        i12 = zzA2 + 4;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzR(obj, i18, i15)) {
                        zzA4 = zzln.zzA(i18 << 3);
                        i12 = zzA4 + 1;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (!zzR(obj, i18, i15)) {
                        break;
                    } else {
                        int i43 = i18 << 3;
                        Object object2 = unsafe.getObject(obj, j10);
                        if (object2 instanceof zzle) {
                            zzA5 = zzln.zzA(i43);
                            zzd = ((zzle) object2).zzd();
                            zzA6 = zzln.zzA(zzd);
                            i12 = zzA5 + zzA6 + zzd;
                            i16 += i12;
                            break;
                        } else {
                            zzA3 = zzln.zzA(i43);
                            zzB = zzln.zzz((String) object2);
                            i12 = zzA3 + zzB;
                            i16 += i12;
                        }
                    }
                case 60:
                    if (zzR(obj, i18, i15)) {
                        i12 = zzoy.zzh(i18, unsafe.getObject(obj, j10), zzx(i15));
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzR(obj, i18, i15)) {
                        zzA5 = zzln.zzA(i18 << 3);
                        zzd = ((zzle) unsafe.getObject(obj, j10)).zzd();
                        zzA6 = zzln.zzA(zzd);
                        i12 = zzA5 + zzA6 + zzd;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzR(obj, i18, i15)) {
                        int zzp = zzp(obj, j10);
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzA(zzp);
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzR(obj, i18, i15)) {
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzB(zzp(obj, j10));
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzR(obj, i18, i15)) {
                        zzA2 = zzln.zzA(i18 << 3);
                        i12 = zzA2 + 4;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzR(obj, i18, i15)) {
                        zzA = zzln.zzA(i18 << 3);
                        i12 = zzA + 8;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzR(obj, i18, i15)) {
                        int zzp2 = zzp(obj, j10);
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzA((zzp2 >> 31) ^ (zzp2 + zzp2));
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzR(obj, i18, i15)) {
                        long zzv3 = zzv(obj, j10);
                        zzA3 = zzln.zzA(i18 << 3);
                        zzB = zzln.zzB((zzv3 >> 63) ^ (zzv3 + zzv3));
                        i12 = zzA3 + zzB;
                        i16 += i12;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzR(obj, i18, i15)) {
                        i12 = zzln.zzw(i18, (zzoi) unsafe.getObject(obj, j10), zzx(i15));
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
        }
        int zza3 = i16 + ((zznd) obj).zzc.zza();
        if (this.zzh) {
            zzmt zzmtVar = ((zzna) obj).zzb;
            int zzc2 = zzmtVar.zza.zzc();
            int i44 = 0;
            for (int i45 = 0; i45 < zzc2; i45++) {
                Map.Entry zzg2 = zzmtVar.zza.zzg(i45);
                i44 += zzmt.zza((zzms) ((zzpa) zzg2).zza(), zzg2.getValue());
            }
            for (Map.Entry entry2 : zzmtVar.zza.zzd()) {
                i44 += zzmt.zza((zzms) entry2.getKey(), entry2.getValue());
            }
            return zza3 + i44;
        }
        return zza3;
    }

    @Override // com.google.android.recaptcha.internal.zzow
    public final int zzb(Object obj) {
        int i10;
        long doubleToLongBits;
        int floatToIntBits;
        int i11;
        int i12 = 0;
        for (int i13 = 0; i13 < this.zzc.length; i13 += 3) {
            int zzu = zzu(i13);
            int[] iArr = this.zzc;
            int i14 = 1048575 & zzu;
            int zzt = zzt(zzu);
            int i15 = iArr[i13];
            long j10 = i14;
            int i16 = 37;
            switch (zzt) {
                case 0:
                    i10 = i12 * 53;
                    doubleToLongBits = Double.doubleToLongBits(zzps.zza(obj, j10));
                    byte[] bArr = zznl.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 1:
                    i10 = i12 * 53;
                    floatToIntBits = Float.floatToIntBits(zzps.zzb(obj, j10));
                    i12 = i10 + floatToIntBits;
                    break;
                case 2:
                    i10 = i12 * 53;
                    doubleToLongBits = zzps.zzd(obj, j10);
                    byte[] bArr2 = zznl.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 3:
                    i10 = i12 * 53;
                    doubleToLongBits = zzps.zzd(obj, j10);
                    byte[] bArr3 = zznl.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 4:
                    i10 = i12 * 53;
                    floatToIntBits = zzps.zzc(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 5:
                    i10 = i12 * 53;
                    doubleToLongBits = zzps.zzd(obj, j10);
                    byte[] bArr4 = zznl.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 6:
                    i10 = i12 * 53;
                    floatToIntBits = zzps.zzc(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 7:
                    i10 = i12 * 53;
                    floatToIntBits = zznl.zza(zzps.zzw(obj, j10));
                    i12 = i10 + floatToIntBits;
                    break;
                case 8:
                    i10 = i12 * 53;
                    floatToIntBits = ((String) zzps.zzf(obj, j10)).hashCode();
                    i12 = i10 + floatToIntBits;
                    break;
                case 9:
                    i11 = i12 * 53;
                    Object zzf = zzps.zzf(obj, j10);
                    if (zzf != null) {
                        i16 = zzf.hashCode();
                    }
                    i12 = i11 + i16;
                    break;
                case 10:
                    i10 = i12 * 53;
                    floatToIntBits = zzps.zzf(obj, j10).hashCode();
                    i12 = i10 + floatToIntBits;
                    break;
                case 11:
                    i10 = i12 * 53;
                    floatToIntBits = zzps.zzc(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 12:
                    i10 = i12 * 53;
                    floatToIntBits = zzps.zzc(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 13:
                    i10 = i12 * 53;
                    floatToIntBits = zzps.zzc(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 14:
                    i10 = i12 * 53;
                    doubleToLongBits = zzps.zzd(obj, j10);
                    byte[] bArr5 = zznl.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 15:
                    i10 = i12 * 53;
                    floatToIntBits = zzps.zzc(obj, j10);
                    i12 = i10 + floatToIntBits;
                    break;
                case 16:
                    i10 = i12 * 53;
                    doubleToLongBits = zzps.zzd(obj, j10);
                    byte[] bArr6 = zznl.zzb;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i12 = i10 + floatToIntBits;
                    break;
                case 17:
                    i11 = i12 * 53;
                    Object zzf2 = zzps.zzf(obj, j10);
                    if (zzf2 != null) {
                        i16 = zzf2.hashCode();
                    }
                    i12 = i11 + i16;
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
                    i10 = i12 * 53;
                    floatToIntBits = zzps.zzf(obj, j10).hashCode();
                    i12 = i10 + floatToIntBits;
                    break;
                case 50:
                    i10 = i12 * 53;
                    floatToIntBits = zzps.zzf(obj, j10).hashCode();
                    i12 = i10 + floatToIntBits;
                    break;
                case 51:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzn(obj, j10));
                        byte[] bArr7 = zznl.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = Float.floatToIntBits(zzo(obj, j10));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = zzv(obj, j10);
                        byte[] bArr8 = zznl.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = zzv(obj, j10);
                        byte[] bArr9 = zznl.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = zzp(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = zzv(obj, j10);
                        byte[] bArr10 = zznl.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = zzp(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = zznl.zza(zzS(obj, j10));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = ((String) zzps.zzf(obj, j10)).hashCode();
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = zzps.zzf(obj, j10).hashCode();
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = zzps.zzf(obj, j10).hashCode();
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = zzp(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = zzp(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = zzp(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = zzv(obj, j10);
                        byte[] bArr11 = zznl.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = zzp(obj, j10);
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        doubleToLongBits = zzv(obj, j10);
                        byte[] bArr12 = zznl.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzR(obj, i15, i13)) {
                        i10 = i12 * 53;
                        floatToIntBits = zzps.zzf(obj, j10).hashCode();
                        i12 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i12 * 53) + ((zznd) obj).zzc.hashCode();
        if (this.zzh) {
            return (hashCode * 53) + ((zzna) obj).zzb.zza.hashCode();
        }
        return hashCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:509:0x0ca8, code lost:
        r0 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x0dd5, code lost:
        if (r0 == r14) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x0dd7, code lost:
        r30.putInt(r12, r0, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0ddd, code lost:
        r10 = r9.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x0de2, code lost:
        if (r10 >= r9.zzl) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:553:0x0de4, code lost:
        zzy(r33, r9.zzj[r10], null, r9.zzm, r33);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:555:0x0df9, code lost:
        if (r6 != 0) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:557:0x0dfd, code lost:
        if (r8 != r36) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:560:0x0e05, code lost:
        throw new com.google.android.recaptcha.internal.zznn("Failed to parse the message.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:562:0x0e08, code lost:
        if (r8 > r36) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:563:0x0e0a, code lost:
        if (r7 != r6) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x0e0c, code lost:
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0e12, code lost:
        throw new com.google.android.recaptcha.internal.zznn("Failed to parse the message.");
     */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0575  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0675  */
    /* JADX WARN: Removed duplicated region for block: B:586:0x0965 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:650:0x097d A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:203:0x0572 -> B:204:0x0573). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:259:0x0672 -> B:260:0x0673). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(java.lang.Object r33, byte[] r34, int r35, int r36, int r37, com.google.android.recaptcha.internal.zzkt r38) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzol.zzc(java.lang.Object, byte[], int, int, int, com.google.android.recaptcha.internal.zzkt):int");
    }

    @Override // com.google.android.recaptcha.internal.zzow
    public final Object zze() {
        return ((zznd) this.zzg).zzv();
    }

    @Override // com.google.android.recaptcha.internal.zzow
    public final void zzf(Object obj) {
        if (zzQ(obj)) {
            if (obj instanceof zznd) {
                zznd zzndVar = (zznd) obj;
                zzndVar.zzJ(Integer.MAX_VALUE);
                zzndVar.zza = 0;
                zzndVar.zzH();
            }
            int[] iArr = this.zzc;
            for (int i10 = 0; i10 < iArr.length; i10 += 3) {
                int zzu = zzu(i10);
                int i11 = 1048575 & zzu;
                int zzt = zzt(zzu);
                long j10 = i11;
                if (zzt != 9) {
                    if (zzt != 60 && zzt != 68) {
                        switch (zzt) {
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
                                ((zznk) zzps.zzf(obj, j10)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j10);
                                if (object != null) {
                                    ((zzoc) object).zzc();
                                    unsafe.putObject(obj, j10, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzR(obj, this.zzc[i10], i10)) {
                        zzx(i10).zzf(zzb.getObject(obj, j10));
                    }
                }
                if (zzN(obj, i10)) {
                    zzx(i10).zzf(zzb.getObject(obj, j10));
                }
            }
            this.zzm.zzi(obj);
            if (this.zzh) {
                this.zzn.zza(obj);
            }
        }
    }

    @Override // com.google.android.recaptcha.internal.zzow
    public final void zzg(Object obj, Object obj2) {
        zzD(obj);
        obj2.getClass();
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int zzu = zzu(i10);
            int i11 = 1048575 & zzu;
            int[] iArr = this.zzc;
            int zzt = zzt(zzu);
            int i12 = iArr[i10];
            long j10 = i11;
            switch (zzt) {
                case 0:
                    if (zzN(obj2, i10)) {
                        zzps.zzo(obj, j10, zzps.zza(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzN(obj2, i10)) {
                        zzps.zzp(obj, j10, zzps.zzb(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzN(obj2, i10)) {
                        zzps.zzr(obj, j10, zzps.zzd(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzN(obj2, i10)) {
                        zzps.zzr(obj, j10, zzps.zzd(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzN(obj2, i10)) {
                        zzps.zzq(obj, j10, zzps.zzc(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzN(obj2, i10)) {
                        zzps.zzr(obj, j10, zzps.zzd(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzN(obj2, i10)) {
                        zzps.zzq(obj, j10, zzps.zzc(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzN(obj2, i10)) {
                        zzps.zzm(obj, j10, zzps.zzw(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzN(obj2, i10)) {
                        zzps.zzs(obj, j10, zzps.zzf(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzE(obj, obj2, i10);
                    break;
                case 10:
                    if (zzN(obj2, i10)) {
                        zzps.zzs(obj, j10, zzps.zzf(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzN(obj2, i10)) {
                        zzps.zzq(obj, j10, zzps.zzc(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzN(obj2, i10)) {
                        zzps.zzq(obj, j10, zzps.zzc(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzN(obj2, i10)) {
                        zzps.zzq(obj, j10, zzps.zzc(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzN(obj2, i10)) {
                        zzps.zzr(obj, j10, zzps.zzd(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzN(obj2, i10)) {
                        zzps.zzq(obj, j10, zzps.zzc(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzN(obj2, i10)) {
                        zzps.zzr(obj, j10, zzps.zzd(obj2, j10));
                        zzH(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzE(obj, obj2, i10);
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
                    zznk zznkVar = (zznk) zzps.zzf(obj, j10);
                    zznk zznkVar2 = (zznk) zzps.zzf(obj2, j10);
                    int size = zznkVar.size();
                    int size2 = zznkVar2.size();
                    if (size > 0 && size2 > 0) {
                        if (!zznkVar.zzc()) {
                            zznkVar = zznkVar.zzd(size2 + size);
                        }
                        zznkVar.addAll(zznkVar2);
                    }
                    if (size > 0) {
                        zznkVar2 = zznkVar;
                    }
                    zzps.zzs(obj, j10, zznkVar2);
                    break;
                case 50:
                    int i13 = zzoy.zza;
                    zzps.zzs(obj, j10, zzod.zzb(zzps.zzf(obj, j10), zzps.zzf(obj2, j10)));
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
                    if (zzR(obj2, i12, i10)) {
                        zzps.zzs(obj, j10, zzps.zzf(obj2, j10));
                        zzI(obj, i12, i10);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzF(obj, obj2, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzR(obj2, i12, i10)) {
                        zzps.zzs(obj, j10, zzps.zzf(obj2, j10));
                        zzI(obj, i12, i10);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzF(obj, obj2, i10);
                    break;
            }
        }
        zzoy.zzq(this.zzm, obj, obj2);
        if (this.zzh) {
            zzoy.zzp(this.zzn, obj, obj2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0156  */
    @Override // com.google.android.recaptcha.internal.zzow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh(java.lang.Object r13, com.google.android.recaptcha.internal.zzov r14, com.google.android.recaptcha.internal.zzmo r15) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1822
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzol.zzh(java.lang.Object, com.google.android.recaptcha.internal.zzov, com.google.android.recaptcha.internal.zzmo):void");
    }

    @Override // com.google.android.recaptcha.internal.zzow
    public final void zzi(Object obj, byte[] bArr, int i10, int i11, zzkt zzktVar) throws IOException {
        zzc(obj, bArr, i10, i11, 0, zzktVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0745  */
    @Override // com.google.android.recaptcha.internal.zzow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(java.lang.Object r25, com.google.android.recaptcha.internal.zzpy r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2034
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.recaptcha.internal.zzol.zzj(java.lang.Object, com.google.android.recaptcha.internal.zzpy):void");
    }

    @Override // com.google.android.recaptcha.internal.zzow
    public final boolean zzk(Object obj, Object obj2) {
        boolean zzF;
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int zzu = zzu(i10);
            long j10 = zzu & 1048575;
            switch (zzt(zzu)) {
                case 0:
                    if (zzL(obj, obj2, i10) && Double.doubleToLongBits(zzps.zza(obj, j10)) == Double.doubleToLongBits(zzps.zza(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzL(obj, obj2, i10) && Float.floatToIntBits(zzps.zzb(obj, j10)) == Float.floatToIntBits(zzps.zzb(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzL(obj, obj2, i10) && zzps.zzd(obj, j10) == zzps.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzL(obj, obj2, i10) && zzps.zzd(obj, j10) == zzps.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzL(obj, obj2, i10) && zzps.zzc(obj, j10) == zzps.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzL(obj, obj2, i10) && zzps.zzd(obj, j10) == zzps.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzL(obj, obj2, i10) && zzps.zzc(obj, j10) == zzps.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzL(obj, obj2, i10) && zzps.zzw(obj, j10) == zzps.zzw(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzL(obj, obj2, i10) && zzoy.zzF(zzps.zzf(obj, j10), zzps.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzL(obj, obj2, i10) && zzoy.zzF(zzps.zzf(obj, j10), zzps.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzL(obj, obj2, i10) && zzoy.zzF(zzps.zzf(obj, j10), zzps.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzL(obj, obj2, i10) && zzps.zzc(obj, j10) == zzps.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzL(obj, obj2, i10) && zzps.zzc(obj, j10) == zzps.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzL(obj, obj2, i10) && zzps.zzc(obj, j10) == zzps.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzL(obj, obj2, i10) && zzps.zzd(obj, j10) == zzps.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzL(obj, obj2, i10) && zzps.zzc(obj, j10) == zzps.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzL(obj, obj2, i10) && zzps.zzd(obj, j10) == zzps.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzL(obj, obj2, i10) && zzoy.zzF(zzps.zzf(obj, j10), zzps.zzf(obj2, j10))) {
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
                    zzF = zzoy.zzF(zzps.zzf(obj, j10), zzps.zzf(obj2, j10));
                    break;
                case 50:
                    zzF = zzoy.zzF(zzps.zzf(obj, j10), zzps.zzf(obj2, j10));
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
                    long zzr = zzr(i10) & 1048575;
                    if (zzps.zzc(obj, zzr) == zzps.zzc(obj2, zzr) && zzoy.zzF(zzps.zzf(obj, j10), zzps.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzF) {
                return false;
            }
        }
        if (!((zznd) obj).zzc.equals(((zznd) obj2).zzc)) {
            return false;
        }
        if (this.zzh) {
            return ((zzna) obj).zzb.equals(((zzna) obj2).zzb);
        }
        return true;
    }

    @Override // com.google.android.recaptcha.internal.zzow
    public final boolean zzl(Object obj) {
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        while (i13 < this.zzk) {
            int[] iArr = this.zzj;
            int[] iArr2 = this.zzc;
            int i15 = iArr[i13];
            int i16 = iArr2[i15];
            int zzu = zzu(i15);
            int i17 = this.zzc[i15 + 2];
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
            if ((268435456 & zzu) != 0 && !zzO(obj, i15, i10, i11, i19)) {
                return false;
            }
            int zzt = zzt(zzu);
            if (zzt != 9 && zzt != 17) {
                if (zzt != 27) {
                    if (zzt != 60 && zzt != 68) {
                        if (zzt != 49) {
                            if (zzt == 50 && !((zzoc) zzps.zzf(obj, zzu & 1048575)).isEmpty()) {
                                zzob zzobVar = (zzob) zzz(i15);
                                throw null;
                            }
                        }
                    } else if (zzR(obj, i16, i15) && !zzP(obj, zzu, zzx(i15))) {
                        return false;
                    }
                }
                List list = (List) zzps.zzf(obj, zzu & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzow zzx = zzx(i15);
                    for (int i20 = 0; i20 < list.size(); i20++) {
                        if (!zzx.zzl(list.get(i20))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zzO(obj, i15, i10, i11, i19) && !zzP(obj, zzu, zzx(i15))) {
                return false;
            }
            i13++;
            i14 = i10;
            i12 = i11;
        }
        if (this.zzh && !((zzna) obj).zzb.zzk()) {
            return false;
        }
        return true;
    }
}
