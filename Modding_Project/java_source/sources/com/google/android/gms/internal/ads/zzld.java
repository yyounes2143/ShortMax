package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzld {
    public final zzvh zza;
    public final long zzb;
    public final long zzc;
    public final long zzd;
    public final long zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;
    public final boolean zzj;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzld(zzvh zzvhVar, long j10, long j11, long j12, long j13, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        boolean z15;
        boolean z16 = true;
        if (!z14 || z12) {
            z15 = true;
        } else {
            z15 = false;
        }
        zzdd.zzd(z15);
        if (z13 && !z12) {
            z16 = false;
        }
        zzdd.zzd(z16);
        this.zza = zzvhVar;
        this.zzb = j10;
        this.zzc = j11;
        this.zzd = j12;
        this.zze = j13;
        this.zzf = false;
        this.zzg = false;
        this.zzh = z12;
        this.zzi = z13;
        this.zzj = z14;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzld.class == obj.getClass()) {
            zzld zzldVar = (zzld) obj;
            if (this.zzb == zzldVar.zzb && this.zzc == zzldVar.zzc && this.zzd == zzldVar.zzd && this.zze == zzldVar.zze && this.zzh == zzldVar.zzh && this.zzi == zzldVar.zzi && this.zzj == zzldVar.zzj && Objects.equals(this.zza, zzldVar.zza)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zza.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER;
        long j10 = this.zze;
        long j11 = this.zzd;
        return (((((((((((((hashCode * 31) + ((int) this.zzb)) * 31) + ((int) this.zzc)) * 31) + ((int) j11)) * 31) + ((int) j10)) * 29791) + (this.zzh ? 1 : 0)) * 31) + (this.zzi ? 1 : 0)) * 31) + (this.zzj ? 1 : 0);
    }

    public final zzld zza(long j10) {
        if (j10 == this.zzc) {
            return this;
        }
        return new zzld(this.zza, this.zzb, j10, this.zzd, this.zze, false, false, this.zzh, this.zzi, this.zzj);
    }

    public final zzld zzb(long j10) {
        if (j10 == this.zzb) {
            return this;
        }
        return new zzld(this.zza, j10, this.zzc, this.zzd, this.zze, false, false, this.zzh, this.zzi, this.zzj);
    }
}
