package com.google.android.gms.internal.auth;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.10 */
/* loaded from: classes4.dex */
public final class zzga<T> implements zzgi<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzhj.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzfx zzg;
    private final int[] zzh;
    private final int zzi;
    private final int zzj;
    private final zzfl zzk;
    private final zzgz zzl;
    private final zzem zzm;
    private final zzgc zzn;
    private final zzfs zzo;

    private zzga(int[] iArr, Object[] objArr, int i10, int i11, zzfx zzfxVar, int i12, boolean z10, int[] iArr2, int i13, int i14, zzgc zzgcVar, zzfl zzflVar, zzgz zzgzVar, zzem zzemVar, zzfs zzfsVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i10;
        this.zzf = i11;
        this.zzh = iArr2;
        this.zzi = i13;
        this.zzj = i14;
        this.zzn = zzgcVar;
        this.zzk = zzflVar;
        this.zzl = zzgzVar;
        this.zzm = zzemVar;
        this.zzg = zzfxVar;
        this.zzo = zzfsVar;
    }

    private final void zzA(Object obj, int i10, int i11) {
        zzhj.zzn(obj, zzl(i11) & 1048575, i10);
    }

    private final void zzB(Object obj, int i10, Object obj2) {
        zzb.putObject(obj, zzo(i10) & 1048575, obj2);
        zzz(obj, i10);
    }

    private final void zzC(Object obj, int i10, int i11, Object obj2) {
        zzb.putObject(obj, zzo(i11) & 1048575, obj2);
        zzA(obj, i10, i11);
    }

    private final boolean zzD(Object obj, Object obj2, int i10) {
        if (zzE(obj, i10) == zzE(obj2, i10)) {
            return true;
        }
        return false;
    }

    private final boolean zzE(Object obj, int i10) {
        int zzl = zzl(i10);
        long j10 = zzl & 1048575;
        if (j10 == 1048575) {
            int zzo = zzo(i10);
            long j11 = zzo & 1048575;
            switch (zzn(zzo)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzhj.zza(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 1:
                    if (Float.floatToRawIntBits(zzhj.zzb(obj, j11)) == 0) {
                        return false;
                    }
                    return true;
                case 2:
                    if (zzhj.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 3:
                    if (zzhj.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 4:
                    if (zzhj.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 5:
                    if (zzhj.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 6:
                    if (zzhj.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 7:
                    return zzhj.zzt(obj, j11);
                case 8:
                    Object zzf = zzhj.zzf(obj, j11);
                    if (zzf instanceof String) {
                        if (((String) zzf).isEmpty()) {
                            return false;
                        }
                        return true;
                    } else if (zzf instanceof zzef) {
                        if (zzef.zzb.equals(zzf)) {
                            return false;
                        }
                        return true;
                    } else {
                        throw new IllegalArgumentException();
                    }
                case 9:
                    if (zzhj.zzf(obj, j11) == null) {
                        return false;
                    }
                    return true;
                case 10:
                    if (zzef.zzb.equals(zzhj.zzf(obj, j11))) {
                        return false;
                    }
                    return true;
                case 11:
                    if (zzhj.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 12:
                    if (zzhj.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 13:
                    if (zzhj.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 14:
                    if (zzhj.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 15:
                    if (zzhj.zzc(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 16:
                    if (zzhj.zzd(obj, j11) == 0) {
                        return false;
                    }
                    return true;
                case 17:
                    if (zzhj.zzf(obj, j11) == null) {
                        return false;
                    }
                    return true;
                default:
                    throw new IllegalArgumentException();
            }
        }
        if ((zzhj.zzc(obj, j10) & (1 << (zzl >>> 20))) == 0) {
            return false;
        }
        return true;
    }

    private final boolean zzF(Object obj, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return zzE(obj, i10);
        }
        if ((i12 & i13) != 0) {
            return true;
        }
        return false;
    }

    private static boolean zzG(Object obj, int i10, zzgi zzgiVar) {
        return zzgiVar.zzi(zzhj.zzf(obj, i10 & 1048575));
    }

    private static boolean zzH(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzev) {
            return ((zzev) obj).zzm();
        }
        return true;
    }

    private final boolean zzI(Object obj, int i10, int i11) {
        if (zzhj.zzc(obj, zzl(i11) & 1048575) == i10) {
            return true;
        }
        return false;
    }

    static zzha zzc(Object obj) {
        zzev zzevVar = (zzev) obj;
        zzha zzhaVar = zzevVar.zzc;
        if (zzhaVar == zzha.zza()) {
            zzha zzd = zzha.zzd();
            zzevVar.zzc = zzd;
            return zzd;
        }
        return zzhaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0256  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x026f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.auth.zzga zzj(java.lang.Class r31, com.google.android.gms.internal.auth.zzfu r32, com.google.android.gms.internal.auth.zzgc r33, com.google.android.gms.internal.auth.zzfl r34, com.google.android.gms.internal.auth.zzgz r35, com.google.android.gms.internal.auth.zzem r36, com.google.android.gms.internal.auth.zzfs r37) {
        /*
            Method dump skipped, instructions count: 1010
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzga.zzj(java.lang.Class, com.google.android.gms.internal.auth.zzfu, com.google.android.gms.internal.auth.zzgc, com.google.android.gms.internal.auth.zzfl, com.google.android.gms.internal.auth.zzgz, com.google.android.gms.internal.auth.zzem, com.google.android.gms.internal.auth.zzfs):com.google.android.gms.internal.auth.zzga");
    }

    private static int zzk(Object obj, long j10) {
        return ((Integer) zzhj.zzf(obj, j10)).intValue();
    }

    private final int zzl(int i10) {
        return this.zzc[i10 + 2];
    }

    private final int zzm(int i10, int i11) {
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

    private static int zzn(int i10) {
        return (i10 >>> 20) & 255;
    }

    private final int zzo(int i10) {
        return this.zzc[i10 + 1];
    }

    private static long zzp(Object obj, long j10) {
        return ((Long) zzhj.zzf(obj, j10)).longValue();
    }

    private final zzey zzq(int i10) {
        int i11 = i10 / 3;
        return (zzey) this.zzd[i11 + i11 + 1];
    }

    private final zzgi zzr(int i10) {
        int i11 = i10 / 3;
        int i12 = i11 + i11;
        zzgi zzgiVar = (zzgi) this.zzd[i12];
        if (zzgiVar != null) {
            return zzgiVar;
        }
        zzgi zzb2 = zzgf.zza().zzb((Class) this.zzd[i12 + 1]);
        this.zzd[i12] = zzb2;
        return zzb2;
    }

    private final Object zzs(int i10) {
        int i11 = i10 / 3;
        return this.zzd[i11 + i11];
    }

    private final Object zzt(Object obj, int i10) {
        zzgi zzr = zzr(i10);
        int zzo = zzo(i10) & 1048575;
        if (!zzE(obj, i10)) {
            return zzr.zzd();
        }
        Object object = zzb.getObject(obj, zzo);
        if (zzH(object)) {
            return object;
        }
        Object zzd = zzr.zzd();
        if (object != null) {
            zzr.zzf(zzd, object);
        }
        return zzd;
    }

    private final Object zzu(Object obj, int i10, int i11) {
        zzgi zzr = zzr(i11);
        if (!zzI(obj, i10, i11)) {
            return zzr.zzd();
        }
        Object object = zzb.getObject(obj, zzo(i11) & 1048575);
        if (zzH(object)) {
            return object;
        }
        Object zzd = zzr.zzd();
        if (object != null) {
            zzr.zzf(zzd, object);
        }
        return zzd;
    }

    private static Field zzv(Class cls, String str) {
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

    private static void zzw(Object obj) {
        if (zzH(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
    }

    private final void zzx(Object obj, Object obj2, int i10) {
        if (!zzE(obj2, i10)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzo = zzo(i10) & 1048575;
        Object object = unsafe.getObject(obj2, zzo);
        if (object != null) {
            zzgi zzr = zzr(i10);
            if (!zzE(obj, i10)) {
                if (!zzH(object)) {
                    unsafe.putObject(obj, zzo, object);
                } else {
                    Object zzd = zzr.zzd();
                    zzr.zzf(zzd, object);
                    unsafe.putObject(obj, zzo, zzd);
                }
                zzz(obj, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzo);
            if (!zzH(object2)) {
                Object zzd2 = zzr.zzd();
                zzr.zzf(zzd2, object2);
                unsafe.putObject(obj, zzo, zzd2);
                object2 = zzd2;
            }
            zzr.zzf(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + obj2.toString());
    }

    private final void zzy(Object obj, Object obj2, int i10) {
        int i11 = this.zzc[i10];
        if (!zzI(obj2, i11, i10)) {
            return;
        }
        Unsafe unsafe = zzb;
        long zzo = zzo(i10) & 1048575;
        Object object = unsafe.getObject(obj2, zzo);
        if (object != null) {
            zzgi zzr = zzr(i10);
            if (!zzI(obj, i11, i10)) {
                if (!zzH(object)) {
                    unsafe.putObject(obj, zzo, object);
                } else {
                    Object zzd = zzr.zzd();
                    zzr.zzf(zzd, object);
                    unsafe.putObject(obj, zzo, zzd);
                }
                zzA(obj, i11, i10);
                return;
            }
            Object object2 = unsafe.getObject(obj, zzo);
            if (!zzH(object2)) {
                Object zzd2 = zzr.zzd();
                zzr.zzf(zzd2, object2);
                unsafe.putObject(obj, zzo, zzd2);
                object2 = zzd2;
            }
            zzr.zzf(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + obj2.toString());
    }

    private final void zzz(Object obj, int i10) {
        int zzl = zzl(i10);
        long j10 = 1048575 & zzl;
        if (j10 == 1048575) {
            return;
        }
        zzhj.zzn(obj, j10, (1 << (zzl >>> 20)) | zzhj.zzc(obj, j10));
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final int zza(Object obj) {
        int i10;
        long doubleToLongBits;
        int floatToIntBits;
        int length = this.zzc.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int zzo = zzo(i12);
            int i13 = this.zzc[i12];
            long j10 = 1048575 & zzo;
            int i14 = 37;
            switch (zzn(zzo)) {
                case 0:
                    i10 = i11 * 53;
                    doubleToLongBits = Double.doubleToLongBits(zzhj.zza(obj, j10));
                    byte[] bArr = zzfa.zzd;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 1:
                    i10 = i11 * 53;
                    floatToIntBits = Float.floatToIntBits(zzhj.zzb(obj, j10));
                    i11 = i10 + floatToIntBits;
                    break;
                case 2:
                    i10 = i11 * 53;
                    doubleToLongBits = zzhj.zzd(obj, j10);
                    byte[] bArr2 = zzfa.zzd;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 3:
                    i10 = i11 * 53;
                    doubleToLongBits = zzhj.zzd(obj, j10);
                    byte[] bArr3 = zzfa.zzd;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 4:
                    i10 = i11 * 53;
                    floatToIntBits = zzhj.zzc(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 5:
                    i10 = i11 * 53;
                    doubleToLongBits = zzhj.zzd(obj, j10);
                    byte[] bArr4 = zzfa.zzd;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 6:
                    i10 = i11 * 53;
                    floatToIntBits = zzhj.zzc(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 7:
                    i10 = i11 * 53;
                    floatToIntBits = zzfa.zza(zzhj.zzt(obj, j10));
                    i11 = i10 + floatToIntBits;
                    break;
                case 8:
                    i10 = i11 * 53;
                    floatToIntBits = ((String) zzhj.zzf(obj, j10)).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 9:
                    Object zzf = zzhj.zzf(obj, j10);
                    if (zzf != null) {
                        i14 = zzf.hashCode();
                    }
                    i11 = (i11 * 53) + i14;
                    break;
                case 10:
                    i10 = i11 * 53;
                    floatToIntBits = zzhj.zzf(obj, j10).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 11:
                    i10 = i11 * 53;
                    floatToIntBits = zzhj.zzc(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 12:
                    i10 = i11 * 53;
                    floatToIntBits = zzhj.zzc(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 13:
                    i10 = i11 * 53;
                    floatToIntBits = zzhj.zzc(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 14:
                    i10 = i11 * 53;
                    doubleToLongBits = zzhj.zzd(obj, j10);
                    byte[] bArr5 = zzfa.zzd;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 15:
                    i10 = i11 * 53;
                    floatToIntBits = zzhj.zzc(obj, j10);
                    i11 = i10 + floatToIntBits;
                    break;
                case 16:
                    i10 = i11 * 53;
                    doubleToLongBits = zzhj.zzd(obj, j10);
                    byte[] bArr6 = zzfa.zzd;
                    floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                    i11 = i10 + floatToIntBits;
                    break;
                case 17:
                    Object zzf2 = zzhj.zzf(obj, j10);
                    if (zzf2 != null) {
                        i14 = zzf2.hashCode();
                    }
                    i11 = (i11 * 53) + i14;
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
                    i10 = i11 * 53;
                    floatToIntBits = zzhj.zzf(obj, j10).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 50:
                    i10 = i11 * 53;
                    floatToIntBits = zzhj.zzf(obj, j10).hashCode();
                    i11 = i10 + floatToIntBits;
                    break;
                case 51:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = Double.doubleToLongBits(((Double) zzhj.zzf(obj, j10)).doubleValue());
                        byte[] bArr7 = zzfa.zzd;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = Float.floatToIntBits(((Float) zzhj.zzf(obj, j10)).floatValue());
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = zzp(obj, j10);
                        byte[] bArr8 = zzfa.zzd;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = zzp(obj, j10);
                        byte[] bArr9 = zzfa.zzd;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = zzk(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = zzp(obj, j10);
                        byte[] bArr10 = zzfa.zzd;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = zzk(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = zzfa.zza(((Boolean) zzhj.zzf(obj, j10)).booleanValue());
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = ((String) zzhj.zzf(obj, j10)).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = zzhj.zzf(obj, j10).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = zzhj.zzf(obj, j10).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = zzk(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = zzk(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = zzk(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = zzp(obj, j10);
                        byte[] bArr11 = zzfa.zzd;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = zzk(obj, j10);
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        doubleToLongBits = zzp(obj, j10);
                        byte[] bArr12 = zzfa.zzd;
                        floatToIntBits = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzI(obj, i13, i12)) {
                        i10 = i11 * 53;
                        floatToIntBits = zzhj.zzf(obj, j10).hashCode();
                        i11 = i10 + floatToIntBits;
                        break;
                    } else {
                        break;
                    }
            }
        }
        return (i11 * 53) + this.zzl.zzb(obj).hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x07e3, code lost:
        r39 = r17;
        r12 = r8;
        r10 = true;
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:557:0x0e27, code lost:
        if (r11 == r9) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:558:0x0e29, code lost:
        r37.putInt(r7, r11, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:559:0x0e2f, code lost:
        r2 = r41.zzi;
     */
    /* JADX WARN: Code restructure failed: missing block: B:561:0x0e35, code lost:
        if (r2 >= r41.zzj) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:562:0x0e37, code lost:
        r4 = r41.zzh[r2];
        r5 = r41.zzc[r4];
        r5 = com.google.android.gms.internal.auth.zzhj.zzf(r7, zzo(r4) & r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:563:0x0e49, code lost:
        if (r5 != null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x0e51, code lost:
        if (zzq(r4) != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0e54, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:569:0x0e56, code lost:
        r5 = (com.google.android.gms.internal.auth.zzfr) r5;
        r0 = (com.google.android.gms.internal.auth.zzfq) zzs(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x0e5e, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:571:0x0e5f, code lost:
        if (r12 != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:572:0x0e61, code lost:
        if (r8 != r0) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:575:0x0e68, code lost:
        throw com.google.android.gms.internal.auth.zzfb.zzd();
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x0e69, code lost:
        if (r8 > r0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:577:0x0e6b, code lost:
        if (r3 != r12) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:0x0e6d, code lost:
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:580:0x0e72, code lost:
        throw com.google.android.gms.internal.auth.zzfb.zzd();
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0868  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x08bd  */
    /* JADX WARN: Removed duplicated region for block: B:620:0x0056 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02a1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:305:0x0865 -> B:306:0x0866). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:326:0x08ba -> B:327:0x08bb). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(java.lang.Object r42, byte[] r43, int r44, int r45, int r46, com.google.android.gms.internal.auth.zzdt r47) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzga.zzb(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.auth.zzdt):int");
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final Object zzd() {
        return ((zzev) this.zzg).zzc();
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final void zze(Object obj) {
        if (!zzH(obj)) {
            return;
        }
        if (obj instanceof zzev) {
            zzev zzevVar = (zzev) obj;
            zzevVar.zzl(Integer.MAX_VALUE);
            zzevVar.zza = 0;
            zzevVar.zzj();
        }
        int length = this.zzc.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int zzo = zzo(i10);
            int i11 = 1048575 & zzo;
            int zzn = zzn(zzo);
            long j10 = i11;
            if (zzn != 9) {
                if (zzn != 60 && zzn != 68) {
                    switch (zzn) {
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
                            this.zzk.zza(obj, j10);
                            break;
                        case 50:
                            Unsafe unsafe = zzb;
                            Object object = unsafe.getObject(obj, j10);
                            if (object != null) {
                                ((zzfr) object).zzc();
                                unsafe.putObject(obj, j10, object);
                                break;
                            } else {
                                break;
                            }
                    }
                } else if (zzI(obj, this.zzc[i10], i10)) {
                    zzr(i10).zze(zzb.getObject(obj, j10));
                }
            }
            if (zzE(obj, i10)) {
                zzr(i10).zze(zzb.getObject(obj, j10));
            }
        }
        this.zzl.zze(obj);
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final void zzf(Object obj, Object obj2) {
        zzw(obj);
        obj2.getClass();
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int zzo = zzo(i10);
            int i11 = this.zzc[i10];
            long j10 = 1048575 & zzo;
            switch (zzn(zzo)) {
                case 0:
                    if (zzE(obj2, i10)) {
                        zzhj.zzl(obj, j10, zzhj.zza(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzE(obj2, i10)) {
                        zzhj.zzm(obj, j10, zzhj.zzb(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzE(obj2, i10)) {
                        zzhj.zzo(obj, j10, zzhj.zzd(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzE(obj2, i10)) {
                        zzhj.zzo(obj, j10, zzhj.zzd(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzE(obj2, i10)) {
                        zzhj.zzn(obj, j10, zzhj.zzc(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzE(obj2, i10)) {
                        zzhj.zzo(obj, j10, zzhj.zzd(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzE(obj2, i10)) {
                        zzhj.zzn(obj, j10, zzhj.zzc(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzE(obj2, i10)) {
                        zzhj.zzk(obj, j10, zzhj.zzt(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzE(obj2, i10)) {
                        zzhj.zzp(obj, j10, zzhj.zzf(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzx(obj, obj2, i10);
                    break;
                case 10:
                    if (zzE(obj2, i10)) {
                        zzhj.zzp(obj, j10, zzhj.zzf(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzE(obj2, i10)) {
                        zzhj.zzn(obj, j10, zzhj.zzc(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzE(obj2, i10)) {
                        zzhj.zzn(obj, j10, zzhj.zzc(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzE(obj2, i10)) {
                        zzhj.zzn(obj, j10, zzhj.zzc(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzE(obj2, i10)) {
                        zzhj.zzo(obj, j10, zzhj.zzd(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzE(obj2, i10)) {
                        zzhj.zzn(obj, j10, zzhj.zzc(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzE(obj2, i10)) {
                        zzhj.zzo(obj, j10, zzhj.zzd(obj2, j10));
                        zzz(obj, i10);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzx(obj, obj2, i10);
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
                    this.zzk.zzb(obj, obj2, j10);
                    break;
                case 50:
                    int i12 = zzgk.zza;
                    zzhj.zzp(obj, j10, zzfs.zza(zzhj.zzf(obj, j10), zzhj.zzf(obj2, j10)));
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
                    if (zzI(obj2, i11, i10)) {
                        zzhj.zzp(obj, j10, zzhj.zzf(obj2, j10));
                        zzA(obj, i11, i10);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzy(obj, obj2, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzI(obj2, i11, i10)) {
                        zzhj.zzp(obj, j10, zzhj.zzf(obj2, j10));
                        zzA(obj, i11, i10);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzy(obj, obj2, i10);
                    break;
            }
        }
        zzgk.zzd(this.zzl, obj, obj2);
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final void zzg(Object obj, byte[] bArr, int i10, int i11, zzdt zzdtVar) throws IOException {
        zzb(obj, bArr, i10, i11, 0, zzdtVar);
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final boolean zzh(Object obj, Object obj2) {
        boolean zzf;
        int length = this.zzc.length;
        for (int i10 = 0; i10 < length; i10 += 3) {
            int zzo = zzo(i10);
            long j10 = zzo & 1048575;
            switch (zzn(zzo)) {
                case 0:
                    if (zzD(obj, obj2, i10) && Double.doubleToLongBits(zzhj.zza(obj, j10)) == Double.doubleToLongBits(zzhj.zza(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 1:
                    if (zzD(obj, obj2, i10) && Float.floatToIntBits(zzhj.zzb(obj, j10)) == Float.floatToIntBits(zzhj.zzb(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 2:
                    if (zzD(obj, obj2, i10) && zzhj.zzd(obj, j10) == zzhj.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 3:
                    if (zzD(obj, obj2, i10) && zzhj.zzd(obj, j10) == zzhj.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 4:
                    if (zzD(obj, obj2, i10) && zzhj.zzc(obj, j10) == zzhj.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 5:
                    if (zzD(obj, obj2, i10) && zzhj.zzd(obj, j10) == zzhj.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 6:
                    if (zzD(obj, obj2, i10) && zzhj.zzc(obj, j10) == zzhj.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 7:
                    if (zzD(obj, obj2, i10) && zzhj.zzt(obj, j10) == zzhj.zzt(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 8:
                    if (zzD(obj, obj2, i10) && zzgk.zzf(zzhj.zzf(obj, j10), zzhj.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 9:
                    if (zzD(obj, obj2, i10) && zzgk.zzf(zzhj.zzf(obj, j10), zzhj.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 10:
                    if (zzD(obj, obj2, i10) && zzgk.zzf(zzhj.zzf(obj, j10), zzhj.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                case 11:
                    if (zzD(obj, obj2, i10) && zzhj.zzc(obj, j10) == zzhj.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 12:
                    if (zzD(obj, obj2, i10) && zzhj.zzc(obj, j10) == zzhj.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 13:
                    if (zzD(obj, obj2, i10) && zzhj.zzc(obj, j10) == zzhj.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 14:
                    if (zzD(obj, obj2, i10) && zzhj.zzd(obj, j10) == zzhj.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 15:
                    if (zzD(obj, obj2, i10) && zzhj.zzc(obj, j10) == zzhj.zzc(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 16:
                    if (zzD(obj, obj2, i10) && zzhj.zzd(obj, j10) == zzhj.zzd(obj2, j10)) {
                        continue;
                    }
                    return false;
                case 17:
                    if (zzD(obj, obj2, i10) && zzgk.zzf(zzhj.zzf(obj, j10), zzhj.zzf(obj2, j10))) {
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
                    zzf = zzgk.zzf(zzhj.zzf(obj, j10), zzhj.zzf(obj2, j10));
                    break;
                case 50:
                    zzf = zzgk.zzf(zzhj.zzf(obj, j10), zzhj.zzf(obj2, j10));
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
                    long zzl = zzl(i10) & 1048575;
                    if (zzhj.zzc(obj, zzl) == zzhj.zzc(obj2, zzl) && zzgk.zzf(zzhj.zzf(obj, j10), zzhj.zzf(obj2, j10))) {
                        continue;
                    }
                    return false;
                default:
            }
            if (!zzf) {
                return false;
            }
        }
        if (!this.zzl.zzb(obj).equals(this.zzl.zzb(obj2))) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final boolean zzi(Object obj) {
        int i10;
        int i11;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1048575;
        while (i13 < this.zzi) {
            int i15 = this.zzh[i13];
            int i16 = this.zzc[i15];
            int zzo = zzo(i15);
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
            if ((268435456 & zzo) != 0 && !zzF(obj, i15, i10, i11, i19)) {
                return false;
            }
            int zzn = zzn(zzo);
            if (zzn != 9 && zzn != 17) {
                if (zzn != 27) {
                    if (zzn != 60 && zzn != 68) {
                        if (zzn != 49) {
                            if (zzn == 50 && !((zzfr) zzhj.zzf(obj, zzo & 1048575)).isEmpty()) {
                                zzfq zzfqVar = (zzfq) zzs(i15);
                                throw null;
                            }
                        }
                    } else if (zzI(obj, i16, i15) && !zzG(obj, zzo, zzr(i15))) {
                        return false;
                    }
                }
                List list = (List) zzhj.zzf(obj, zzo & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzgi zzr = zzr(i15);
                    for (int i20 = 0; i20 < list.size(); i20++) {
                        if (!zzr.zzi(list.get(i20))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zzF(obj, i15, i10, i11, i19) && !zzG(obj, zzo, zzr(i15))) {
                return false;
            }
            i13++;
            i14 = i10;
            i12 = i11;
        }
        return true;
    }
}
