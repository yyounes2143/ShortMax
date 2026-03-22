package com.google.android.gms.internal.ads;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzakh {
    private zzafb zzb;
    private zzady zzc;
    private zzakc zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private final zzaka zza = new zzaka();
    private zzake zzj = new zzake();

    protected abstract long zza(zzen zzenVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzb(boolean z10) {
        int i10;
        if (z10) {
            this.zzj = new zzake();
            this.zzf = 0L;
            i10 = 0;
        } else {
            i10 = 1;
        }
        this.zzh = i10;
        this.zze = -1L;
        this.zzg = 0L;
    }

    protected abstract boolean zzc(zzen zzenVar, long j10, zzake zzakeVar) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int zze(zzadw zzadwVar, zzaer zzaerVar) throws IOException {
        boolean z10;
        zzdd.zzb(this.zzb);
        String str = zzex.zza;
        int i10 = this.zzh;
        if (i10 == 0) {
            while (true) {
                zzaka zzakaVar = this.zza;
                if (!zzakaVar.zze(zzadwVar)) {
                    this.zzh = 3;
                    return -1;
                }
                long zzf = zzadwVar.zzf();
                long j10 = this.zzf;
                this.zzk = zzf - j10;
                if (zzc(zzakaVar.zza(), j10, this.zzj)) {
                    this.zzf = zzadwVar.zzf();
                } else {
                    zzz zzzVar = this.zzj.zza;
                    this.zzi = zzzVar.zzH;
                    if (!this.zzm) {
                        this.zzb.zzm(zzzVar);
                        this.zzm = true;
                    }
                    zzakc zzakcVar = this.zzj.zzb;
                    if (zzakcVar != null) {
                        this.zzd = zzakcVar;
                    } else if (zzadwVar.zzd() == -1) {
                        this.zzd = new zzakf(null);
                    } else {
                        zzakb zzb = zzakaVar.zzb();
                        if ((zzb.zza & 4) != 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        this.zzd = new zzajw(this, this.zzf, zzadwVar.zzd(), zzb.zzd + zzb.zze, zzb.zzb, z10);
                    }
                    this.zzh = 2;
                    zzakaVar.zzd();
                }
            }
        } else if (i10 != 1) {
            if (i10 != 2) {
                return -1;
            }
            long zzd = this.zzd.zzd(zzadwVar);
            if (zzd >= 0) {
                zzaerVar.zza = zzd;
                return 1;
            }
            if (zzd < -1) {
                zzi(-(zzd + 2));
            }
            if (!this.zzl) {
                zzaeu zze = this.zzd.zze();
                zzdd.zzb(zze);
                this.zzc.zzP(zze);
                this.zzb.zzl(zze.zza());
                this.zzl = true;
            }
            if (this.zzk <= 0 && !this.zza.zze(zzadwVar)) {
                this.zzh = 3;
                return -1;
            }
            this.zzk = 0L;
            zzen zza = this.zza.zza();
            long zza2 = zza(zza);
            if (zza2 >= 0) {
                long j11 = this.zzg;
                if (j11 + zza2 >= this.zze) {
                    long zzf2 = zzf(j11);
                    this.zzb.zzr(zza, zza.zzd());
                    this.zzb.zzt(zzf2, 1, zza.zzd(), 0, null);
                    this.zze = -1L;
                }
            }
            this.zzg += zza2;
        } else {
            zzadwVar.zzk((int) this.zzf);
            this.zzh = 2;
            return 0;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzf(long j10) {
        return (j10 * 1000000) / this.zzi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long zzg(long j10) {
        return (this.zzi * j10) / 1000000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzh(zzady zzadyVar, zzafb zzafbVar) {
        this.zzc = zzadyVar;
        this.zzb = zzafbVar;
        zzb(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzi(long j10) {
        this.zzg = j10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzj(long j10, long j11) {
        this.zza.zzc();
        if (j10 == 0) {
            zzb(!this.zzl);
        } else if (this.zzh != 0) {
            long zzg = zzg(j11);
            this.zze = zzg;
            zzakc zzakcVar = this.zzd;
            String str = zzex.zza;
            zzakcVar.zzg(zzg);
            this.zzh = 2;
        }
    }
}
