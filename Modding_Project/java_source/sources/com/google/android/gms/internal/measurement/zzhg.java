package com.google.android.gms.internal.measurement;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzhg extends zzmf implements zznn {
    private static final zzhg zzh;
    private int zzb;
    private int zzd;
    private zzii zze;
    private zzii zzf;
    private boolean zzg;

    static {
        zzhg zzhgVar = new zzhg();
        zzh = zzhgVar;
        zzmf.zzcp(zzhg.class, zzhgVar);
    }

    private zzhg() {
    }

    public static zzhf zzh() {
        return (zzhf) zzh.zzck();
    }

    public final boolean zza() {
        if ((this.zzb & 1) != 0) {
            return true;
        }
        return false;
    }

    public final int zzb() {
        return this.zzd;
    }

    public final zzii zzc() {
        zzii zziiVar = this.zze;
        if (zziiVar == null) {
            return zzii.zzj();
        }
        return zziiVar;
    }

    public final boolean zzd() {
        if ((this.zzb & 4) != 0) {
            return true;
        }
        return false;
    }

    public final zzii zze() {
        zzii zziiVar = this.zzf;
        if (zziiVar == null) {
            return zzii.zzj();
        }
        return zziiVar;
    }

    public final boolean zzf() {
        if ((this.zzb & 8) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zzg() {
        return this.zzg;
    }

    public final /* synthetic */ void zzi(int i10) {
        this.zzb |= 1;
        this.zzd = i10;
    }

    public final /* synthetic */ void zzj(zzii zziiVar) {
        zziiVar.getClass();
        this.zze = zziiVar;
        this.zzb |= 2;
    }

    public final /* synthetic */ void zzk(zzii zziiVar) {
        this.zzf = zziiVar;
        this.zzb |= 4;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzh;
                        }
                        throw null;
                    }
                    return new zzhf(null);
                }
                return new zzhg();
            }
            return zzmf.zzcq(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }

    public final /* synthetic */ void zzm(boolean z10) {
        this.zzb |= 8;
        this.zzg = z10;
    }
}
