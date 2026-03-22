package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzahm implements zzau {
    public final long zza;
    public final long zzb;
    public final long zzc;
    public final long zzd;
    public final long zze;

    public zzahm(long j10, long j11, long j12, long j13, long j14) {
        this.zza = j10;
        this.zzb = j11;
        this.zzc = j12;
        this.zzd = j13;
        this.zze = j14;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahm.class == obj.getClass()) {
            zzahm zzahmVar = (zzahm) obj;
            if (this.zza == zzahmVar.zza && this.zzb == zzahmVar.zzb && this.zzc == zzahmVar.zzc && this.zzd == zzahmVar.zzd && this.zze == zzahmVar.zze) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j10 = this.zza;
        long j11 = this.zze;
        long j12 = this.zzd;
        long j13 = this.zzc;
        long j14 = this.zzb;
        return ((((((((((int) (j10 ^ (j10 >>> 32))) + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + ((int) ((j14 >>> 32) ^ j14))) * 31) + ((int) (j13 ^ (j13 >>> 32)))) * 31) + ((int) (j12 ^ (j12 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)));
    }

    public final String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.zza + ", photoSize=" + this.zzb + ", photoPresentationTimestampUs=" + this.zzc + ", videoStartPosition=" + this.zzd + ", videoSize=" + this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final /* synthetic */ void zza(zzar zzarVar) {
    }
}
