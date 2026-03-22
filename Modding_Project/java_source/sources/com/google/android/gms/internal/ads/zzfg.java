package com.google.android.gms.internal.ads;

import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfg implements zzau {
    public final float zza;
    public final float zzb;

    public zzfg(@FloatRange(from = -90.0d, to = 90.0d) float f10, @FloatRange(from = -180.0d, to = 180.0d) float f11) {
        boolean z10 = false;
        if (f10 >= -90.0f && f10 <= 90.0f && f11 >= -180.0f && f11 <= 180.0f) {
            z10 = true;
        }
        zzdd.zze(z10, "Invalid latitude or longitude");
        this.zza = f10;
        this.zzb = f11;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzfg.class == obj.getClass()) {
            zzfg zzfgVar = (zzfg) obj;
            if (this.zza == zzfgVar.zza && this.zzb == zzfgVar.zzb) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((Float.floatToIntBits(this.zza) + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + Float.floatToIntBits(this.zzb);
    }

    public final String toString() {
        return "xyz: latitude=" + this.zza + ", longitude=" + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final /* synthetic */ void zza(zzar zzarVar) {
    }
}
