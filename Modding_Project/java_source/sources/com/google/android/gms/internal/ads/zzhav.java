package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhav<T> implements zzhbl<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhce.zzi();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzhas zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzhbx zzm;
    private final zzgys zzn;

    private zzhav(int[] iArr, Object[] objArr, int i10, int i11, zzhas zzhasVar, boolean z10, int[] iArr2, int i12, int i13, zzhay zzhayVar, zzhaf zzhafVar, zzhbx zzhbxVar, zzgys zzgysVar, zzhan zzhanVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i10;
        this.zzf = i11;
        this.zzi = zzhasVar instanceof zzgzh;
        boolean z11 = false;
        if (zzgysVar != null && (zzhasVar instanceof zzgzd)) {
            z11 = true;
        }
        this.zzh = z11;
        this.zzj = iArr2;
        this.zzk = i12;
        this.zzl = i13;
        this.zzm = zzhbxVar;
        this.zzn = zzgysVar;
        this.zzg = zzhasVar;
    }

    private final Object zzA(Object obj, int i10) {
        zzhbl zzx = zzx(i10);
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
        zzhbl zzx = zzx(i11);
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
            zzhbl zzx = zzx(i10);
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
        int[] iArr = this.zzc;
        int i11 = iArr[i10];
        if (!zzR(obj2, i11, i10)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzu = zzu(i10) & 1048575;
        Object object = unsafe.getObject(obj2, zzu);
        if (object != null) {
            zzhbl zzx = zzx(i10);
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
        throw new IllegalStateException("Source subfield " + iArr[i10] + " is present but null: " + obj2.toString());
    }

    private final void zzG(Object obj, int i10, zzhbf zzhbfVar) throws IOException {
        long j10 = i10 & 1048575;
        if (zzM(i10)) {
            zzhce.zzv(obj, j10, zzhbfVar.zzs());
        } else if (this.zzi) {
            zzhce.zzv(obj, j10, zzhbfVar.zzr());
        } else {
            zzhce.zzv(obj, j10, zzhbfVar.zzp());
        }
    }

    private final void zzH(Object obj, int i10) {
        int zzr = zzr(i10);
        long j10 = 1048575 & zzr;
        if (j10 == 1048575) {
            return;
        }
        zzhce.zzt(obj, j10, (1 << (zzr >>> 20)) | zzhce.zzd(obj, j10));
    }

    private final void zzI(Object obj, int i10, int i11) {
        zzhce.zzt(obj, zzr(i11) & 1048575, i10);
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
                    if (Double.doubleToRawLongBits(zzhce.zzb(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzhce.zzc(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzhce.zzf(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzhce.zzf(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzhce.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzhce.zzf(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzhce.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzhce.zzz(obj, j11);
                case 8:
                    Object zzh = zzhce.zzh(obj, j11);
                    if (zzh instanceof String) {
                        if (((String) zzh).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (zzh instanceof zzgxz) {
                        if (zzgxz.zzb.equals(zzh)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (zzhce.zzh(obj, j11) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzgxz.zzb.equals(zzhce.zzh(obj, j11))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzhce.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzhce.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzhce.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzhce.zzf(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzhce.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzhce.zzf(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzhce.zzh(obj, j11) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzhce.zzd(obj, j10) & (1 << (zzr >>> 20))) == 0) {
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

    private static boolean zzP(Object obj, int i10, zzhbl zzhblVar) {
        return zzhblVar.zzl(zzhce.zzh(obj, i10 & 1048575));
    }

    private static boolean zzQ(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzgzh) {
            return ((zzgzh) obj).zzcd();
        }
        return true;
    }

    private final boolean zzR(Object obj, int i10, int i11) {
        if (zzhce.zzd(obj, zzr(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private static boolean zzS(Object obj, long j10) {
        return ((Boolean) zzhce.zzh(obj, j10)).booleanValue();
    }

    private static final void zzT(int i10, Object obj, zzhcm zzhcmVar) throws IOException {
        if (obj instanceof String) {
            zzhcmVar.zzG(i10, (String) obj);
        } else {
            zzhcmVar.zzd(i10, (zzgxz) obj);
        }
    }

    static zzhby zzd(Object obj) {
        zzgzh zzgzhVar = (zzgzh) obj;
        zzhby zzhbyVar = zzgzhVar.zzt;
        if (zzhbyVar == zzhby.zzc()) {
            zzhby zzf = zzhby.zzf();
            zzgzhVar.zzt = zzf;
            return zzf;
        }
        return zzhbyVar;
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
    public static com.google.android.gms.internal.ads.zzhav zzm(java.lang.Class r34, com.google.android.gms.internal.ads.zzhap r35, com.google.android.gms.internal.ads.zzhay r36, com.google.android.gms.internal.ads.zzhaf r37, com.google.android.gms.internal.ads.zzhbx r38, com.google.android.gms.internal.ads.zzgys r39, com.google.android.gms.internal.ads.zzhan r40) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhav.zzm(java.lang.Class, com.google.android.gms.internal.ads.zzhap, com.google.android.gms.internal.ads.zzhay, com.google.android.gms.internal.ads.zzhaf, com.google.android.gms.internal.ads.zzhbx, com.google.android.gms.internal.ads.zzgys, com.google.android.gms.internal.ads.zzhan):com.google.android.gms.internal.ads.zzhav");
    }

    private static double zzn(Object obj, long j10) {
        return ((Double) zzhce.zzh(obj, j10)).doubleValue();
    }

    private static float zzo(Object obj, long j10) {
        return ((Float) zzhce.zzh(obj, j10)).floatValue();
    }

    private static int zzp(Object obj, long j10) {
        return ((Integer) zzhce.zzh(obj, j10)).intValue();
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

    private static int zzt(int i10) {
        return (i10 >>> 20) & 255;
    }

    private final int zzu(int i10) {
        return this.zzc[i10 + 1];
    }

    private static long zzv(Object obj, long j10) {
        return ((Long) zzhce.zzh(obj, j10)).longValue();
    }

    private final zzgzn zzw(int i10) {
        int i11 = i10 / 3;
        return (zzgzn) this.zzd[i11 + i11 + 1];
    }

    private final zzhbl zzx(int i10) {
        Object[] objArr = this.zzd;
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzhbl zzhblVar = (zzhbl) objArr[i12];
        if (zzhblVar != null) {
            return zzhblVar;
        }
        zzhbl zzb2 = zzhbc.zza().zzb((Class) objArr[i12 + 1]);
        objArr[i12] = zzb2;
        return zzb2;
    }

    private final Object zzy(Object obj, int i10, Object obj2, zzhbx zzhbxVar, Object obj3) {
        int i11 = this.zzc[i10];
        Object zzh = zzhce.zzh(obj, zzu(i10) & 1048575);
        if (zzh == null || zzw(i10) == null) {
            return obj2;
        }
        zzham zzhamVar = (zzham) zzh;
        zzhal zzhalVar = (zzhal) zzz(i10);
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
    @Override // com.google.android.gms.internal.ads.zzhbl
    public final int zza(Object obj) {
        int i10;
        boolean z10;
        int i11;
        int zzD;
        int zzD2;
        int zzD3;
        int zzE;
        int zzD4;
        int zzD5;
        int zzd;
        int zzD6;
        int zzg;
        int size;
        int zzD7;
        int zzD8;
        int zzD9;
        int i12;
        int zze;
        int zzD10;
        int zzD11;
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
                int zzu = zzu(i15);
                int zzt = zzt(zzu);
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
                if (zzt >= zzgyx.zzJ.zza()) {
                    zzgyx.zzW.zza();
                }
                long j10 = i21;
                switch (zzt) {
                    case 0:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzD = zzgym.zzD(i18 << 3);
                            i12 = zzD + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzD2 = zzgym.zzD(i18 << 3);
                            i12 = zzD2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            long j11 = unsafe.getLong(obj, j10);
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzE(j11);
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            long j12 = unsafe.getLong(obj, j10);
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzE(j12);
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzE(unsafe.getInt(obj, j10));
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzD = zzgym.zzD(i18 << 3);
                            i12 = zzD + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzD2 = zzgym.zzD(i18 << 3);
                            i12 = zzD2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzD4 = zzgym.zzD(i18 << 3);
                            i12 = zzD4 + 1;
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
                            if (object instanceof zzgxz) {
                                zzD5 = zzgym.zzD(i22);
                                zzd = ((zzgxz) object).zzd();
                                zzD6 = zzgym.zzD(zzd);
                                i12 = zzD5 + zzD6 + zzd;
                                i16 += i12;
                                break;
                            } else {
                                zzD3 = zzgym.zzD(i22);
                                zzE = zzgym.zzC((String) object);
                                i12 = zzD3 + zzE;
                                i16 += i12;
                            }
                        }
                    case 9:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            i12 = zzhbn.zzh(i18, unsafe.getObject(obj, j10), zzx(i15));
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzD5 = zzgym.zzD(i18 << 3);
                            zzd = ((zzgxz) unsafe.getObject(obj, j10)).zzd();
                            zzD6 = zzgym.zzD(zzd);
                            i12 = zzD5 + zzD6 + zzd;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            int i23 = unsafe.getInt(obj, j10);
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzD(i23);
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzE(unsafe.getInt(obj, j10));
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzD2 = zzgym.zzD(i18 << 3);
                            i12 = zzD2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzD = zzgym.zzD(i18 << 3);
                            i12 = zzD + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            int i24 = unsafe.getInt(obj, j10);
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzD((i24 >> 31) ^ (i24 + i24));
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            long j13 = unsafe.getLong(obj, j10);
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzE((j13 >> 63) ^ (j13 + j13));
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzO(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            i12 = zzgym.zzy(i18, (zzhas) unsafe.getObject(obj, j10), zzx(i15));
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i12 = zzhbn.zzd(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 19:
                        i12 = zzhbn.zzb(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 20:
                        List list = (List) unsafe.getObject(obj, j10);
                        int i25 = zzhbn.zza;
                        if (list.size() != 0) {
                            zzg = zzhbn.zzg(list) + (list.size() * zzgym.zzD(i18 << 3));
                            i16 += zzg;
                            break;
                        }
                        zzg = z11;
                        i16 += zzg;
                    case 21:
                        List list2 = (List) unsafe.getObject(obj, j10);
                        int i26 = zzhbn.zza;
                        size = list2.size();
                        if (size != 0) {
                            zzD3 = zzhbn.zzl(list2);
                            zzD7 = zzgym.zzD(i18 << 3);
                            zzE = size * zzD7;
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 22:
                        List list3 = (List) unsafe.getObject(obj, j10);
                        int i27 = zzhbn.zza;
                        size = list3.size();
                        if (size != 0) {
                            zzD3 = zzhbn.zzf(list3);
                            zzD7 = zzgym.zzD(i18 << 3);
                            zzE = size * zzD7;
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 23:
                        i12 = zzhbn.zzd(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 24:
                        i12 = zzhbn.zzb(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 25:
                        int i28 = zzhbn.zza;
                        int size2 = ((List) unsafe.getObject(obj, j10)).size();
                        if (size2 != 0) {
                            i12 = size2 * (zzgym.zzD(i18 << 3) + 1);
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 26:
                        ?? r02 = (List) unsafe.getObject(obj, j10);
                        int i29 = zzhbn.zza;
                        int size3 = r02.size();
                        if (size3 != 0) {
                            zzg = zzgym.zzD(i18 << 3) * size3;
                            if (r02 instanceof zzhae) {
                                zzhae zzhaeVar = (zzhae) r02;
                                for (int i30 = z11; i30 < size3; i30++) {
                                    Object zzc = zzhaeVar.zzc();
                                    if (zzc instanceof zzgxz) {
                                        int zzd2 = ((zzgxz) zzc).zzd();
                                        zzg += zzgym.zzD(zzd2) + zzd2;
                                    } else {
                                        zzg += zzgym.zzC((String) zzc);
                                    }
                                }
                            } else {
                                for (int i31 = z11; i31 < size3; i31++) {
                                    Object obj2 = r02.get(i31);
                                    if (obj2 instanceof zzgxz) {
                                        int zzd3 = ((zzgxz) obj2).zzd();
                                        zzg += zzgym.zzD(zzd3) + zzd3;
                                    } else {
                                        zzg += zzgym.zzC((String) obj2);
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
                        zzhbl zzx = zzx(i15);
                        int i32 = zzhbn.zza;
                        int size4 = r03.size();
                        if (size4 == 0) {
                            zzD8 = z11;
                        } else {
                            zzD8 = zzgym.zzD(i18 << 3) * size4;
                            for (int i33 = z11; i33 < size4; i33++) {
                                Object obj3 = r03.get(i33);
                                if (obj3 instanceof zzhad) {
                                    int zza2 = ((zzhad) obj3).zza();
                                    zzD8 += zzgym.zzD(zza2) + zza2;
                                } else {
                                    zzD8 += zzgym.zzA((zzhas) obj3, zzx);
                                }
                            }
                        }
                        i16 += zzD8;
                        break;
                    case 28:
                        ?? r04 = (List) unsafe.getObject(obj, j10);
                        int i34 = zzhbn.zza;
                        int size5 = r04.size();
                        if (size5 == 0) {
                            zzD9 = z11;
                        } else {
                            zzD9 = size5 * zzgym.zzD(i18 << 3);
                            for (int i35 = z11; i35 < r04.size(); i35++) {
                                int zzd4 = ((zzgxz) r04.get(i35)).zzd();
                                zzD9 += zzgym.zzD(zzd4) + zzd4;
                            }
                        }
                        i16 += zzD9;
                        break;
                    case 29:
                        List list4 = (List) unsafe.getObject(obj, j10);
                        int i36 = zzhbn.zza;
                        size = list4.size();
                        if (size != 0) {
                            zzD3 = zzhbn.zzk(list4);
                            zzD7 = zzgym.zzD(i18 << 3);
                            zzE = size * zzD7;
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 30:
                        List list5 = (List) unsafe.getObject(obj, j10);
                        int i37 = zzhbn.zza;
                        size = list5.size();
                        if (size != 0) {
                            zzD3 = zzhbn.zza(list5);
                            zzD7 = zzgym.zzD(i18 << 3);
                            zzE = size * zzD7;
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 31:
                        i12 = zzhbn.zzb(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 32:
                        i12 = zzhbn.zzd(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 33:
                        List list6 = (List) unsafe.getObject(obj, j10);
                        int i38 = zzhbn.zza;
                        size = list6.size();
                        if (size != 0) {
                            zzD3 = zzhbn.zzi(list6);
                            zzD7 = zzgym.zzD(i18 << 3);
                            zzE = size * zzD7;
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 34:
                        List list7 = (List) unsafe.getObject(obj, j10);
                        int i39 = zzhbn.zza;
                        size = list7.size();
                        if (size != 0) {
                            zzD3 = zzhbn.zzj(list7);
                            zzD7 = zzgym.zzD(i18 << 3);
                            zzE = size * zzD7;
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 35:
                        zze = zzhbn.zze((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        zze = zzhbn.zzc((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        zze = zzhbn.zzg((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        zze = zzhbn.zzl((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        zze = zzhbn.zzf((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        zze = zzhbn.zze((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        zze = zzhbn.zzc((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        int i40 = zzhbn.zza;
                        zze = ((List) unsafe.getObject(obj, j10)).size();
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        zze = zzhbn.zzk((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        zze = zzhbn.zza((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        zze = zzhbn.zzc((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        zze = zzhbn.zze((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        zze = zzhbn.zzi((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        zze = zzhbn.zzj((List) unsafe.getObject(obj, j10));
                        if (zze > 0) {
                            zzD10 = zzgym.zzD(i18 << 3);
                            zzD11 = zzgym.zzD(zze);
                            zzD9 = zzD10 + zzD11 + zze;
                            i16 += zzD9;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        ?? r05 = (List) unsafe.getObject(obj, j10);
                        zzhbl zzx2 = zzx(i15);
                        int i41 = zzhbn.zza;
                        int size6 = r05.size();
                        if (size6 == 0) {
                            i13 = z11;
                        } else {
                            boolean z13 = z11;
                            i13 = z13;
                            for (int i42 = z13; i42 < size6; i42++) {
                                i13 += zzgym.zzy(i18, (zzhas) r05.get(i42), zzx2);
                            }
                        }
                        i16 += i13;
                        break;
                    case 50:
                        zzham zzhamVar = (zzham) unsafe.getObject(obj, j10);
                        zzhal zzhalVar = (zzhal) zzz(i15);
                        if (zzhamVar.isEmpty()) {
                            continue;
                        } else {
                            Iterator it = zzhamVar.entrySet().iterator();
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
                            zzD = zzgym.zzD(i18 << 3);
                            i12 = zzD + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzR(obj, i18, i15)) {
                            zzD2 = zzgym.zzD(i18 << 3);
                            i12 = zzD2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzR(obj, i18, i15)) {
                            long zzv = zzv(obj, j10);
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzE(zzv);
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzR(obj, i18, i15)) {
                            long zzv2 = zzv(obj, j10);
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzE(zzv2);
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzR(obj, i18, i15)) {
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzE(zzp(obj, j10));
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzR(obj, i18, i15)) {
                            zzD = zzgym.zzD(i18 << 3);
                            i12 = zzD + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzR(obj, i18, i15)) {
                            zzD2 = zzgym.zzD(i18 << 3);
                            i12 = zzD2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzR(obj, i18, i15)) {
                            zzD4 = zzgym.zzD(i18 << 3);
                            i12 = zzD4 + 1;
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
                            if (object2 instanceof zzgxz) {
                                zzD5 = zzgym.zzD(i43);
                                zzd = ((zzgxz) object2).zzd();
                                zzD6 = zzgym.zzD(zzd);
                                i12 = zzD5 + zzD6 + zzd;
                                i16 += i12;
                                break;
                            } else {
                                zzD3 = zzgym.zzD(i43);
                                zzE = zzgym.zzC((String) object2);
                                i12 = zzD3 + zzE;
                                i16 += i12;
                            }
                        }
                    case 60:
                        if (zzR(obj, i18, i15)) {
                            i12 = zzhbn.zzh(i18, unsafe.getObject(obj, j10), zzx(i15));
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzR(obj, i18, i15)) {
                            zzD5 = zzgym.zzD(i18 << 3);
                            zzd = ((zzgxz) unsafe.getObject(obj, j10)).zzd();
                            zzD6 = zzgym.zzD(zzd);
                            i12 = zzD5 + zzD6 + zzd;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzR(obj, i18, i15)) {
                            int zzp = zzp(obj, j10);
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzD(zzp);
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzR(obj, i18, i15)) {
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzE(zzp(obj, j10));
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzR(obj, i18, i15)) {
                            zzD2 = zzgym.zzD(i18 << 3);
                            i12 = zzD2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzR(obj, i18, i15)) {
                            zzD = zzgym.zzD(i18 << 3);
                            i12 = zzD + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzR(obj, i18, i15)) {
                            int zzp2 = zzp(obj, j10);
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzD((zzp2 >> 31) ^ (zzp2 + zzp2));
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzR(obj, i18, i15)) {
                            long zzv3 = zzv(obj, j10);
                            zzD3 = zzgym.zzD(i18 << 3);
                            zzE = zzgym.zzE((zzv3 >> 63) ^ (zzv3 + zzv3));
                            i12 = zzD3 + zzE;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzR(obj, i18, i15)) {
                            i12 = zzgym.zzy(i18, (zzhas) unsafe.getObject(obj, j10), zzx(i15));
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
                int zza3 = i16 + ((zzgzh) obj).zzt.zza();
                if (this.zzh) {
                    zzhbt zzhbtVar = ((zzgzd) obj).zza.zza;
                    int zzc2 = zzhbtVar.zzc();
                    int i44 = 0;
                    for (int i45 = 0; i45 < zzc2; i45++) {
                        Map.Entry zzg2 = zzhbtVar.zzg(i45);
                        i44 += zzgyw.zzc((zzgyv) ((zzhbp) zzg2).zza(), zzg2.getValue());
                    }
                    for (Map.Entry entry2 : zzhbtVar.zzd()) {
                        i44 += zzgyw.zzc((zzgyv) entry2.getKey(), entry2.getValue());
                    }
                    return zza3 + i44;
                }
                return zza3;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhbl
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
                int zzu = zzu(i12);
                int i14 = 1048575 & zzu;
                int zzt = zzt(zzu);
                int i15 = iArr[i12];
                long j10 = i14;
                int i16 = 37;
                switch (zzt) {
                    case 0:
                        i10 = i13 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzhce.zzb(obj, j10));
                        byte[] bArr = zzgzu.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 1:
                        i10 = i13 * 53;
                        floatToIntBits = Float.floatToIntBits(zzhce.zzc(obj, j10));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 2:
                        i10 = i13 * 53;
                        doubleToLongBits = zzhce.zzf(obj, j10);
                        byte[] bArr2 = zzgzu.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 3:
                        i10 = i13 * 53;
                        doubleToLongBits = zzhce.zzf(obj, j10);
                        byte[] bArr3 = zzgzu.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 4:
                        i10 = i13 * 53;
                        floatToIntBits = zzhce.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 5:
                        i10 = i13 * 53;
                        doubleToLongBits = zzhce.zzf(obj, j10);
                        byte[] bArr4 = zzgzu.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 6:
                        i10 = i13 * 53;
                        floatToIntBits = zzhce.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 7:
                        i10 = i13 * 53;
                        floatToIntBits = zzgzu.zza(zzhce.zzz(obj, j10));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 8:
                        i10 = i13 * 53;
                        floatToIntBits = ((String) zzhce.zzh(obj, j10)).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 9:
                        i11 = i13 * 53;
                        Object zzh = zzhce.zzh(obj, j10);
                        if (zzh != null) {
                            i16 = zzh.hashCode();
                        }
                        i13 = i11 + i16;
                        break;
                    case 10:
                        i10 = i13 * 53;
                        floatToIntBits = zzhce.zzh(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 11:
                        i10 = i13 * 53;
                        floatToIntBits = zzhce.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 12:
                        i10 = i13 * 53;
                        floatToIntBits = zzhce.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 13:
                        i10 = i13 * 53;
                        floatToIntBits = zzhce.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 14:
                        i10 = i13 * 53;
                        doubleToLongBits = zzhce.zzf(obj, j10);
                        byte[] bArr5 = zzgzu.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 15:
                        i10 = i13 * 53;
                        floatToIntBits = zzhce.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 16:
                        i10 = i13 * 53;
                        doubleToLongBits = zzhce.zzf(obj, j10);
                        byte[] bArr6 = zzgzu.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 17:
                        i11 = i13 * 53;
                        Object zzh2 = zzhce.zzh(obj, j10);
                        if (zzh2 != null) {
                            i16 = zzh2.hashCode();
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
                        floatToIntBits = zzhce.zzh(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 50:
                        i10 = i13 * 53;
                        floatToIntBits = zzhce.zzh(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 51:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = Double.doubleToLongBits(zzn(obj, j10));
                            byte[] bArr7 = zzgzu.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 52:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = Float.floatToIntBits(zzo(obj, j10));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 53:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzv(obj, j10);
                            byte[] bArr8 = zzgzu.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 54:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzv(obj, j10);
                            byte[] bArr9 = zzgzu.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 55:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzp(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 56:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzv(obj, j10);
                            byte[] bArr10 = zzgzu.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 57:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzp(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 58:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzgzu.zza(zzS(obj, j10));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 59:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = ((String) zzhce.zzh(obj, j10)).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 60:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzhce.zzh(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 61:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzhce.zzh(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 62:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzp(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 63:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzp(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 64:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzp(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 65:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzv(obj, j10);
                            byte[] bArr11 = zzgzu.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 66:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzp(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 67:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzv(obj, j10);
                            byte[] bArr12 = zzgzu.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 68:
                        if (!zzR(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzhce.zzh(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                }
                i12 += 3;
            } else {
                int hashCode = (i13 * 53) + ((zzgzh) obj).zzt.hashCode();
                if (this.zzh) {
                    return (hashCode * 53) + ((zzgzd) obj).zza.zza.hashCode();
                }
                return hashCode;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:527:0x0d38, code lost:
        if (r1 == r0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:528:0x0d3a, code lost:
        r12.putInt(r14, r1, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:529:0x0d3e, code lost:
        r10 = r6.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0d43, code lost:
        if (r10 >= r6.zzl) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0d45, code lost:
        zzy(r33, r6.zzj[r10], null, r6.zzm, r33);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x0d5a, code lost:
        if (r9 != 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x0d5c, code lost:
        if (r8 != r7) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x0d64, code lost:
        throw new com.google.android.gms.internal.ads.zzgzw("Failed to parse the message.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:539:0x0d65, code lost:
        if (r8 > r7) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x0d67, code lost:
        if (r13 != r9) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x0d69, code lost:
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x0d6f, code lost:
        throw new com.google.android.gms.internal.ads.zzgzw("Failed to parse the message.");
     */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0596  */
    /* JADX WARN: Removed duplicated region for block: B:242:0x062f  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0681  */
    /* JADX WARN: Removed duplicated region for block: B:547:0x0c98 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:558:0x0969 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:613:0x0cac A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:625:0x0980 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:206:0x0593 -> B:207:0x0594). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:240:0x062c -> B:241:0x062d). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:261:0x067e -> B:262:0x067f). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(java.lang.Object r33, byte[] r34, int r35, int r36, int r37, com.google.android.gms.internal.ads.zzgxn r38) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhav.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzgxn):int");
    }

    @Override // com.google.android.gms.internal.ads.zzhbl
    public final Object zze() {
        return ((zzgzh) this.zzg).zzbj();
    }

    @Override // com.google.android.gms.internal.ads.zzhbl
    public final void zzf(Object obj) {
        if (zzQ(obj)) {
            if (obj instanceof zzgzh) {
                zzgzh zzgzhVar = (zzgzh) obj;
                zzgzhVar.zzbT();
                zzgzhVar.zzbS();
                zzgzhVar.zzbV();
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
                                ((zzgzt) zzhce.zzh(obj, j10)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j10);
                                if (object != null) {
                                    ((zzham) object).zzc();
                                    unsafe.putObject(obj, j10, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzR(obj, iArr[i10], i10)) {
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

    @Override // com.google.android.gms.internal.ads.zzhbl
    public final void zzg(Object obj, Object obj2) {
        zzD(obj);
        obj2.getClass();
        int i10 = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i10 < iArr.length) {
                int zzu = zzu(i10);
                int i11 = 1048575 & zzu;
                int zzt = zzt(zzu);
                int i12 = iArr[i10];
                long j10 = i11;
                switch (zzt) {
                    case 0:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzr(obj, j10, zzhce.zzb(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 1:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzs(obj, j10, zzhce.zzc(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 2:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzu(obj, j10, zzhce.zzf(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 3:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzu(obj, j10, zzhce.zzf(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 4:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzt(obj, j10, zzhce.zzd(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 5:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzu(obj, j10, zzhce.zzf(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 6:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzt(obj, j10, zzhce.zzd(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 7:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzp(obj, j10, zzhce.zzz(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 8:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzv(obj, j10, zzhce.zzh(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 9:
                        zzE(obj, obj2, i10);
                        break;
                    case 10:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzv(obj, j10, zzhce.zzh(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 11:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzt(obj, j10, zzhce.zzd(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 12:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzt(obj, j10, zzhce.zzd(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 13:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzt(obj, j10, zzhce.zzd(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 14:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzu(obj, j10, zzhce.zzf(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 15:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzt(obj, j10, zzhce.zzd(obj2, j10));
                            zzH(obj, i10);
                            break;
                        }
                    case 16:
                        if (!zzN(obj2, i10)) {
                            break;
                        } else {
                            zzhce.zzu(obj, j10, zzhce.zzf(obj2, j10));
                            zzH(obj, i10);
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
                        zzgzt zzgztVar = (zzgzt) zzhce.zzh(obj, j10);
                        zzgzt zzgztVar2 = (zzgzt) zzhce.zzh(obj2, j10);
                        int size = zzgztVar.size();
                        int size2 = zzgztVar2.size();
                        if (size > 0 && size2 > 0) {
                            if (!zzgztVar.zzc()) {
                                zzgztVar = zzgztVar.zzf(size2 + size);
                            }
                            zzgztVar.addAll(zzgztVar2);
                        }
                        if (size > 0) {
                            zzgztVar2 = zzgztVar;
                        }
                        zzhce.zzv(obj, j10, zzgztVar2);
                        break;
                    case 50:
                        int i13 = zzhbn.zza;
                        zzhce.zzv(obj, j10, zzhan.zzb(zzhce.zzh(obj, j10), zzhce.zzh(obj2, j10)));
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
                        if (!zzR(obj2, i12, i10)) {
                            break;
                        } else {
                            zzhce.zzv(obj, j10, zzhce.zzh(obj2, j10));
                            zzI(obj, i12, i10);
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
                        if (!zzR(obj2, i12, i10)) {
                            break;
                        } else {
                            zzhce.zzv(obj, j10, zzhce.zzh(obj2, j10));
                            zzI(obj, i12, i10);
                            break;
                        }
                    case 68:
                        zzF(obj, obj2, i10);
                        break;
                }
                i10 += 3;
            } else {
                zzhbn.zzq(this.zzm, obj, obj2);
                if (this.zzh) {
                    zzhbn.zzp(this.zzn, obj, obj2);
                    return;
                }
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x0518 A[LOOP:5: B:144:0x0514->B:146:0x0518, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0529  */
    @Override // com.google.android.gms.internal.ads.zzhbl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh(java.lang.Object r11, com.google.android.gms.internal.ads.zzhbf r12, com.google.android.gms.internal.ads.zzgyr r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhav.zzh(java.lang.Object, com.google.android.gms.internal.ads.zzhbf, com.google.android.gms.internal.ads.zzgyr):void");
    }

    @Override // com.google.android.gms.internal.ads.zzhbl
    public final void zzi(Object obj, byte[] bArr, int i10, int i11, zzgxn zzgxnVar) throws IOException {
        zzc(obj, bArr, i10, i11, 0, zzgxnVar);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02e9  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0377  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0414  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x045c  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0480  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x04a4  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0516  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x053a  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x055e  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0582  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x05ca  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x05ee  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0634  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x066a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0226  */
    @Override // com.google.android.gms.internal.ads.zzhbl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(java.lang.Object r24, com.google.android.gms.internal.ads.zzhcm r25) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhav.zzj(java.lang.Object, com.google.android.gms.internal.ads.zzhcm):void");
    }

    @Override // com.google.android.gms.internal.ads.zzhbl
    public final boolean zzk(Object obj, Object obj2) {
        boolean zzJ;
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int zzu = zzu(i10);
            long j10 = zzu & 1048575;
            switch (zzt(zzu)) {
                case 0:
                    if (zzL(obj, obj2, i10) && Double.doubleToLongBits(zzhce.zzb(obj, j10)) == Double.doubleToLongBits(zzhce.zzb(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzL(obj, obj2, i10) && Float.floatToIntBits(zzhce.zzc(obj, j10)) == Float.floatToIntBits(zzhce.zzc(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzL(obj, obj2, i10) && zzhce.zzf(obj, j10) == zzhce.zzf(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzL(obj, obj2, i10) && zzhce.zzf(obj, j10) == zzhce.zzf(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzL(obj, obj2, i10) && zzhce.zzd(obj, j10) == zzhce.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzL(obj, obj2, i10) && zzhce.zzf(obj, j10) == zzhce.zzf(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzL(obj, obj2, i10) && zzhce.zzd(obj, j10) == zzhce.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzL(obj, obj2, i10) && zzhce.zzz(obj, j10) == zzhce.zzz(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzL(obj, obj2, i10) && zzhbn.zzJ(zzhce.zzh(obj, j10), zzhce.zzh(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzL(obj, obj2, i10) && zzhbn.zzJ(zzhce.zzh(obj, j10), zzhce.zzh(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzL(obj, obj2, i10) && zzhbn.zzJ(zzhce.zzh(obj, j10), zzhce.zzh(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzL(obj, obj2, i10) && zzhce.zzd(obj, j10) == zzhce.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzL(obj, obj2, i10) && zzhce.zzd(obj, j10) == zzhce.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzL(obj, obj2, i10) && zzhce.zzd(obj, j10) == zzhce.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzL(obj, obj2, i10) && zzhce.zzf(obj, j10) == zzhce.zzf(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzL(obj, obj2, i10) && zzhce.zzd(obj, j10) == zzhce.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzL(obj, obj2, i10) && zzhce.zzf(obj, j10) == zzhce.zzf(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzL(obj, obj2, i10) && zzhbn.zzJ(zzhce.zzh(obj, j10), zzhce.zzh(obj2, j10))) {
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
                    zzJ = zzhbn.zzJ(zzhce.zzh(obj, j10), zzhce.zzh(obj2, j10));
                    break;
                case 50:
                    zzJ = zzhbn.zzJ(zzhce.zzh(obj, j10), zzhce.zzh(obj2, j10));
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
                    if (zzhce.zzd(obj, zzr) == zzhce.zzd(obj2, zzr) && zzhbn.zzJ(zzhce.zzh(obj, j10), zzhce.zzh(obj2, j10))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzJ) {
                return false;
            }
        }
        if (!((zzgzh) obj).zzt.equals(((zzgzh) obj2).zzt)) {
            return false;
        }
        if (this.zzh) {
            return ((zzgzd) obj).zza.equals(((zzgzd) obj2).zza);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhbl
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
            if ((268435456 & zzu) != 0 && !zzO(obj, i15, i10, i11, i19)) {
                return false;
            }
            int zzt = zzt(zzu);
            if (zzt != 9 && zzt != 17) {
                if (zzt != 27) {
                    if (zzt != 60 && zzt != 68) {
                        if (zzt != 49) {
                            if (zzt == 50 && !((zzham) zzhce.zzh(obj, zzu & 1048575)).isEmpty()) {
                                zzhal zzhalVar = (zzhal) zzz(i15);
                                throw null;
                            }
                        }
                    } else if (zzR(obj, i16, i15) && !zzP(obj, zzu, zzx(i15))) {
                        return false;
                    }
                }
                List list = (List) zzhce.zzh(obj, zzu & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzhbl zzx = zzx(i15);
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
        if (this.zzh && !((zzgzd) obj).zza.zzi()) {
            return false;
        }
        return true;
    }
}
