package com.google.android.gms.internal.measurement;

import java.util.List;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzhs extends zzmf implements zznn {
    private static final zzhs zzj;
    private int zzb;
    private zzmo zzd = zzmf.zzcv();
    private String zze = "";
    private long zzf;
    private long zzg;
    private int zzh;
    private long zzi;

    static {
        zzhs zzhsVar = new zzhs();
        zzj = zzhsVar;
        zzmf.zzcp(zzhs.class, zzhsVar);
    }

    private zzhs() {
    }

    public static zzhr zzk() {
        return (zzhr) zzj.zzck();
    }

    private final void zzw() {
        zzmo zzmoVar = this.zzd;
        if (!zzmoVar.zza()) {
            this.zzd = zzmf.zzcw(zzmoVar);
        }
    }

    public final List zza() {
        return this.zzd;
    }

    public final int zzb() {
        return this.zzd.size();
    }

    public final zzhw zzc(int i10) {
        return (zzhw) this.zzd.get(i10);
    }

    public final String zzd() {
        return this.zze;
    }

    public final boolean zze() {
        if ((this.zzb & 2) != 0) {
            return true;
        }
        return false;
    }

    public final long zzf() {
        return this.zzf;
    }

    public final boolean zzg() {
        if ((this.zzb & 4) != 0) {
            return true;
        }
        return false;
    }

    public final long zzh() {
        return this.zzg;
    }

    public final boolean zzi() {
        if ((this.zzb & 8) != 0) {
            return true;
        }
        return false;
    }

    public final int zzj() {
        return this.zzh;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzmf
    public final Object zzl(int i10, Object obj, Object obj2) {
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
                    return new zzhr(null);
                }
                return new zzhs();
            }
            return zzmf.zzcq(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003\u0006ဂ\u0004", new Object[]{"zzb", "zzd", zzhw.class, "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        return (byte) 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzm(int i10, zzhw zzhwVar) {
        zzhwVar.getClass();
        zzw();
        this.zzd.set(i10, zzhwVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzn(zzhw zzhwVar) {
        zzhwVar.getClass();
        zzw();
        this.zzd.add(zzhwVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzo(Iterable iterable) {
        zzw();
        zzks.zzce(iterable, this.zzd);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzp() {
        this.zzd = zzmf.zzcv();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzq(int i10) {
        zzw();
        this.zzd.remove(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzr(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzs(long j10) {
        this.zzb |= 2;
        this.zzf = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzt(long j10) {
        this.zzb |= 4;
        this.zzg = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzu(long j10) {
        this.zzb |= 16;
        this.zzi = j10;
    }
}
