package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzml implements zzlb {
    private boolean zza;
    private long zzb;
    private long zzc;
    private zzbb zzd = zzbb.zza;

    public zzml(zzdj zzdjVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final long zza() {
        long zza;
        long j10 = this.zzb;
        if (this.zza) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.zzc;
            zzbb zzbbVar = this.zzd;
            if (zzbbVar.zzb == 1.0f) {
                zza = zzex.zzs(elapsedRealtime);
            } else {
                zza = zzbbVar.zza(elapsedRealtime);
            }
            return j10 + zza;
        }
        return j10;
    }

    public final void zzb(long j10) {
        this.zzb = j10;
        if (this.zza) {
            this.zzc = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final zzbb zzc() {
        return this.zzd;
    }

    public final void zzd() {
        if (!this.zza) {
            this.zzc = SystemClock.elapsedRealtime();
            this.zza = true;
        }
    }

    public final void zze() {
        if (this.zza) {
            zzb(zza());
            this.zza = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final void zzg(zzbb zzbbVar) {
        if (this.zza) {
            zzb(zza());
        }
        this.zzd = zzbbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlb
    public final /* synthetic */ boolean zzj() {
        return false;
    }
}
