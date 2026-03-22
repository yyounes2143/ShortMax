package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.CommentFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaha extends zzahf {
    public final String zza;
    public final String zzb;
    public final String zzc;

    public zzaha(String str, String str2, String str3) {
        super(CommentFrame.ID);
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaha.class == obj.getClass()) {
            zzaha zzahaVar = (zzaha) obj;
            if (Objects.equals(this.zzb, zzahaVar.zzb) && Objects.equals(this.zza, zzahaVar.zza) && Objects.equals(this.zzc, zzahaVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        int hashCode = ((this.zza.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.zzb.hashCode();
        String str = this.zzc;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return (hashCode * 31) + i10;
    }

    @Override // com.google.android.gms.internal.ads.zzahf
    public final String toString() {
        return this.zzf + ": language=" + this.zza + ", description=" + this.zzb + ", text=" + this.zzc;
    }
}
