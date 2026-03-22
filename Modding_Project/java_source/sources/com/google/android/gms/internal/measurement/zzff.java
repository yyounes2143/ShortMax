package com.google.android.gms.internal.measurement;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzff extends zzmf implements zznn {
    private static final zzff zzl;
    private int zzb;
    private int zzd;
    private String zze = "";
    private zzmo zzf = zzmf.zzcv();
    private boolean zzg;
    private zzfl zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        zzff zzffVar = new zzff();
        zzl = zzffVar;
        zzmf.zzcp(zzff.class, zzffVar);
    }

    private zzff() {
    }

    public static zzfe zzn() {
        return (zzfe) zzl.zzck();
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

    public final String zzc() {
        return this.zze;
    }

    public final List zzd() {
        return this.zzf;
    }

    public final int zze() {
        return this.zzf.size();
    }

    public final zzfh zzf(int i10) {
        return (zzfh) this.zzf.get(i10);
    }

    public final boolean zzg() {
        if ((this.zzb & 8) != 0) {
            return true;
        }
        return false;
    }

    public final zzfl zzh() {
        zzfl zzflVar = this.zzh;
        if (zzflVar == null) {
            return zzfl.zzj();
        }
        return zzflVar;
    }

    public final boolean zzi() {
        return this.zzi;
    }

    public final boolean zzj() {
        return this.zzj;
    }

    public final boolean zzk() {
        if ((this.zzb & 64) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    public final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzl;
                        }
                        throw null;
                    }
                    return new zzfe(null);
                }
                return new zzff();
            }
            return zzmf.zzcq(zzl, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zzb", "zzd", "zze", "zzf", zzfh.class, "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        return (byte) 1;
    }

    public final boolean zzm() {
        return this.zzk;
    }

    public final /* synthetic */ void zzo(String str) {
        this.zzb |= 2;
        this.zze = str;
    }

    public final /* synthetic */ void zzp(int i10, zzfh zzfhVar) {
        zzfhVar.getClass();
        zzmo zzmoVar = this.zzf;
        if (!zzmoVar.zza()) {
            this.zzf = zzmf.zzcw(zzmoVar);
        }
        this.zzf.set(i10, zzfhVar);
    }
}
