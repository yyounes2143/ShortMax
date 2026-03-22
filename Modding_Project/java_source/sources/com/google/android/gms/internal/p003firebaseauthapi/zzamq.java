package com.google.android.gms.internal.p003firebaseauthapi;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzamq  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzamq<T> implements zzanb<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzanz.zzb();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzamm zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final int[] zzk;
    private final int zzl;
    private final int zzm;
    private final zzamu zzn;
    private final zzalw zzo;
    private final zzanu<?, ?> zzp;
    private final zzakw<?> zzq;
    private final zzamf zzr;

    private zzamq(int[] iArr, Object[] objArr, int i10, int i11, zzamm zzammVar, boolean z10, int[] iArr2, int i12, int i13, zzamu zzamuVar, zzalw zzalwVar, zzanu<?, ?> zzanuVar, zzakw<?> zzakwVar, zzamf zzamfVar) {
        boolean z11;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i10;
        this.zzf = i11;
        this.zzi = zzammVar instanceof zzalf;
        if (zzakwVar != null && zzakwVar.zza(zzammVar)) {
            z11 = true;
        } else {
            z11 = false;
        }
        this.zzh = z11;
        this.zzj = false;
        this.zzk = iArr2;
        this.zzl = i12;
        this.zzm = i13;
        this.zzn = zzamuVar;
        this.zzo = zzalwVar;
        this.zzp = zzanuVar;
        this.zzq = zzakwVar;
        this.zzg = zzammVar;
        this.zzr = zzamfVar;
    }

    private static <T> double zza(T t10, long j10) {
        return ((Double) zzanz.zze(t10, j10)).doubleValue();
    }

    private static <T> float zzb(T t10, long j10) {
        return ((Float) zzanz.zze(t10, j10)).floatValue();
    }

    private static <T> int zzc(T t10, long j10) {
        return ((Integer) zzanz.zze(t10, j10)).intValue();
    }

    private static <T> long zzd(T t10, long j10) {
        return ((Long) zzanz.zze(t10, j10)).longValue();
    }

    private final zzanb zze(int i10) {
        int i11 = (i10 / 3) << 1;
        zzanb zzanbVar = (zzanb) this.zzd[i11];
        if (zzanbVar != null) {
            return zzanbVar;
        }
        zzanb<T> zza2 = zzamx.zza().zza((Class) ((Class) this.zzd[i11 + 1]));
        this.zzd[i11] = zza2;
        return zza2;
    }

    private final Object zzf(int i10) {
        return this.zzd[(i10 / 3) << 1];
    }

    private static boolean zzg(int i10) {
        return (i10 & 536870912) != 0;
    }

    private static int zza(byte[] bArr, int i10, int i11, zzaog zzaogVar, Class<?> cls, zzaju zzajuVar) throws IOException {
        switch (zzamp.zza[zzaogVar.ordinal()]) {
            case 1:
                int zzd = zzajr.zzd(bArr, i10, zzajuVar);
                zzajuVar.zzc = Boolean.valueOf(zzajuVar.zzb != 0);
                return zzd;
            case 2:
                return zzajr.zza(bArr, i10, zzajuVar);
            case 3:
                zzajuVar.zzc = Double.valueOf(zzajr.zza(bArr, i10));
                return i10 + 8;
            case 4:
            case 5:
                zzajuVar.zzc = Integer.valueOf(zzajr.zzc(bArr, i10));
                return i10 + 4;
            case 6:
            case 7:
                zzajuVar.zzc = Long.valueOf(zzajr.zzd(bArr, i10));
                return i10 + 8;
            case 8:
                zzajuVar.zzc = Float.valueOf(zzajr.zzb(bArr, i10));
                return i10 + 4;
            case 9:
            case 10:
            case 11:
                int zzc = zzajr.zzc(bArr, i10, zzajuVar);
                zzajuVar.zzc = Integer.valueOf(zzajuVar.zza);
                return zzc;
            case 12:
            case 13:
                int zzd2 = zzajr.zzd(bArr, i10, zzajuVar);
                zzajuVar.zzc = Long.valueOf(zzajuVar.zzb);
                return zzd2;
            case 14:
                return zzajr.zza(zzamx.zza().zza((Class) cls), bArr, i10, i11, zzajuVar);
            case 15:
                int zzc2 = zzajr.zzc(bArr, i10, zzajuVar);
                zzajuVar.zzc = Integer.valueOf(zzakh.zza(zzajuVar.zza));
                return zzc2;
            case 16:
                int zzd3 = zzajr.zzd(bArr, i10, zzajuVar);
                zzajuVar.zzc = Long.valueOf(zzakh.zza(zzajuVar.zzb));
                return zzd3;
            case 17:
                return zzajr.zzb(bArr, i10, zzajuVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private final int zzc(int i10) {
        return this.zzc[i10 + 1];
    }

    private final zzalj zzd(int i10) {
        return (zzalj) this.zzd[((i10 / 3) << 1) + 1];
    }

    private static void zzf(Object obj) {
        if (zzg(obj)) {
            return;
        }
        String valueOf = String.valueOf(obj);
        throw new IllegalArgumentException("Mutating immutable message: " + valueOf);
    }

    private static boolean zzg(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzalf) {
            return ((zzalf) obj).zzw();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final int zzb(T t10) {
        int i10;
        int zza2;
        int length = this.zzc.length;
        int i11 = 0;
        for (int i12 = 0; i12 < length; i12 += 3) {
            int zzc = zzc(i12);
            int i13 = this.zzc[i12];
            long j10 = 1048575 & zzc;
            int i14 = 37;
            switch ((zzc & 267386880) >>> 20) {
                case 0:
                    i10 = i11 * 53;
                    zza2 = zzalh.zza(Double.doubleToLongBits(zzanz.zza(t10, j10)));
                    i11 = i10 + zza2;
                    break;
                case 1:
                    i10 = i11 * 53;
                    zza2 = Float.floatToIntBits(zzanz.zzb(t10, j10));
                    i11 = i10 + zza2;
                    break;
                case 2:
                    i10 = i11 * 53;
                    zza2 = zzalh.zza(zzanz.zzd(t10, j10));
                    i11 = i10 + zza2;
                    break;
                case 3:
                    i10 = i11 * 53;
                    zza2 = zzalh.zza(zzanz.zzd(t10, j10));
                    i11 = i10 + zza2;
                    break;
                case 4:
                    i10 = i11 * 53;
                    zza2 = zzanz.zzc(t10, j10);
                    i11 = i10 + zza2;
                    break;
                case 5:
                    i10 = i11 * 53;
                    zza2 = zzalh.zza(zzanz.zzd(t10, j10));
                    i11 = i10 + zza2;
                    break;
                case 6:
                    i10 = i11 * 53;
                    zza2 = zzanz.zzc(t10, j10);
                    i11 = i10 + zza2;
                    break;
                case 7:
                    i10 = i11 * 53;
                    zza2 = zzalh.zza(zzanz.zzh(t10, j10));
                    i11 = i10 + zza2;
                    break;
                case 8:
                    i10 = i11 * 53;
                    zza2 = ((String) zzanz.zze(t10, j10)).hashCode();
                    i11 = i10 + zza2;
                    break;
                case 9:
                    Object zze = zzanz.zze(t10, j10);
                    if (zze != null) {
                        i14 = zze.hashCode();
                    }
                    i11 = (i11 * 53) + i14;
                    break;
                case 10:
                    i10 = i11 * 53;
                    zza2 = zzanz.zze(t10, j10).hashCode();
                    i11 = i10 + zza2;
                    break;
                case 11:
                    i10 = i11 * 53;
                    zza2 = zzanz.zzc(t10, j10);
                    i11 = i10 + zza2;
                    break;
                case 12:
                    i10 = i11 * 53;
                    zza2 = zzanz.zzc(t10, j10);
                    i11 = i10 + zza2;
                    break;
                case 13:
                    i10 = i11 * 53;
                    zza2 = zzanz.zzc(t10, j10);
                    i11 = i10 + zza2;
                    break;
                case 14:
                    i10 = i11 * 53;
                    zza2 = zzalh.zza(zzanz.zzd(t10, j10));
                    i11 = i10 + zza2;
                    break;
                case 15:
                    i10 = i11 * 53;
                    zza2 = zzanz.zzc(t10, j10);
                    i11 = i10 + zza2;
                    break;
                case 16:
                    i10 = i11 * 53;
                    zza2 = zzalh.zza(zzanz.zzd(t10, j10));
                    i11 = i10 + zza2;
                    break;
                case 17:
                    Object zze2 = zzanz.zze(t10, j10);
                    if (zze2 != null) {
                        i14 = zze2.hashCode();
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
                    zza2 = zzanz.zze(t10, j10).hashCode();
                    i11 = i10 + zza2;
                    break;
                case 50:
                    i10 = i11 * 53;
                    zza2 = zzanz.zze(t10, j10).hashCode();
                    i11 = i10 + zza2;
                    break;
                case 51:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzalh.zza(Double.doubleToLongBits(zza(t10, j10)));
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = Float.floatToIntBits(zzb(t10, j10));
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzalh.zza(zzd(t10, j10));
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzalh.zza(zzd(t10, j10));
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzc(t10, j10);
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzalh.zza(zzd(t10, j10));
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzc(t10, j10);
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzalh.zza(zze(t10, j10));
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = ((String) zzanz.zze(t10, j10)).hashCode();
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzanz.zze(t10, j10).hashCode();
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzanz.zze(t10, j10).hashCode();
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzc(t10, j10);
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzc(t10, j10);
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzc(t10, j10);
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzalh.zza(zzd(t10, j10));
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzc(t10, j10);
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzalh.zza(zzd(t10, j10));
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzc((zzamq<T>) t10, i13, i12)) {
                        i10 = i11 * 53;
                        zza2 = zzanz.zze(t10, j10).hashCode();
                        i11 = i10 + zza2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i11 * 53) + this.zzp.zzd(t10).hashCode();
        return this.zzh ? (hashCode * 53) + this.zzq.zza(t10).hashCode() : hashCode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzanx zzc(Object obj) {
        zzalf zzalfVar = (zzalf) obj;
        zzanx zzanxVar = zzalfVar.zzb;
        if (zzanxVar == zzanx.zzc()) {
            zzanx zzd = zzanx.zzd();
            zzalfVar.zzb = zzd;
            return zzd;
        }
        return zzanxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final void zzd(T t10) {
        if (zzg(t10)) {
            if (t10 instanceof zzalf) {
                zzalf zzalfVar = (zzalf) t10;
                zzalfVar.zzb(Integer.MAX_VALUE);
                zzalfVar.zza = 0;
                zzalfVar.zzu();
            }
            int length = this.zzc.length;
            for (int i10 = 0; i10 < length; i10 += 3) {
                int zzc = zzc(i10);
                long j10 = 1048575 & zzc;
                int i11 = (zzc & 267386880) >>> 20;
                if (i11 != 9) {
                    if (i11 != 60 && i11 != 68) {
                        switch (i11) {
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
                                this.zzo.zzb(t10, j10);
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(t10, j10);
                                if (object != null) {
                                    unsafe.putObject(t10, j10, this.zzr.zzc(object));
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzc((zzamq<T>) t10, this.zzc[i10], i10)) {
                        zze(i10).zzd(zzb.getObject(t10, j10));
                    }
                }
                if (zzc((zzamq<T>) t10, i10)) {
                    zze(i10).zzd(zzb.getObject(t10, j10));
                }
            }
            this.zzp.zzf(t10);
            if (this.zzh) {
                this.zzq.zzc(t10);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.firebase-auth-api.zzanb] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.android.gms.internal.firebase-auth-api.zzanb] */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final boolean zze(T t10) {
        int i10;
        int i11;
        int i12 = 1048575;
        int i13 = 0;
        int i14 = 0;
        while (i14 < this.zzl) {
            int i15 = this.zzk[i14];
            int i16 = this.zzc[i15];
            int zzc = zzc(i15);
            int i17 = this.zzc[i15 + 2];
            int i18 = i17 & 1048575;
            int i19 = 1 << (i17 >>> 20);
            if (i18 != i12) {
                if (i18 != 1048575) {
                    i13 = zzb.getInt(t10, i18);
                }
                i11 = i13;
                i10 = i18;
            } else {
                i10 = i12;
                i11 = i13;
            }
            if ((268435456 & zzc) != 0 && !zza((zzamq<T>) t10, i15, i10, i11, i19)) {
                return false;
            }
            int i20 = (267386880 & zzc) >>> 20;
            if (i20 != 9 && i20 != 17) {
                if (i20 != 27) {
                    if (i20 == 60 || i20 == 68) {
                        if (zzc((zzamq<T>) t10, i16, i15) && !zza((Object) t10, zzc, zze(i15))) {
                            return false;
                        }
                    } else if (i20 != 49) {
                        if (i20 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zzd = this.zzr.zzd(zzanz.zze(t10, zzc & 1048575));
                            if (zzd.isEmpty()) {
                                continue;
                            } else if (this.zzr.zza(zzf(i15)).zzc.zzb() == zzaoj.MESSAGE) {
                                zzanb<T> zzanbVar = 0;
                                for (Object obj : zzd.values()) {
                                    if (zzanbVar == null) {
                                        zzanbVar = zzamx.zza().zza((Class) obj.getClass());
                                    }
                                    boolean zze = zzanbVar.zze(obj);
                                    zzanbVar = zzanbVar;
                                    if (!zze) {
                                        return false;
                                    }
                                }
                                continue;
                            } else {
                                continue;
                            }
                        }
                    }
                }
                List list = (List) zzanz.zze(t10, zzc & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    ?? zze2 = zze(i15);
                    for (int i21 = 0; i21 < list.size(); i21++) {
                        if (!zze2.zze(list.get(i21))) {
                            return false;
                        }
                    }
                    continue;
                }
            } else if (zza((zzamq<T>) t10, i15, i10, i11, i19) && !zza((Object) t10, zzc, zze(i15))) {
                return false;
            }
            i14++;
            i12 = i10;
            i13 = i11;
        }
        return !this.zzh || this.zzq.zza(t10).zzg();
    }

    private final boolean zzc(T t10, T t11, int i10) {
        return zzc((zzamq<T>) t10, i10) == zzc((zzamq<T>) t11, i10);
    }

    private final boolean zzc(T t10, int i10) {
        int zzb2 = zzb(i10);
        long j10 = zzb2 & 1048575;
        if (j10 != 1048575) {
            return (zzanz.zzc(t10, j10) & (1 << (zzb2 >>> 20))) != 0;
        }
        int zzc = zzc(i10);
        long j11 = zzc & 1048575;
        switch ((zzc & 267386880) >>> 20) {
            case 0:
                return Double.doubleToRawLongBits(zzanz.zza(t10, j11)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzanz.zzb(t10, j11)) != 0;
            case 2:
                return zzanz.zzd(t10, j11) != 0;
            case 3:
                return zzanz.zzd(t10, j11) != 0;
            case 4:
                return zzanz.zzc(t10, j11) != 0;
            case 5:
                return zzanz.zzd(t10, j11) != 0;
            case 6:
                return zzanz.zzc(t10, j11) != 0;
            case 7:
                return zzanz.zzh(t10, j11);
            case 8:
                Object zze = zzanz.zze(t10, j11);
                if (zze instanceof String) {
                    return !((String) zze).isEmpty();
                } else if (zze instanceof zzajv) {
                    return !zzajv.zza.equals(zze);
                } else {
                    throw new IllegalArgumentException();
                }
            case 9:
                return zzanz.zze(t10, j11) != null;
            case 10:
                return !zzajv.zza.equals(zzanz.zze(t10, j11));
            case 11:
                return zzanz.zzc(t10, j11) != 0;
            case 12:
                return zzanz.zzc(t10, j11) != 0;
            case 13:
                return zzanz.zzc(t10, j11) != 0;
            case 14:
                return zzanz.zzd(t10, j11) != 0;
            case 15:
                return zzanz.zzc(t10, j11) != 0;
            case 16:
                return zzanz.zzd(t10, j11) != 0;
            case 17:
                return zzanz.zze(t10, j11) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final int zza(T t10) {
        int i10;
        int i11;
        int i12;
        int zza2;
        int zza3;
        int zzd;
        boolean z10;
        int zzc;
        int zzd2;
        int zzh;
        int zzi;
        Unsafe unsafe = zzb;
        int i13 = 1048575;
        int i14 = 1048575;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i16 < this.zzc.length) {
            int zzc2 = zzc(i16);
            int i18 = (267386880 & zzc2) >>> 20;
            int[] iArr = this.zzc;
            int i19 = iArr[i16];
            int i20 = iArr[i16 + 2];
            int i21 = i20 & i13;
            if (i18 <= 17) {
                if (i21 != i14) {
                    i15 = i21 == i13 ? 0 : unsafe.getInt(t10, i21);
                    i14 = i21;
                }
                i10 = i14;
                i11 = i15;
                i12 = 1 << (i20 >>> 20);
            } else {
                i10 = i14;
                i11 = i15;
                i12 = 0;
            }
            long j10 = zzc2 & i13;
            if (i18 >= zzalc.zza.zza()) {
                zzalc.zzb.zza();
            }
            switch (i18) {
                case 0:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza2 = zzakn.zza(i19, 0.0d);
                        i17 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza2 = zzakn.zza(i19, 0.0f);
                        i17 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza2 = zzakn.zzb(i19, unsafe.getLong(t10, j10));
                        i17 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza2 = zzakn.zze(i19, unsafe.getLong(t10, j10));
                        i17 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza2 = zzakn.zzc(i19, unsafe.getInt(t10, j10));
                        i17 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza2 = zzakn.zza(i19, 0L);
                        i17 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza2 = zzakn.zzb(i19, 0);
                        i17 += zza2;
                        break;
                    }
                    break;
                case 7:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza3 = zzakn.zza(i19, true);
                        i17 += zza3;
                    }
                    break;
                case 8:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        Object object = unsafe.getObject(t10, j10);
                        if (object instanceof zzajv) {
                            zza3 = zzakn.zza(i19, (zzajv) object);
                        } else {
                            zza3 = zzakn.zza(i19, (String) object);
                        }
                        i17 += zza3;
                    }
                    break;
                case 9:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza3 = zzand.zza(i19, unsafe.getObject(t10, j10), zze(i16));
                        i17 += zza3;
                    }
                    break;
                case 10:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza3 = zzakn.zza(i19, (zzajv) unsafe.getObject(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 11:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza3 = zzakn.zzf(i19, unsafe.getInt(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 12:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza3 = zzakn.zza(i19, unsafe.getInt(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 13:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zzd = zzakn.zzd(i19, 0);
                        i17 += zzd;
                    }
                    break;
                case 14:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza3 = zzakn.zzc(i19, 0L);
                        i17 += zza3;
                    }
                    break;
                case 15:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza3 = zzakn.zze(i19, unsafe.getInt(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 16:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza3 = zzakn.zzd(i19, unsafe.getLong(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 17:
                    if (zza((zzamq<T>) t10, i16, i10, i11, i12)) {
                        zza3 = zzand.zza(i19, (zzamm) unsafe.getObject(t10, j10), zze(i16));
                        i17 += zza3;
                    }
                    break;
                case 18:
                    zza3 = zzand.zzd(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zza3;
                    break;
                case 19:
                    z10 = false;
                    zzc = zzand.zzc(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 20:
                    z10 = false;
                    zzc = zzand.zzf(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 21:
                    z10 = false;
                    zzc = zzand.zzj(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 22:
                    z10 = false;
                    zzc = zzand.zze(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 23:
                    z10 = false;
                    zzc = zzand.zzd(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 24:
                    z10 = false;
                    zzc = zzand.zzc(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 25:
                    z10 = false;
                    zzc = zzand.zza(i19, (List<?>) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 26:
                    zza3 = zzand.zzb(i19, (List) unsafe.getObject(t10, j10));
                    i17 += zza3;
                    break;
                case 27:
                    zza3 = zzand.zzb(i19, (List) unsafe.getObject(t10, j10), zze(i16));
                    i17 += zza3;
                    break;
                case 28:
                    zza3 = zzand.zza(i19, (List) unsafe.getObject(t10, j10));
                    i17 += zza3;
                    break;
                case 29:
                    zza3 = zzand.zzi(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zza3;
                    break;
                case 30:
                    z10 = false;
                    zzc = zzand.zzb(i19, (List<Integer>) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 31:
                    z10 = false;
                    zzc = zzand.zzc(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 32:
                    z10 = false;
                    zzc = zzand.zzd(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 33:
                    z10 = false;
                    zzc = zzand.zzg(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 34:
                    z10 = false;
                    zzc = zzand.zzh(i19, (List) unsafe.getObject(t10, j10), false);
                    i17 += zzc;
                    break;
                case 35:
                    zzd2 = zzand.zzd((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 36:
                    zzd2 = zzand.zzc((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 37:
                    zzd2 = zzand.zzf((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 38:
                    zzd2 = zzand.zzj((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 39:
                    zzd2 = zzand.zze((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 40:
                    zzd2 = zzand.zzd((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 41:
                    zzd2 = zzand.zzc((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 42:
                    zzd2 = zzand.zza((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 43:
                    zzd2 = zzand.zzi((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 44:
                    zzd2 = zzand.zzb((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 45:
                    zzd2 = zzand.zzc((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 46:
                    zzd2 = zzand.zzd((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 47:
                    zzd2 = zzand.zzg((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 48:
                    zzd2 = zzand.zzh((List) unsafe.getObject(t10, j10));
                    if (zzd2 > 0) {
                        zzh = zzakn.zzh(i19);
                        zzi = zzakn.zzi(zzd2);
                        zzd = zzh + zzi + zzd2;
                        i17 += zzd;
                    }
                    break;
                case 49:
                    zza3 = zzand.zza(i19, (List<zzamm>) unsafe.getObject(t10, j10), (zzanb<?>) zze(i16));
                    i17 += zza3;
                    break;
                case 50:
                    zza3 = this.zzr.zza(i19, unsafe.getObject(t10, j10), zzf(i16));
                    i17 += zza3;
                    break;
                case 51:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zza(i19, 0.0d);
                        i17 += zza3;
                    }
                    break;
                case 52:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zza(i19, 0.0f);
                        i17 += zza3;
                    }
                    break;
                case 53:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zzb(i19, zzd(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 54:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zze(i19, zzd(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 55:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zzc(i19, zzc(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 56:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zza(i19, 0L);
                        i17 += zza3;
                    }
                    break;
                case 57:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zzd = zzakn.zzb(i19, 0);
                        i17 += zzd;
                    }
                    break;
                case 58:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zza(i19, true);
                        i17 += zza3;
                    }
                    break;
                case 59:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        Object object2 = unsafe.getObject(t10, j10);
                        if (object2 instanceof zzajv) {
                            zza3 = zzakn.zza(i19, (zzajv) object2);
                        } else {
                            zza3 = zzakn.zza(i19, (String) object2);
                        }
                        i17 += zza3;
                    }
                    break;
                case 60:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzand.zza(i19, unsafe.getObject(t10, j10), zze(i16));
                        i17 += zza3;
                    }
                    break;
                case 61:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zza(i19, (zzajv) unsafe.getObject(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 62:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zzf(i19, zzc(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 63:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zza(i19, zzc(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 64:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zzd = zzakn.zzd(i19, 0);
                        i17 += zzd;
                    }
                    break;
                case 65:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zzc(i19, 0L);
                        i17 += zza3;
                    }
                    break;
                case 66:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zze(i19, zzc(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 67:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzakn.zzd(i19, zzd(t10, j10));
                        i17 += zza3;
                    }
                    break;
                case 68:
                    if (zzc((zzamq<T>) t10, i19, i16)) {
                        zza3 = zzand.zza(i19, (zzamm) unsafe.getObject(t10, j10), zze(i16));
                        i17 += zza3;
                    }
                    break;
            }
            i16 += 3;
            i14 = i10;
            i15 = i11;
            i13 = 1048575;
        }
        int i22 = 0;
        zzanu<?, ?> zzanuVar = this.zzp;
        int zza4 = i17 + zzanuVar.zza((zzanu<?, ?>) zzanuVar.zzd(t10));
        if (this.zzh) {
            zzakx<?> zza5 = this.zzq.zza(t10);
            int zzb2 = zza5.zza.zzb();
            for (int i23 = 0; i23 < zzb2; i23++) {
                Map.Entry<?, Object> zza6 = zza5.zza.zza(i23);
                i22 += zzakx.zza((zzakz) zza6.getKey(), zza6.getValue());
            }
            for (Map.Entry<?, Object> entry : zza5.zza.zzc()) {
                i22 += zzakx.zza((zzakz) entry.getKey(), entry.getValue());
            }
            return zza4 + i22;
        }
        return zza4;
    }

    private static <T> boolean zze(T t10, long j10) {
        return ((Boolean) zzanz.zze(t10, j10)).booleanValue();
    }

    private final boolean zzc(T t10, int i10, int i11) {
        return zzanz.zzc(t10, (long) (zzb(i11) & 1048575)) == i10;
    }

    private final int zzb(int i10) {
        return this.zzc[i10 + 2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzb(T t10, T t11, int i10) {
        int i11 = this.zzc[i10];
        if (zzc((zzamq<T>) t11, i11, i10)) {
            long zzc = zzc(i10) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t11, zzc);
            if (object != null) {
                zzanb zze = zze(i10);
                if (!zzc((zzamq<T>) t10, i11, i10)) {
                    if (!zzg(object)) {
                        unsafe.putObject(t10, zzc, object);
                    } else {
                        Object zza2 = zze.zza();
                        zze.zza(zza2, object);
                        unsafe.putObject(t10, zzc, zza2);
                    }
                    zzb((zzamq<T>) t10, i11, i10);
                    return;
                }
                Object object2 = unsafe.getObject(t10, zzc);
                if (!zzg(object2)) {
                    Object zza3 = zze.zza();
                    zze.zza(zza3, object2);
                    unsafe.putObject(t10, zzc, zza3);
                    object2 = zza3;
                }
                zze.zza(object2, object);
                return;
            }
            throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + String.valueOf(t11));
        }
    }

    private final void zzb(T t10, int i10) {
        int zzb2 = zzb(i10);
        long j10 = 1048575 & zzb2;
        if (j10 == 1048575) {
            return;
        }
        zzanz.zza((Object) t10, j10, (1 << (zzb2 >>> 20)) | zzanz.zzc(t10, j10));
    }

    private final void zzb(T t10, int i10, int i11) {
        zzanz.zza((Object) t10, zzb(i11) & 1048575, i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01c0, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.p003firebaseauthapi.zzanz.zza(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.p003firebaseauthapi.zzanz.zza(r11, r6))) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzand.zza(com.google.android.gms.internal.p003firebaseauthapi.zzanz.zze(r10, r6), com.google.android.gms.internal.p003firebaseauthapi.zzanz.zze(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006b, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzand.zza(com.google.android.gms.internal.p003firebaseauthapi.zzanz.zze(r10, r6), com.google.android.gms.internal.p003firebaseauthapi.zzanz.zze(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x007e, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzd(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzd(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008f, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a2, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzd(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzd(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b3, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00c4, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d6, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ec, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzand.zza(com.google.android.gms.internal.p003firebaseauthapi.zzanz.zze(r10, r6), com.google.android.gms.internal.p003firebaseauthapi.zzanz.zze(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0102, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzand.zza(com.google.android.gms.internal.p003firebaseauthapi.zzanz.zze(r10, r6), com.google.android.gms.internal.p003firebaseauthapi.zzanz.zze(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0118, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzand.zza(com.google.android.gms.internal.p003firebaseauthapi.zzanz.zze(r10, r6), com.google.android.gms.internal.p003firebaseauthapi.zzanz.zze(r11, r6)) != false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x012a, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzh(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzh(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x013c, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0150, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzd(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzd(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0162, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0176, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzd(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzd(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x018a, code lost:
        if (com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzd(r10, r6) == com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzd(r11, r6)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01a4, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzb(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzb(r11, r6))) goto L85;
     */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzb(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 642
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p003firebaseauthapi.zzamq.zzb(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x09fc, code lost:
        throw com.google.android.gms.internal.p003firebaseauthapi.zzall.zzj();
     */
    /* JADX WARN: Code restructure failed: missing block: B:524:0x0d2a, code lost:
        if (r13 == r11) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:525:0x0d2c, code lost:
        r30.putInt(r15, r13, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:526:0x0d32, code lost:
        r11 = r7.zzl;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:528:0x0d39, code lost:
        if (r11 >= r7.zzm) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:529:0x0d3b, code lost:
        r3 = (com.google.android.gms.internal.p003firebaseauthapi.zzanx) zza((java.lang.Object) r35, r7.zzk[r11], (int) r3, (com.google.android.gms.internal.p003firebaseauthapi.zzanu<UT, int>) r7.zzp, (java.lang.Object) r35);
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:530:0x0d51, code lost:
        if (r3 == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0d53, code lost:
        r7.zzp.zzb((java.lang.Object) r15, (T) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0d58, code lost:
        if (r10 != 0) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:533:0x0d5a, code lost:
        if (r6 != r8) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x0d61, code lost:
        throw com.google.android.gms.internal.p003firebaseauthapi.zzall.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x0d62, code lost:
        if (r6 > r8) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x0d64, code lost:
        if (r9 != r10) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:539:0x0d66, code lost:
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x0d6b, code lost:
        throw com.google.android.gms.internal.p003firebaseauthapi.zzall.zzg();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0512  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x05b7  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0607  */
    /* JADX WARN: Type inference failed for: r39v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v56, types: [int] */
    /* JADX WARN: Type inference failed for: r9v60, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:182:0x050f -> B:183:0x0510). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:216:0x05b4 -> B:217:0x05b5). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:236:0x0604 -> B:237:0x0605). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(T r35, byte[] r36, int r37, int r38, int r39, com.google.android.gms.internal.p003firebaseauthapi.zzaju r40) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p003firebaseauthapi.zzamq.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.firebase-auth-api.zzaju):int");
    }

    private final int zza(int i10) {
        if (i10 < this.zze || i10 > this.zzf) {
            return -1;
        }
        return zza(i10, 0);
    }

    private final int zza(int i10, int i11) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0269  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0399  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.p003firebaseauthapi.zzamq<T> zza(java.lang.Class<T> r32, com.google.android.gms.internal.p003firebaseauthapi.zzamk r33, com.google.android.gms.internal.p003firebaseauthapi.zzamu r34, com.google.android.gms.internal.p003firebaseauthapi.zzalw r35, com.google.android.gms.internal.p003firebaseauthapi.zzanu<?, ?> r36, com.google.android.gms.internal.p003firebaseauthapi.zzakw<?> r37, com.google.android.gms.internal.p003firebaseauthapi.zzamf r38) {
        /*
            Method dump skipped, instructions count: 1042
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p003firebaseauthapi.zzamq.zza(java.lang.Class, com.google.android.gms.internal.firebase-auth-api.zzamk, com.google.android.gms.internal.firebase-auth-api.zzamu, com.google.android.gms.internal.firebase-auth-api.zzalw, com.google.android.gms.internal.firebase-auth-api.zzanu, com.google.android.gms.internal.firebase-auth-api.zzakw, com.google.android.gms.internal.firebase-auth-api.zzamf):com.google.android.gms.internal.firebase-auth-api.zzamq");
    }

    private final <UT, UB> UB zza(Object obj, int i10, UB ub2, zzanu<UT, UB> zzanuVar, Object obj2) {
        zzalj zzd;
        int i11 = this.zzc[i10];
        Object zze = zzanz.zze(obj, zzc(i10) & 1048575);
        return (zze == null || (zzd = zzd(i10)) == null) ? ub2 : (UB) zza(i10, i11, this.zzr.zze(zze), zzd, (zzalj) ub2, (zzanu<UT, zzalj>) zzanuVar, obj2);
    }

    private final <K, V, UT, UB> UB zza(int i10, int i11, Map<K, V> map, zzalj zzaljVar, UB ub2, zzanu<UT, UB> zzanuVar, Object obj) {
        zzamd<?, ?> zza2 = this.zzr.zza(zzf(i10));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzaljVar.zza(((Integer) next.getValue()).intValue())) {
                if (ub2 == null) {
                    ub2 = zzanuVar.zzc(obj);
                }
                zzake zzc = zzajv.zzc(zzame.zza(zza2, next.getKey(), next.getValue()));
                try {
                    zzame.zza(zzc.zzb(), zza2, next.getKey(), next.getValue());
                    zzanuVar.zza((zzanu<UT, UB>) ub2, i11, zzc.zza());
                    it.remove();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }
        return ub2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t10, int i10) {
        zzanb zze = zze(i10);
        long zzc = zzc(i10) & 1048575;
        if (!zzc((zzamq<T>) t10, i10)) {
            return zze.zza();
        }
        Object object = zzb.getObject(t10, zzc);
        if (zzg(object)) {
            return object;
        }
        Object zza2 = zze.zza();
        if (object != null) {
            zze.zza(zza2, object);
        }
        return zza2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t10, int i10, int i11) {
        zzanb zze = zze(i11);
        if (!zzc((zzamq<T>) t10, i10, i11)) {
            return zze.zza();
        }
        Object object = zzb.getObject(t10, zzc(i11) & 1048575);
        if (zzg(object)) {
            return object;
        }
        Object zza2 = zze.zza();
        if (object != null) {
            zze.zza(zza2, object);
        }
        return zza2;
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final T zza() {
        return (T) this.zzn.zza(this.zzg);
    }

    private static Field zza(Class<?> cls, String str) {
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

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final void zza(T t10, T t11) {
        zzf(t10);
        t11.getClass();
        for (int i10 = 0; i10 < this.zzc.length; i10 += 3) {
            int zzc = zzc(i10);
            long j10 = 1048575 & zzc;
            int i11 = this.zzc[i10];
            switch ((zzc & 267386880) >>> 20) {
                case 0:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza(t10, j10, zzanz.zza(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzb(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzd(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzd(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzc(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzd(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzc(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zzc(t10, j10, zzanz.zzh(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza(t10, j10, zzanz.zze(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zza(t10, t11, i10);
                    break;
                case 10:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza(t10, j10, zzanz.zze(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzc(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzc(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzc(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzd(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzc(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzc((zzamq<T>) t11, i10)) {
                        zzanz.zza((Object) t10, j10, zzanz.zzd(t11, j10));
                        zzb((zzamq<T>) t10, i10);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zza(t10, t11, i10);
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
                    this.zzo.zza(t10, t11, j10);
                    break;
                case 50:
                    zzand.zza(this.zzr, t10, t11, j10);
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
                    if (zzc((zzamq<T>) t11, i11, i10)) {
                        zzanz.zza(t10, j10, zzanz.zze(t11, j10));
                        zzb((zzamq<T>) t10, i11, i10);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzb(t10, t11, i10);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzc((zzamq<T>) t11, i11, i10)) {
                        zzanz.zza(t10, j10, zzanz.zze(t11, j10));
                        zzb((zzamq<T>) t10, i11, i10);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzb(t10, t11, i10);
                    break;
            }
        }
        zzand.zza(this.zzp, t10, t11);
        if (this.zzh) {
            zzand.zza(this.zzq, t10, t11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0630 A[Catch: all -> 0x00cb, TryCatch #6 {all -> 0x00cb, blocks: (B:49:0x00c5, B:54:0x00d3, B:166:0x062b, B:168:0x0630, B:169:0x0635, B:65:0x00ff, B:67:0x0114, B:68:0x0125, B:69:0x0136, B:70:0x0147, B:71:0x0158, B:73:0x0162, B:76:0x0169, B:77:0x016e, B:78:0x017b, B:79:0x018c, B:80:0x019a, B:81:0x01ac, B:82:0x01b4, B:83:0x01c6, B:84:0x01d8, B:85:0x01ea, B:86:0x01fc, B:87:0x020e, B:88:0x0220, B:89:0x0232, B:90:0x0244, B:92:0x0254, B:96:0x0275, B:93:0x025e, B:95:0x0266, B:97:0x0286, B:98:0x0298, B:99:0x02a6, B:100:0x02b4, B:101:0x02c2), top: B:196:0x00c5 }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0665 A[LOOP:3: B:181:0x0661->B:183:0x0665, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0679  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x063b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r19v0, types: [com.google.android.gms.internal.firebase-auth-api.zzanc] */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r18, com.google.android.gms.internal.p003firebaseauthapi.zzanc r19, com.google.android.gms.internal.p003firebaseauthapi.zzaku r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1804
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p003firebaseauthapi.zzamq.zza(java.lang.Object, com.google.android.gms.internal.firebase-auth-api.zzanc, com.google.android.gms.internal.firebase-auth-api.zzaku):void");
    }

    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    public final void zza(T t10, byte[] bArr, int i10, int i11, zzaju zzajuVar) throws IOException {
        zza((zzamq<T>) t10, bArr, i10, i11, 0, zzajuVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zza(T t10, T t11, int i10) {
        if (zzc((zzamq<T>) t11, i10)) {
            long zzc = zzc(i10) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t11, zzc);
            if (object != null) {
                zzanb zze = zze(i10);
                if (!zzc((zzamq<T>) t10, i10)) {
                    if (!zzg(object)) {
                        unsafe.putObject(t10, zzc, object);
                    } else {
                        Object zza2 = zze.zza();
                        zze.zza(zza2, object);
                        unsafe.putObject(t10, zzc, zza2);
                    }
                    zzb((zzamq<T>) t10, i10);
                    return;
                }
                Object object2 = unsafe.getObject(t10, zzc);
                if (!zzg(object2)) {
                    Object zza3 = zze.zza();
                    zze.zza(zza3, object2);
                    unsafe.putObject(t10, zzc, zza3);
                    object2 = zza3;
                }
                zze.zza(object2, object);
                return;
            }
            throw new IllegalStateException("Source subfield " + this.zzc[i10] + " is present but null: " + String.valueOf(t11));
        }
    }

    private final void zza(Object obj, int i10, zzanc zzancVar) throws IOException {
        if (zzg(i10)) {
            zzanz.zza(obj, i10 & 1048575, zzancVar.zzr());
        } else if (this.zzi) {
            zzanz.zza(obj, i10 & 1048575, zzancVar.zzq());
        } else {
            zzanz.zza(obj, i10 & 1048575, zzancVar.zzp());
        }
    }

    private final void zza(T t10, int i10, Object obj) {
        zzb.putObject(t10, zzc(i10) & 1048575, obj);
        zzb((zzamq<T>) t10, i10);
    }

    private final void zza(T t10, int i10, int i11, Object obj) {
        zzb.putObject(t10, zzc(i11) & 1048575, obj);
        zzb((zzamq<T>) t10, i10, i11);
    }

    private final <K, V> void zza(zzaol zzaolVar, int i10, Object obj, int i11) throws IOException {
        if (obj != null) {
            zzaolVar.zza(i10, this.zzr.zza(zzf(i11)), this.zzr.zzd(obj));
        }
    }

    private static void zza(int i10, Object obj, zzaol zzaolVar) throws IOException {
        if (obj instanceof String) {
            zzaolVar.zza(i10, (String) obj);
        } else {
            zzaolVar.zza(i10, (zzajv) obj);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0556  */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0b90  */
    @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r24, com.google.android.gms.internal.p003firebaseauthapi.zzaol r25) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p003firebaseauthapi.zzamq.zza(java.lang.Object, com.google.android.gms.internal.firebase-auth-api.zzaol):void");
    }

    private static <UT, UB> void zza(zzanu<UT, UB> zzanuVar, T t10, zzaol zzaolVar) throws IOException {
        zzanuVar.zzb((zzanu<UT, UB>) zzanuVar.zzd(t10), zzaolVar);
    }

    private final boolean zza(T t10, int i10, int i11, int i12, int i13) {
        if (i11 == 1048575) {
            return zzc((zzamq<T>) t10, i10);
        }
        return (i12 & i13) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i10, zzanb zzanbVar) {
        return zzanbVar.zze(zzanz.zze(obj, i10 & 1048575));
    }
}
