package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.playercommon.exoplayer2.C;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdz implements zzkx {
    private final zzzm zza = new zzzm(true, 65536);
    private long zzb = 15000000;
    private long zzc = 30000000;
    private long zzd = 2500000;
    private long zze = 5000000;
    private int zzf;
    private boolean zzg;

    @VisibleForTesting
    final void zza(boolean z10) {
        this.zzf = 0;
        this.zzg = false;
        if (z10) {
            this.zza.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final long zzb(zzph zzphVar) {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final void zzc(zzph zzphVar) {
        zza(false);
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final void zzd(zzph zzphVar) {
        zza(true);
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final void zze(zzph zzphVar) {
        zza(true);
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final void zzf(zzkw zzkwVar, zzxk zzxkVar, zzyw[] zzywVarArr) {
        int i10;
        this.zzf = 0;
        for (zzyw zzywVar : zzywVarArr) {
            if (zzywVar != null) {
                int i11 = this.zzf;
                int i12 = zzywVar.zzc().zzc;
                if (i12 != 0) {
                    if (i12 != 1) {
                        if (i12 != 2) {
                            i10 = 131072;
                            if (i12 != 3 && i12 != 5 && i12 != 6) {
                                throw new IllegalArgumentException();
                            }
                        } else {
                            i10 = 131072000;
                        }
                    } else {
                        i10 = C.DEFAULT_VIDEO_BUFFER_SIZE;
                    }
                } else {
                    i10 = 144310272;
                }
                this.zzf = i11 + i10;
            }
        }
        this.zza.zzf(this.zzf);
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final boolean zzg(zzph zzphVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final boolean zzh(zzkw zzkwVar) {
        boolean z10;
        long j10 = zzkwVar.zzb;
        boolean z11 = true;
        if (j10 > this.zzc) {
            z10 = false;
        } else if (j10 < this.zzb) {
            z10 = true;
        } else {
            z10 = true;
        }
        int zza = this.zza.zza();
        int i10 = this.zzf;
        if (!z10 && (!z10 || !this.zzg || zza >= i10)) {
            z11 = false;
        }
        this.zzg = z11;
        return z11;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final /* synthetic */ boolean zzi(zzbl zzblVar, zzvh zzvhVar, long j10) {
        zzea.zzf("LoadControl", "shouldContinuePreloading needs to be implemented when playlist preloading is enabled");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final boolean zzj(zzkw zzkwVar) {
        long j10;
        if (zzkwVar.zzd) {
            j10 = this.zze;
        } else {
            j10 = this.zzd;
        }
        if (j10 > 0 && zzkwVar.zzb < j10) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzkx
    public final zzzm zzk() {
        return this.zza;
    }

    public final synchronized void zzl(int i10) {
        this.zzd = i10 * 1000;
    }

    public final synchronized void zzm(int i10) {
        this.zze = i10 * 1000;
    }

    public final synchronized void zzn(int i10) {
        this.zzc = i10 * 1000;
    }

    public final synchronized void zzo(int i10) {
        this.zzb = i10 * 1000;
    }
}
