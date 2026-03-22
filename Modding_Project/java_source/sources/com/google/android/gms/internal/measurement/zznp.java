package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-base@@23.0.0 */
/* loaded from: classes5.dex */
public final class zznp<T> implements zznx<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzop.zzq();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zznm zzg;
    private final boolean zzh;
    private final int[] zzi;
    private final int zzj;
    private final int zzk;
    private final zzoi zzl;
    private final zzls zzm;

    private zznp(int[] iArr, Object[] objArr, int i10, int i11, zznm zznmVar, boolean z10, int[] iArr2, int i12, int i13, zznr zznrVar, zzmy zzmyVar, zzoi zzoiVar, zzls zzlsVar, zznh zznhVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i10;
        this.zzf = i11;
        boolean z11 = false;
        if (zzlsVar != null && (zznmVar instanceof zzmc)) {
            z11 = true;
        }
        this.zzh = z11;
        this.zzi = iArr2;
        this.zzj = i12;
        this.zzk = i13;
        this.zzl = zzoiVar;
        this.zzm = zzlsVar;
        this.zzg = zznmVar;
    }

    private static boolean zzA(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzmf) {
            return ((zzmf) obj).zzcf();
        }
        return true;
    }

    private static void zzB(Object obj) {
        if (zzA(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    private static double zzC(Object obj, long j10) {
        return ((Double) zzop.zzn(obj, j10)).doubleValue();
    }

    private static float zzD(Object obj, long j10) {
        return ((Float) zzop.zzn(obj, j10)).floatValue();
    }

    private static int zzE(Object obj, long j10) {
        return ((Integer) zzop.zzn(obj, j10)).intValue();
    }

    private static long zzF(Object obj, long j10) {
        return ((Long) zzop.zzn(obj, j10)).longValue();
    }

    private static boolean zzG(Object obj, long j10) {
        return ((Boolean) zzop.zzn(obj, j10)).booleanValue();
    }

    private final boolean zzH(Object obj, Object obj2, int i10) {
        if (zzJ(obj, i10) == zzJ(obj2, i10)) {
            return true;
        }
        return false;
    }

    private final boolean zzI(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return zzJ(obj, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    private final boolean zzJ(Object obj, int i10) {
        int zzy = zzy(i10);
        long j10 = zzy & 1048575;
        if (j10 == 1048575) {
            int zzx = zzx(i10);
            long j11 = zzx & 1048575;
            switch (zzz(zzx)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzop.zzl(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzop.zzj(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzop.zzf(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzop.zzf(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzop.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzop.zzf(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzop.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzop.zzh(obj, j11);
                case 8:
                    Object zzn = zzop.zzn(obj, j11);
                    if (zzn instanceof String) {
                        if (((String) zzn).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (zzn instanceof zzlh) {
                        if (zzlh.zzb.equals(zzn)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (zzop.zzn(obj, j11) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzlh.zzb.equals(zzop.zzn(obj, j11))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzop.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzop.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzop.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzop.zzf(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzop.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzop.zzf(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzop.zzn(obj, j11) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzop.zzd(obj, j10) & (1 << (zzy >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final void zzK(Object obj, int i10) {
        int zzy = zzy(i10);
        long j10 = 1048575 & zzy;
        if (j10 == 1048575) {
            return;
        }
        zzop.zze(obj, j10, (1 << (zzy >>> 20)) | zzop.zzd(obj, j10));
    }

    private final boolean zzL(Object obj, int i10, int i11) {
        if (zzop.zzd(obj, zzy(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    private final void zzM(Object obj, int i10, int i11) {
        zzop.zze(obj, zzy(i11) & 1048575, i10);
    }

    private final int zzN(int i10, int i11) {
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

    private static final int zzO(byte[] bArr, int i10, int i11, zzot zzotVar, Class cls, zzkw zzkwVar) throws IOException {
        int i12;
        boolean z10;
        zzot zzotVar2 = zzot.zza;
        switch (zzotVar.ordinal()) {
            case 0:
                i12 = i10 + 8;
                zzkwVar.zzc = Double.valueOf(Double.longBitsToDouble(zzkx.zze(bArr, i10)));
                break;
            case 1:
                i12 = i10 + 4;
                zzkwVar.zzc = Float.valueOf(Float.intBitsToFloat(zzkx.zzd(bArr, i10)));
                break;
            case 2:
            case 3:
                int zzc = zzkx.zzc(bArr, i10, zzkwVar);
                zzkwVar.zzc = Long.valueOf(zzkwVar.zzb);
                return zzc;
            case 4:
            case 12:
            case 13:
                int zza2 = zzkx.zza(bArr, i10, zzkwVar);
                zzkwVar.zzc = Integer.valueOf(zzkwVar.zza);
                return zza2;
            case 5:
            case 15:
                i12 = i10 + 8;
                zzkwVar.zzc = Long.valueOf(zzkx.zze(bArr, i10));
                break;
            case 6:
            case 14:
                i12 = i10 + 4;
                zzkwVar.zzc = Integer.valueOf(zzkx.zzd(bArr, i10));
                break;
            case 7:
                int zzc2 = zzkx.zzc(bArr, i10, zzkwVar);
                if (zzkwVar.zzb != 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                zzkwVar.zzc = Boolean.valueOf(z10);
                return zzc2;
            case 8:
                return zzkx.zzf(bArr, i10, zzkwVar);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return zzkx.zzh(zznu.zza().zzb(cls), bArr, i10, i11, zzkwVar);
            case 11:
                return zzkx.zzg(bArr, i10, zzkwVar);
            case 16:
                int zza3 = zzkx.zza(bArr, i10, zzkwVar);
                zzkwVar.zzc = Integer.valueOf(zzlj.zzb(zzkwVar.zza));
                return zza3;
            case 17:
                int zzc3 = zzkx.zzc(bArr, i10, zzkwVar);
                zzkwVar.zzc = Long.valueOf(zzlj.zzc(zzkwVar.zzb));
                return zzc3;
        }
        return i12;
    }

    private static final void zzP(int i10, Object obj, zzov zzovVar) throws IOException {
        if (obj instanceof String) {
            zzovVar.zzm(i10, (String) obj);
        } else {
            zzovVar.zzn(i10, (zzlh) obj);
        }
    }

    static zzoj zzg(Object obj) {
        zzmf zzmfVar = (zzmf) obj;
        zzoj zzojVar = zzmfVar.zzc;
        if (zzojVar == zzoj.zza()) {
            zzoj zzb2 = zzoj.zzb();
            zzmfVar.zzc = zzb2;
            return zzb2;
        }
        return zzojVar;
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
    public static com.google.android.gms.internal.measurement.zznp zzl(java.lang.Class r34, com.google.android.gms.internal.measurement.zznj r35, com.google.android.gms.internal.measurement.zznr r36, com.google.android.gms.internal.measurement.zzmy r37, com.google.android.gms.internal.measurement.zzoi r38, com.google.android.gms.internal.measurement.zzls r39, com.google.android.gms.internal.measurement.zznh r40) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zznp.zzl(java.lang.Class, com.google.android.gms.internal.measurement.zznj, com.google.android.gms.internal.measurement.zznr, com.google.android.gms.internal.measurement.zzmy, com.google.android.gms.internal.measurement.zzoi, com.google.android.gms.internal.measurement.zzls, com.google.android.gms.internal.measurement.zznh):com.google.android.gms.internal.measurement.zznp");
    }

    private static Field zzm(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e10) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 11 + name.length() + 29 + String.valueOf(arrays).length());
            sb2.append("Field ");
            sb2.append(str);
            sb2.append(" for ");
            sb2.append(name);
            sb2.append(" not found. Known fields are ");
            sb2.append(arrays);
            throw new RuntimeException(sb2.toString(), e10);
        }
    }

    private final void zzn(Object obj, Object obj2, int i10) {
        if (!zzJ(obj2, i10)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzx = zzx(i10) & 1048575;
        Object object = unsafe.getObject(obj2, zzx);
        if (object != null) {
            zznx zzp = zzp(i10);
            if (!zzJ(obj, i10)) {
                if (!zzA(object)) {
                    unsafe.putObject(obj, zzx, object);
                } else {
                    Object zza2 = zzp.zza();
                    zzp.zzd(zza2, object);
                    unsafe.putObject(obj, zzx, zza2);
                }
                zzK(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzx);
            if (!zzA(object2)) {
                Object zza3 = zzp.zza();
                zzp.zzd(zza3, object2);
                unsafe.putObject(obj, zzx, zza3);
                object2 = zza3;
            }
            zzp.zzd(object2, object);
            return;
        }
        int i11 = this.zzc[i10];
        String obj3 = obj2.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(i11).length() + 38 + obj3.length());
        sb2.append("Source subfield ");
        sb2.append(i11);
        sb2.append(" is present but null: ");
        sb2.append(obj3);
        throw new IllegalStateException(sb2.toString());
    }

    private final void zzo(Object obj, Object obj2, int i10) {
        int[] iArr = this.zzc;
        int i11 = iArr[i10];
        if (!zzL(obj2, i11, i10)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzx = zzx(i10) & 1048575;
        Object object = unsafe.getObject(obj2, zzx);
        if (object != null) {
            zznx zzp = zzp(i10);
            if (!zzL(obj, i11, i10)) {
                if (!zzA(object)) {
                    unsafe.putObject(obj, zzx, object);
                } else {
                    Object zza2 = zzp.zza();
                    zzp.zzd(zza2, object);
                    unsafe.putObject(obj, zzx, zza2);
                }
                zzM(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzx);
            if (!zzA(object2)) {
                Object zza3 = zzp.zza();
                zzp.zzd(zza3, object2);
                unsafe.putObject(obj, zzx, zza3);
                object2 = zza3;
            }
            zzp.zzd(object2, object);
            return;
        }
        int i12 = iArr[i10];
        String obj3 = obj2.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(i12).length() + 38 + obj3.length());
        sb2.append("Source subfield ");
        sb2.append(i12);
        sb2.append(" is present but null: ");
        sb2.append(obj3);
        throw new IllegalStateException(sb2.toString());
    }

    private final zznx zzp(int i10) {
        Object[] objArr = this.zzd;
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zznx zznxVar = (zznx) objArr[i12];
        if (zznxVar != null) {
            return zznxVar;
        }
        zznx zzb2 = zznu.zza().zzb((Class) objArr[i12 + 1]);
        objArr[i12] = zzb2;
        return zzb2;
    }

    private final Object zzq(int i10) {
        int i11 = i10 / 3;
        return this.zzd[i11 + i11];
    }

    private final zzmk zzr(int i10) {
        int i11 = i10 / 3;
        return (zzmk) this.zzd[i11 + i11 + 1];
    }

    private final Object zzs(Object obj, int i10) {
        zznx zzp = zzp(i10);
        int zzx = zzx(i10) & 1048575;
        if (!zzJ(obj, i10)) {
            return zzp.zza();
        }
        Object object = zzb.getObject(obj, zzx);
        if (zzA(object)) {
            return object;
        }
        Object zza2 = zzp.zza();
        if (object != null) {
            zzp.zzd(zza2, object);
        }
        return zza2;
    }

    private final void zzt(Object obj, int i10, Object obj2) {
        zzb.putObject(obj, zzx(i10) & 1048575, obj2);
        zzK(obj, i10);
    }

    private final Object zzu(Object obj, int i10, int i11) {
        zznx zzp = zzp(i11);
        if (!zzL(obj, i10, i11)) {
            return zzp.zza();
        }
        Object object = zzb.getObject(obj, zzx(i11) & 1048575);
        if (zzA(object)) {
            return object;
        }
        Object zza2 = zzp.zza();
        if (object != null) {
            zzp.zzd(zza2, object);
        }
        return zza2;
    }

    private final void zzv(Object obj, int i10, int i11, Object obj2) {
        zzb.putObject(obj, zzx(i11) & 1048575, obj2);
        zzM(obj, i10, i11);
    }

    private static boolean zzw(Object obj, int i10, zznx zznxVar) {
        return zznxVar.zzk(zzop.zzn(obj, i10 & 1048575));
    }

    private final int zzx(int i10) {
        return this.zzc[i10 + 1];
    }

    private final int zzy(int i10) {
        return this.zzc[i10 + 2];
    }

    private static int zzz(int i10) {
        return (i10 >>> 20) & 255;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final Object zza() {
        return ((zzmf) this.zzg).zzch();
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final boolean zzb(Object obj, Object obj2) {
        boolean zzB;
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int zzx = zzx(i10);
            long j10 = zzx & 1048575;
            switch (zzz(zzx)) {
                case 0:
                    if (zzH(obj, obj2, i10) && Double.doubleToLongBits(zzop.zzl(obj, j10)) == Double.doubleToLongBits(zzop.zzl(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzH(obj, obj2, i10) && Float.floatToIntBits(zzop.zzj(obj, j10)) == Float.floatToIntBits(zzop.zzj(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzH(obj, obj2, i10) && zzop.zzf(obj, j10) == zzop.zzf(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzH(obj, obj2, i10) && zzop.zzf(obj, j10) == zzop.zzf(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzH(obj, obj2, i10) && zzop.zzd(obj, j10) == zzop.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzH(obj, obj2, i10) && zzop.zzf(obj, j10) == zzop.zzf(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzH(obj, obj2, i10) && zzop.zzd(obj, j10) == zzop.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzH(obj, obj2, i10) && zzop.zzh(obj, j10) == zzop.zzh(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzH(obj, obj2, i10) && zznz.zzB(zzop.zzn(obj, j10), zzop.zzn(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzH(obj, obj2, i10) && zznz.zzB(zzop.zzn(obj, j10), zzop.zzn(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzH(obj, obj2, i10) && zznz.zzB(zzop.zzn(obj, j10), zzop.zzn(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzH(obj, obj2, i10) && zzop.zzd(obj, j10) == zzop.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzH(obj, obj2, i10) && zzop.zzd(obj, j10) == zzop.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzH(obj, obj2, i10) && zzop.zzd(obj, j10) == zzop.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzH(obj, obj2, i10) && zzop.zzf(obj, j10) == zzop.zzf(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzH(obj, obj2, i10) && zzop.zzd(obj, j10) == zzop.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzH(obj, obj2, i10) && zzop.zzf(obj, j10) == zzop.zzf(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzH(obj, obj2, i10) && zznz.zzB(zzop.zzn(obj, j10), zzop.zzn(obj2, j10))) {
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
                    zzB = zznz.zzB(zzop.zzn(obj, j10), zzop.zzn(obj2, j10));
                    break;
                case 50:
                    zzB = zznz.zzB(zzop.zzn(obj, j10), zzop.zzn(obj2, j10));
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
                    long zzy = zzy(i10) & 1048575;
                    if (zzop.zzd(obj, zzy) == zzop.zzd(obj2, zzy) && zznz.zzB(zzop.zzn(obj, j10), zzop.zzn(obj2, j10))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzB) {
                return false;
            }
        }
        if (!((zzmf) obj).zzc.equals(((zzmf) obj2).zzc)) {
            return false;
        }
        if (this.zzh) {
            return ((zzmc) obj).zzb.equals(((zzmc) obj2).zzb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final int zzc(Object obj) {
        int i10;
        long doubleToLongBits;
        int floatToIntBits;
        int i11;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i12 < iArr.length) {
                int zzx = zzx(i12);
                int i14 = 1048575 & zzx;
                int zzz = zzz(zzx);
                int i15 = iArr[i12];
                long j10 = i14;
                int i16 = 37;
                switch (zzz) {
                    case 0:
                        i10 = i13 * 53;
                        doubleToLongBits = Double.doubleToLongBits(zzop.zzl(obj, j10));
                        byte[] bArr = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 1:
                        i10 = i13 * 53;
                        floatToIntBits = Float.floatToIntBits(zzop.zzj(obj, j10));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 2:
                        i10 = i13 * 53;
                        doubleToLongBits = zzop.zzf(obj, j10);
                        byte[] bArr2 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 3:
                        i10 = i13 * 53;
                        doubleToLongBits = zzop.zzf(obj, j10);
                        byte[] bArr3 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 4:
                        i10 = i13 * 53;
                        floatToIntBits = zzop.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 5:
                        i10 = i13 * 53;
                        doubleToLongBits = zzop.zzf(obj, j10);
                        byte[] bArr4 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 6:
                        i10 = i13 * 53;
                        floatToIntBits = zzop.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 7:
                        i10 = i13 * 53;
                        floatToIntBits = zzmp.zzb(zzop.zzh(obj, j10));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 8:
                        i10 = i13 * 53;
                        floatToIntBits = ((String) zzop.zzn(obj, j10)).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 9:
                        i11 = i13 * 53;
                        Object zzn = zzop.zzn(obj, j10);
                        if (zzn != null) {
                            i16 = zzn.hashCode();
                        }
                        i13 = i11 + i16;
                        break;
                    case 10:
                        i10 = i13 * 53;
                        floatToIntBits = zzop.zzn(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 11:
                        i10 = i13 * 53;
                        floatToIntBits = zzop.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 12:
                        i10 = i13 * 53;
                        floatToIntBits = zzop.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 13:
                        i10 = i13 * 53;
                        floatToIntBits = zzop.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 14:
                        i10 = i13 * 53;
                        doubleToLongBits = zzop.zzf(obj, j10);
                        byte[] bArr5 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 15:
                        i10 = i13 * 53;
                        floatToIntBits = zzop.zzd(obj, j10);
                        i13 = i10 + floatToIntBits;
                        break;
                    case 16:
                        i10 = i13 * 53;
                        doubleToLongBits = zzop.zzf(obj, j10);
                        byte[] bArr6 = zzmp.zzb;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i13 = i10 + floatToIntBits;
                        break;
                    case 17:
                        i11 = i13 * 53;
                        Object zzn2 = zzop.zzn(obj, j10);
                        if (zzn2 != null) {
                            i16 = zzn2.hashCode();
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
                        floatToIntBits = zzop.zzn(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 50:
                        i10 = i13 * 53;
                        floatToIntBits = zzop.zzn(obj, j10).hashCode();
                        i13 = i10 + floatToIntBits;
                        break;
                    case 51:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = Double.doubleToLongBits(zzC(obj, j10));
                            byte[] bArr7 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 52:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = Float.floatToIntBits(zzD(obj, j10));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 53:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzF(obj, j10);
                            byte[] bArr8 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 54:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzF(obj, j10);
                            byte[] bArr9 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 55:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzE(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 56:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzF(obj, j10);
                            byte[] bArr10 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 57:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzE(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 58:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzmp.zzb(zzG(obj, j10));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 59:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = ((String) zzop.zzn(obj, j10)).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 60:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzop.zzn(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 61:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzop.zzn(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 62:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzE(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 63:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzE(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 64:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzE(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 65:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzF(obj, j10);
                            byte[] bArr11 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 66:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzE(obj, j10);
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 67:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            doubleToLongBits = zzF(obj, j10);
                            byte[] bArr12 = zzmp.zzb;
                            floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                    case 68:
                        if (!zzL(obj, i15, i12)) {
                            break;
                        } else {
                            i10 = i13 * 53;
                            floatToIntBits = zzop.zzn(obj, j10).hashCode();
                            i13 = i10 + floatToIntBits;
                            break;
                        }
                }
                i12 += 3;
            } else {
                int hashCode = (i13 * 53) + ((zzmf) obj).zzc.hashCode();
                if (this.zzh) {
                    return (hashCode * 53) + ((zzmc) obj).zzb.zza.hashCode();
                }
                return hashCode;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzd(Object obj, Object obj2) {
        zzB(obj);
        obj2.getClass();
        int i10 = 0;
        while (true) {
            int[] iArr = this.zzc;
            if (i10 < iArr.length) {
                int zzx = zzx(i10);
                int i11 = 1048575 & zzx;
                int zzz = zzz(zzx);
                int i12 = iArr[i10];
                long j10 = i11;
                switch (zzz) {
                    case 0:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zzm(obj, j10, zzop.zzl(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 1:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zzk(obj, j10, zzop.zzj(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 2:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zzg(obj, j10, zzop.zzf(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 3:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zzg(obj, j10, zzop.zzf(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 4:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zze(obj, j10, zzop.zzd(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 5:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zzg(obj, j10, zzop.zzf(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 6:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zze(obj, j10, zzop.zzd(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 7:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zzi(obj, j10, zzop.zzh(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 8:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zzo(obj, j10, zzop.zzn(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 9:
                        zzn(obj, obj2, i10);
                        break;
                    case 10:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zzo(obj, j10, zzop.zzn(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 11:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zze(obj, j10, zzop.zzd(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 12:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zze(obj, j10, zzop.zzd(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 13:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zze(obj, j10, zzop.zzd(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 14:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zzg(obj, j10, zzop.zzf(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 15:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zze(obj, j10, zzop.zzd(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 16:
                        if (!zzJ(obj2, i10)) {
                            break;
                        } else {
                            zzop.zzg(obj, j10, zzop.zzf(obj2, j10));
                            zzK(obj, i10);
                            break;
                        }
                    case 17:
                        zzn(obj, obj2, i10);
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
                        zzmo zzmoVar = (zzmo) zzop.zzn(obj, j10);
                        zzmo zzmoVar2 = (zzmo) zzop.zzn(obj2, j10);
                        int size = zzmoVar.size();
                        int size2 = zzmoVar2.size();
                        if (size > 0 && size2 > 0) {
                            if (!zzmoVar.zza()) {
                                zzmoVar = zzmoVar.zzg(size2 + size);
                            }
                            zzmoVar.addAll(zzmoVar2);
                        }
                        if (size > 0) {
                            zzmoVar2 = zzmoVar;
                        }
                        zzop.zzo(obj, j10, zzmoVar2);
                        break;
                    case 50:
                        int i13 = zznz.zza;
                        zzop.zzo(obj, j10, zznh.zza(zzop.zzn(obj, j10), zzop.zzn(obj2, j10)));
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
                        if (!zzL(obj2, i12, i10)) {
                            break;
                        } else {
                            zzop.zzo(obj, j10, zzop.zzn(obj2, j10));
                            zzM(obj, i12, i10);
                            break;
                        }
                    case 60:
                        zzo(obj, obj2, i10);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (!zzL(obj2, i12, i10)) {
                            break;
                        } else {
                            zzop.zzo(obj, j10, zzop.zzn(obj2, j10));
                            zzM(obj, i12, i10);
                            break;
                        }
                    case 68:
                        zzo(obj, obj2, i10);
                        break;
                }
                i10 += 3;
            } else {
                zznz.zzD(this.zzl, obj, obj2);
                if (this.zzh) {
                    zznz.zzC(this.zzm, obj, obj2);
                    return;
                }
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v115, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v118, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v137 */
    /* JADX WARN: Type inference failed for: r0v185, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v260, types: [int] */
    /* JADX WARN: Type inference failed for: r1v78 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52, types: [int] */
    /* JADX WARN: Type inference failed for: r2v81 */
    /* JADX WARN: Type inference failed for: r2v83 */
    /* JADX WARN: Type inference failed for: r2v84, types: [int] */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28, types: [int] */
    /* JADX WARN: Type inference failed for: r3v30 */
    /* JADX WARN: Type inference failed for: r3v31, types: [int] */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v47, types: [int] */
    /* JADX WARN: Type inference failed for: r3v55 */
    /* JADX WARN: Type inference failed for: r4v29 */
    /* JADX WARN: Type inference failed for: r4v30, types: [int] */
    /* JADX WARN: Type inference failed for: r4v34 */
    /* JADX WARN: Type inference failed for: r4v35, types: [int] */
    /* JADX WARN: Type inference failed for: r4v37, types: [int] */
    /* JADX WARN: Type inference failed for: r4v38 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [int] */
    @Override // com.google.android.gms.internal.measurement.zznx
    public final int zze(Object obj) {
        int i10;
        boolean z10;
        int i11;
        int zzz;
        int zzz2;
        int zzz3;
        int zzA;
        int zzz4;
        int zzz5;
        int zzc;
        int zzz6;
        int zzo;
        int size;
        int zzz7;
        int zzz8;
        int zzz9;
        int i12;
        int zzx;
        int zzz10;
        int zzz11;
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
                int zzx2 = zzx(i15);
                int zzz12 = zzz(zzx2);
                int i18 = iArr[i15];
                int i19 = iArr[i15 + 2];
                int i20 = i19 & i14;
                if (zzz12 <= 17) {
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
                int i21 = zzx2 & i14;
                if (zzz12 >= zzlx.zzJ.zza()) {
                    zzlx.zzW.zza();
                }
                long j10 = i21;
                switch (zzz12) {
                    case 0:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzz = zzlm.zzz(i18 << 3);
                            i12 = zzz + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzz2 = zzlm.zzz(i18 << 3);
                            i12 = zzz2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            long j11 = unsafe.getLong(obj, j10);
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzA(j11);
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            long j12 = unsafe.getLong(obj, j10);
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzA(j12);
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzA(unsafe.getInt(obj, j10));
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzz = zzlm.zzz(i18 << 3);
                            i12 = zzz + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzz2 = zzlm.zzz(i18 << 3);
                            i12 = zzz2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzz4 = zzlm.zzz(i18 << 3);
                            i12 = zzz4 + 1;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            break;
                        } else {
                            int i22 = i18 << 3;
                            Object object = unsafe.getObject(obj, j10);
                            if (object instanceof zzlh) {
                                zzz5 = zzlm.zzz(i22);
                                zzc = ((zzlh) object).zzc();
                                zzz6 = zzlm.zzz(zzc);
                                i12 = zzz5 + zzz6 + zzc;
                                i16 += i12;
                                break;
                            } else {
                                zzz3 = zzlm.zzz(i22);
                                zzA = zzlm.zzB((String) object);
                                i12 = zzz3 + zzA;
                                i16 += i12;
                            }
                        }
                    case 9:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            i12 = zznz.zzz(i18, unsafe.getObject(obj, j10), zzp(i15));
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzz5 = zzlm.zzz(i18 << 3);
                            zzc = ((zzlh) unsafe.getObject(obj, j10)).zzc();
                            zzz6 = zzlm.zzz(zzc);
                            i12 = zzz5 + zzz6 + zzc;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            int i23 = unsafe.getInt(obj, j10);
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzz(i23);
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzA(unsafe.getInt(obj, j10));
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzz2 = zzlm.zzz(i18 << 3);
                            i12 = zzz2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            zzz = zzlm.zzz(i18 << 3);
                            i12 = zzz + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            int i24 = unsafe.getInt(obj, j10);
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzz((i24 >> 31) ^ (i24 + i24));
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            long j13 = unsafe.getLong(obj, j10);
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzA((j13 >> 63) ^ (j13 + j13));
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzI(obj, i15, i10, z10 ? 1 : 0, i11)) {
                            i12 = zzlm.zzG(i18, (zznm) unsafe.getObject(obj, j10), zzp(i15));
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i12 = zznz.zzy(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 19:
                        i12 = zznz.zzw(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 20:
                        List list = (List) unsafe.getObject(obj, j10);
                        int i25 = zznz.zza;
                        if (list.size() != 0) {
                            zzo = zznz.zzo(list) + (list.size() * zzlm.zzz(i18 << 3));
                            i16 += zzo;
                            break;
                        }
                        zzo = z11;
                        i16 += zzo;
                    case 21:
                        List list2 = (List) unsafe.getObject(obj, j10);
                        int i26 = zznz.zza;
                        size = list2.size();
                        if (size != 0) {
                            zzz3 = zznz.zzp(list2);
                            zzz7 = zzlm.zzz(i18 << 3);
                            zzA = size * zzz7;
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 22:
                        List list3 = (List) unsafe.getObject(obj, j10);
                        int i27 = zznz.zza;
                        size = list3.size();
                        if (size != 0) {
                            zzz3 = zznz.zzs(list3);
                            zzz7 = zzlm.zzz(i18 << 3);
                            zzA = size * zzz7;
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 23:
                        i12 = zznz.zzy(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 24:
                        i12 = zznz.zzw(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 25:
                        int i28 = zznz.zza;
                        int size2 = ((List) unsafe.getObject(obj, j10)).size();
                        if (size2 != 0) {
                            i12 = size2 * (zzlm.zzz(i18 << 3) + 1);
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 26:
                        ?? r02 = (List) unsafe.getObject(obj, j10);
                        int i29 = zznz.zza;
                        int size3 = r02.size();
                        if (size3 != 0) {
                            zzo = zzlm.zzz(i18 << 3) * size3;
                            if (r02 instanceof zzmx) {
                                zzmx zzmxVar = (zzmx) r02;
                                for (int i30 = z11; i30 < size3; i30++) {
                                    Object zzc2 = zzmxVar.zzc();
                                    if (zzc2 instanceof zzlh) {
                                        int zzc3 = ((zzlh) zzc2).zzc();
                                        zzo += zzlm.zzz(zzc3) + zzc3;
                                    } else {
                                        zzo += zzlm.zzB((String) zzc2);
                                    }
                                }
                            } else {
                                for (int i31 = z11; i31 < size3; i31++) {
                                    Object obj2 = r02.get(i31);
                                    if (obj2 instanceof zzlh) {
                                        int zzc4 = ((zzlh) obj2).zzc();
                                        zzo += zzlm.zzz(zzc4) + zzc4;
                                    } else {
                                        zzo += zzlm.zzB((String) obj2);
                                    }
                                }
                            }
                            i16 += zzo;
                            break;
                        }
                        zzo = z11;
                        i16 += zzo;
                    case 27:
                        ?? r03 = (List) unsafe.getObject(obj, j10);
                        zznx zzp = zzp(i15);
                        int i32 = zznz.zza;
                        int size4 = r03.size();
                        if (size4 == 0) {
                            zzz8 = z11;
                        } else {
                            zzz8 = zzlm.zzz(i18 << 3) * size4;
                            for (int i33 = z11; i33 < size4; i33++) {
                                Object obj3 = r03.get(i33);
                                if (obj3 instanceof zzmw) {
                                    int zzb2 = ((zzmw) obj3).zzb();
                                    zzz8 += zzlm.zzz(zzb2) + zzb2;
                                } else {
                                    zzz8 += zzlm.zzD((zznm) obj3, zzp);
                                }
                            }
                        }
                        i16 += zzz8;
                        break;
                    case 28:
                        ?? r04 = (List) unsafe.getObject(obj, j10);
                        int i34 = zznz.zza;
                        int size5 = r04.size();
                        if (size5 == 0) {
                            zzz9 = z11;
                        } else {
                            zzz9 = size5 * zzlm.zzz(i18 << 3);
                            for (int i35 = z11; i35 < r04.size(); i35++) {
                                int zzc5 = ((zzlh) r04.get(i35)).zzc();
                                zzz9 += zzlm.zzz(zzc5) + zzc5;
                            }
                        }
                        i16 += zzz9;
                        break;
                    case 29:
                        List list4 = (List) unsafe.getObject(obj, j10);
                        int i36 = zznz.zza;
                        size = list4.size();
                        if (size != 0) {
                            zzz3 = zznz.zzt(list4);
                            zzz7 = zzlm.zzz(i18 << 3);
                            zzA = size * zzz7;
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 30:
                        List list5 = (List) unsafe.getObject(obj, j10);
                        int i37 = zznz.zza;
                        size = list5.size();
                        if (size != 0) {
                            zzz3 = zznz.zzr(list5);
                            zzz7 = zzlm.zzz(i18 << 3);
                            zzA = size * zzz7;
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 31:
                        i12 = zznz.zzw(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 32:
                        i12 = zznz.zzy(i18, (List) unsafe.getObject(obj, j10), z11);
                        i16 += i12;
                        break;
                    case 33:
                        List list6 = (List) unsafe.getObject(obj, j10);
                        int i38 = zznz.zza;
                        size = list6.size();
                        if (size != 0) {
                            zzz3 = zznz.zzu(list6);
                            zzz7 = zzlm.zzz(i18 << 3);
                            zzA = size * zzz7;
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 34:
                        List list7 = (List) unsafe.getObject(obj, j10);
                        int i39 = zznz.zza;
                        size = list7.size();
                        if (size != 0) {
                            zzz3 = zznz.zzq(list7);
                            zzz7 = zzlm.zzz(i18 << 3);
                            zzA = size * zzz7;
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        }
                        i12 = z11;
                        i16 += i12;
                    case 35:
                        zzx = zznz.zzx((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        zzx = zznz.zzv((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        zzx = zznz.zzo((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        zzx = zznz.zzp((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        zzx = zznz.zzs((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        zzx = zznz.zzx((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        zzx = zznz.zzv((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        int i40 = zznz.zza;
                        zzx = ((List) unsafe.getObject(obj, j10)).size();
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        zzx = zznz.zzt((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        zzx = zznz.zzr((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        zzx = zznz.zzv((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        zzx = zznz.zzx((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        zzx = zznz.zzu((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        zzx = zznz.zzq((List) unsafe.getObject(obj, j10));
                        if (zzx > 0) {
                            zzz10 = zzlm.zzz(i18 << 3);
                            zzz11 = zzlm.zzz(zzx);
                            zzz9 = zzz10 + zzz11 + zzx;
                            i16 += zzz9;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        ?? r05 = (List) unsafe.getObject(obj, j10);
                        zznx zzp2 = zzp(i15);
                        int i41 = zznz.zza;
                        int size6 = r05.size();
                        if (size6 == 0) {
                            i13 = z11;
                        } else {
                            boolean z13 = z11;
                            i13 = z13;
                            for (int i42 = z13; i42 < size6; i42++) {
                                i13 += zzlm.zzG(i18, (zznm) r05.get(i42), zzp2);
                            }
                        }
                        i16 += i13;
                        break;
                    case 50:
                        zzng zzngVar = (zzng) unsafe.getObject(obj, j10);
                        zznf zznfVar = (zznf) zzq(i15);
                        if (!zzngVar.isEmpty()) {
                            zzo = z11;
                            for (Map.Entry entry : zzngVar.entrySet()) {
                                zzo += zznfVar.zzd(i18, entry.getKey(), entry.getValue());
                            }
                            i16 += zzo;
                            break;
                        }
                        zzo = z11;
                        i16 += zzo;
                    case 51:
                        if (zzL(obj, i18, i15)) {
                            zzz = zzlm.zzz(i18 << 3);
                            i12 = zzz + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzL(obj, i18, i15)) {
                            zzz2 = zzlm.zzz(i18 << 3);
                            i12 = zzz2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzL(obj, i18, i15)) {
                            long zzF = zzF(obj, j10);
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzA(zzF);
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzL(obj, i18, i15)) {
                            long zzF2 = zzF(obj, j10);
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzA(zzF2);
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzL(obj, i18, i15)) {
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzA(zzE(obj, j10));
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzL(obj, i18, i15)) {
                            zzz = zzlm.zzz(i18 << 3);
                            i12 = zzz + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzL(obj, i18, i15)) {
                            zzz2 = zzlm.zzz(i18 << 3);
                            i12 = zzz2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzL(obj, i18, i15)) {
                            zzz4 = zzlm.zzz(i18 << 3);
                            i12 = zzz4 + 1;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (!zzL(obj, i18, i15)) {
                            break;
                        } else {
                            int i43 = i18 << 3;
                            Object object2 = unsafe.getObject(obj, j10);
                            if (object2 instanceof zzlh) {
                                zzz5 = zzlm.zzz(i43);
                                zzc = ((zzlh) object2).zzc();
                                zzz6 = zzlm.zzz(zzc);
                                i12 = zzz5 + zzz6 + zzc;
                                i16 += i12;
                                break;
                            } else {
                                zzz3 = zzlm.zzz(i43);
                                zzA = zzlm.zzB((String) object2);
                                i12 = zzz3 + zzA;
                                i16 += i12;
                            }
                        }
                    case 60:
                        if (zzL(obj, i18, i15)) {
                            i12 = zznz.zzz(i18, unsafe.getObject(obj, j10), zzp(i15));
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzL(obj, i18, i15)) {
                            zzz5 = zzlm.zzz(i18 << 3);
                            zzc = ((zzlh) unsafe.getObject(obj, j10)).zzc();
                            zzz6 = zzlm.zzz(zzc);
                            i12 = zzz5 + zzz6 + zzc;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzL(obj, i18, i15)) {
                            int zzE = zzE(obj, j10);
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzz(zzE);
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzL(obj, i18, i15)) {
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzA(zzE(obj, j10));
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzL(obj, i18, i15)) {
                            zzz2 = zzlm.zzz(i18 << 3);
                            i12 = zzz2 + 4;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzL(obj, i18, i15)) {
                            zzz = zzlm.zzz(i18 << 3);
                            i12 = zzz + 8;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzL(obj, i18, i15)) {
                            int zzE2 = zzE(obj, j10);
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzz((zzE2 >> 31) ^ (zzE2 + zzE2));
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzL(obj, i18, i15)) {
                            long zzF3 = zzF(obj, j10);
                            zzz3 = zzlm.zzz(i18 << 3);
                            zzA = zzlm.zzA((zzF3 >> 63) ^ (zzF3 + zzF3));
                            i12 = zzz3 + zzA;
                            i16 += i12;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzL(obj, i18, i15)) {
                            i12 = zzlm.zzG(i18, (zznm) unsafe.getObject(obj, j10), zzp(i15));
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
                int zzi = i16 + ((zzmf) obj).zzc.zzi();
                if (this.zzh) {
                    zzoe zzoeVar = ((zzmc) obj).zzb.zza;
                    int zzc6 = zzoeVar.zzc();
                    int i44 = 0;
                    for (int i45 = 0; i45 < zzc6; i45++) {
                        Map.Entry zzd = zzoeVar.zzd(i45);
                        i44 += zzlw.zzj((zzlv) ((zzob) zzd).zza(), zzd.getValue());
                    }
                    for (Map.Entry entry2 : zzoeVar.zze()) {
                        i44 += zzlw.zzj((zzlv) entry2.getKey(), entry2.getValue());
                    }
                    return zzi + i44;
                }
                return zzi;
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x05e6  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x05ef  */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r9v20 */
    @Override // com.google.android.gms.internal.measurement.zznx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzf(java.lang.Object r20, com.google.android.gms.internal.measurement.zzov r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1668
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zznp.zzf(java.lang.Object, com.google.android.gms.internal.measurement.zzov):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x0b2e, code lost:
        throw new com.google.android.gms.internal.measurement.zzmr("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x0dc2, code lost:
        r4 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:562:0x0e29, code lost:
        if (r3 == 1048575) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:563:0x0e2b, code lost:
        r0.putInt(r8, r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x0e2f, code lost:
        r0 = r14.zzj;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0e35, code lost:
        if (r0 >= r14.zzk) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:567:0x0e37, code lost:
        r4 = r14.zzi;
        r5 = r14.zzl;
        r6 = r14.zzc;
        r4 = r4[r0];
        r6 = r6[r4];
        r7 = com.google.android.gms.internal.measurement.zzop.zzn(r8, r14.zzx(r4) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0e4e, code lost:
        if (r7 == null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:569:0x0e50, code lost:
        r10 = r14.zzr(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x0e54, code lost:
        if (r10 == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:571:0x0e56, code lost:
        r4 = ((com.google.android.gms.internal.measurement.zznf) r14.zzq(r4)).zze();
        r7 = ((com.google.android.gms.internal.measurement.zzng) r7).entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:573:0x0e6e, code lost:
        if (r7.hasNext() == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:574:0x0e70, code lost:
        r12 = (java.util.Map.Entry) r7.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:575:0x0e84, code lost:
        if (r10.zza(((java.lang.Integer) r12.getValue()).intValue()) != false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x0e86, code lost:
        if (r3 != 0) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:577:0x0e88, code lost:
        r3 = r5.zza(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:0x0e8c, code lost:
        r13 = com.google.android.gms.internal.measurement.zznf.zzc(r4, r12.getKey(), r12.getValue());
        r15 = com.google.android.gms.internal.measurement.zzlh.zzb;
        r15 = new byte[r13];
        r16 = com.google.android.gms.internal.measurement.zzlm.zzb;
        r16 = r5;
        r9 = new com.google.android.gms.internal.measurement.zzlk(r15, 0, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:579:0x0ea6, code lost:
        com.google.android.gms.internal.measurement.zznf.zzb(r9, r4, r12.getKey(), r12.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:580:0x0eb1, code lost:
        r3.zzk((r6 << 3) | 2, com.google.android.gms.internal.measurement.zzle.zza(r9, r15));
        r7.remove();
        r5 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:581:0x0ecb, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x0ed1, code lost:
        throw new java.lang.RuntimeException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x0ed2, code lost:
        r0 = r0 + 1;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:585:0x0edc, code lost:
        if (r3 == null) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x0ede, code lost:
        ((com.google.android.gms.internal.measurement.zzmf) r8).zzc = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:587:0x0ee3, code lost:
        if (r1 != 0) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:589:0x0ee7, code lost:
        if (r2 != r40) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:592:0x0ef1, code lost:
        throw new com.google.android.gms.internal.measurement.zzmr(r28);
     */
    /* JADX WARN: Code restructure failed: missing block: B:593:0x0ef2, code lost:
        r3 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:594:0x0ef6, code lost:
        if (r2 > r40) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:595:0x0ef8, code lost:
        if (r11 != r1) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:596:0x0efa, code lost:
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:598:0x0f00, code lost:
        throw new com.google.android.gms.internal.measurement.zzmr(r3);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:214:0x05b5  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0660  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x06b8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:543:0x0d9e  */
    /* JADX WARN: Removed duplicated region for block: B:545:0x0db8  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0dcd  */
    /* JADX WARN: Removed duplicated region for block: B:649:0x005d A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v73, types: [int] */
    /* JADX WARN: Type inference failed for: r5v75, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:212:0x05b2 -> B:213:0x05b3). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:245:0x065d -> B:246:0x065e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:266:0x06b4 -> B:267:0x06b6). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzh(java.lang.Object r37, byte[] r38, int r39, int r40, int r41, com.google.android.gms.internal.measurement.zzkw r42) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3986
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zznp.zzh(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzkw):int");
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzi(Object obj, byte[] bArr, int i10, int i11, zzkw zzkwVar) throws IOException {
        zzh(obj, bArr, i10, i11, 0, zzkwVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznx
    public final void zzj(Object obj) {
        if (zzA(obj)) {
            if (obj instanceof zzmf) {
                zzmf zzmfVar = (zzmf) obj;
                zzmfVar.zzcm(Integer.MAX_VALUE);
                zzmfVar.zza = 0;
                zzmfVar.zzcg();
            }
            int[] iArr = this.zzc;
            for (int i10 = 0; i10 < iArr.length; i10 += 3) {
                int zzx = zzx(i10);
                int i11 = 1048575 & zzx;
                int zzz = zzz(zzx);
                long j10 = i11;
                if (zzz != 9) {
                    if (zzz != 60 && zzz != 68) {
                        switch (zzz) {
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
                                ((zzmo) zzop.zzn(obj, j10)).zzb();
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(obj, j10);
                                if (object != null) {
                                    ((zzng) object).zzd();
                                    unsafe.putObject(obj, j10, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzL(obj, iArr[i10], i10)) {
                        zzp(i10).zzj(zzb.getObject(obj, j10));
                    }
                }
                if (zzJ(obj, i10)) {
                    zzp(i10).zzj(zzb.getObject(obj, j10));
                }
            }
            this.zzl.zzb(obj);
            if (this.zzh) {
                this.zzm.zza(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznx
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
            int zzx = zzx(i15);
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
            if ((268435456 & zzx) != 0 && !zzI(obj, i15, i10, i11, i19)) {
                return false;
            }
            int zzz = zzz(zzx);
            if (zzz != 9 && zzz != 17) {
                if (zzz != 27) {
                    if (zzz != 60 && zzz != 68) {
                        if (zzz != 49) {
                            if (zzz != 50) {
                                continue;
                            } else {
                                zzng zzngVar = (zzng) zzop.zzn(obj, zzx & 1048575);
                                if (!zzngVar.isEmpty() && ((zznf) zzq(i15)).zze().zzc.zza() == zzou.MESSAGE) {
                                    zznx zznxVar = null;
                                    for (Object obj2 : zzngVar.values()) {
                                        if (zznxVar == null) {
                                            zznxVar = zznu.zza().zzb(obj2.getClass());
                                        }
                                        if (!zznxVar.zzk(obj2)) {
                                            return false;
                                        }
                                    }
                                    continue;
                                }
                            }
                        }
                    } else if (zzL(obj, i16, i15) && !zzw(obj, zzx, zzp(i15))) {
                        return false;
                    }
                }
                List list = (List) zzop.zzn(obj, zzx & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zznx zzp = zzp(i15);
                    for (int i20 = 0; i20 < list.size(); i20++) {
                        if (!zzp.zzk(list.get(i20))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zzI(obj, i15, i10, i11, i19) && !zzw(obj, zzx, zzp(i15))) {
                return false;
            }
            i13++;
            i14 = i10;
            i12 = i11;
        }
        if (this.zzh && !((zzmc) obj).zzb.zze()) {
            return false;
        }
        return true;
    }
}
