package com.google.android.gms.internal.measurement;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzhw extends zzmf implements zznn {
    private static final zzhw zzj;
    private int zzb;
    private long zzf;
    private float zzg;
    private double zzh;
    private String zzd = "";
    private String zze = "";
    private zzmo zzi = zzmf.zzcv();

    static {
        zzhw zzhwVar = new zzhw();
        zzj = zzhwVar;
        zzmf.zzcp(zzhw.class, zzhwVar);
    }

    private zzhw() {
    }

    public static zzhv zzn() {
        return (zzhv) zzj.zzck();
    }

    private final void zzz() {
        zzmo zzmoVar = this.zzi;
        if (!zzmoVar.zza()) {
            this.zzi = zzmf.zzcw(zzmoVar);
        }
    }

    public final boolean zza() {
        if ((this.zzb & 1) != 0) {
            return true;
        }
        return false;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final boolean zzc() {
        if ((this.zzb & 2) != 0) {
            return true;
        }
        return false;
    }

    public final String zzd() {
        return this.zze;
    }

    public final boolean zze() {
        if ((this.zzb & 4) != 0) {
            return true;
        }
        return false;
    }

    public final long zzf() {
        return this.zzf;
    }

    public final boolean zzg() {
        if ((this.zzb & 8) != 0) {
            return true;
        }
        return false;
    }

    public final float zzh() {
        return this.zzg;
    }

    public final boolean zzi() {
        if ((this.zzb & 16) != 0) {
            return true;
        }
        return false;
    }

    public final double zzj() {
        return this.zzh;
    }

    public final List zzk() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i10, Object obj, Object obj2) {
        int i11 = i10 - 1;
        if (i11 != 0) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            return zzj;
                        }
                        throw null;
                    }
                    return new zzhv(null);
                }
                return new zzhw();
            }
            return zzmf.zzcq(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", zzhw.class});
        }
        return (byte) 1;
    }

    public final int zzm() {
        return this.zzi.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzo(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzp(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzq() {
        this.zzb &= -3;
        this.zze = zzj.zze;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzr(long j10) {
        this.zzb |= 4;
        this.zzf = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzs() {
        this.zzb &= -5;
        this.zzf = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzt(double d10) {
        this.zzb |= 16;
        this.zzh = d10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzu() {
        this.zzb &= -17;
        this.zzh = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzv(zzhw zzhwVar) {
        zzhwVar.getClass();
        zzz();
        this.zzi.add(zzhwVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzw(Iterable iterable) {
        zzz();
        zzks.zzce(iterable, this.zzi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzx() {
        this.zzi = zzmf.zzcv();
    }
}
