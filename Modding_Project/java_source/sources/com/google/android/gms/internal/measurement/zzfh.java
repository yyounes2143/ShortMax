package com.google.android.gms.internal.measurement;
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzfh extends zzmf implements zznn {
    private static final zzfh zzh;
    private int zzb;
    private zzfr zzd;
    private zzfl zze;
    private boolean zzf;
    private String zzg = "";

    static {
        zzfh zzfhVar = new zzfh();
        zzh = zzfhVar;
        zzmf.zzcp(zzfh.class, zzfhVar);
    }

    private zzfh() {
    }

    public static zzfh zzi() {
        return zzh;
    }

    public final boolean zza() {
        if ((this.zzb & 1) != 0) {
            return true;
        }
        return false;
    }

    public final zzfr zzb() {
        zzfr zzfrVar = this.zzd;
        if (zzfrVar == null) {
            return zzfr.zzh();
        }
        return zzfrVar;
    }

    public final boolean zzc() {
        if ((this.zzb & 2) != 0) {
            return true;
        }
        return false;
    }

    public final zzfl zzd() {
        zzfl zzflVar = this.zze;
        if (zzflVar == null) {
            return zzfl.zzj();
        }
        return zzflVar;
    }

    public final boolean zze() {
        if ((this.zzb & 4) != 0) {
            return true;
        }
        return false;
    }

    public final boolean zzf() {
        return this.zzf;
    }

    public final boolean zzg() {
        if ((this.zzb & 8) != 0) {
            return true;
        }
        return false;
    }

    public final String zzh() {
        return this.zzg;
    }

    public final /* synthetic */ void zzj(String str) {
        this.zzb |= 8;
        this.zzg = str;
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
                    return new zzfg(null);
                }
                return new zzfh();
            }
            return zzmf.zzcq(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        return (byte) 1;
    }
}
