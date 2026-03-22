package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.InternalFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzahh extends zzahf {
    public final String zza;
    public final String zzb;
    public final String zzc;

    public zzahh(String str, String str2, String str3) {
        super(InternalFrame.ID);
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahh.class == obj.getClass()) {
            zzahh zzahhVar = (zzahh) obj;
            if (Objects.equals(this.zzb, zzahhVar.zzb) && Objects.equals(this.zza, zzahhVar.zza) && Objects.equals(this.zzc, zzahhVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.zza.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.zzb.hashCode()) * 31) + this.zzc.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzahf
    public final String toString() {
        return this.zzf + ": domain=" + this.zza + ", description=" + this.zzb;
    }
}
