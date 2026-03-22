package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzvh {
    public final Object zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final int zze;

    private zzvh(Object obj, int i10, int i11, long j10, int i12) {
        this.zza = obj;
        this.zzb = i10;
        this.zzc = i11;
        this.zzd = j10;
        this.zze = i12;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvh)) {
            return false;
        }
        zzvh zzvhVar = (zzvh) obj;
        if (this.zza.equals(zzvhVar.zza) && this.zzb == zzvhVar.zzb && this.zzc == zzvhVar.zzc && this.zzd == zzvhVar.zzd && this.zze == zzvhVar.zze) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return ((((((((this.zza.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.zzb) * 31) + this.zzc) * 31) + ((int) this.zzd)) * 31) + this.zze;
    }

    public final zzvh zza(Object obj) {
        if (this.zza.equals(obj)) {
            return this;
        }
        return new zzvh(obj, this.zzb, this.zzc, this.zzd, this.zze);
    }

    public final boolean zzb() {
        if (this.zzb != -1) {
            return true;
        }
        return false;
    }

    public zzvh(Object obj, int i10, int i11, long j10) {
        this(obj, i10, i11, j10, -1);
    }

    public zzvh(Object obj, long j10) {
        this(obj, -1, -1, j10, -1);
    }

    public zzvh(Object obj, long j10, int i10) {
        this(obj, -1, -1, j10, i10);
    }
}
