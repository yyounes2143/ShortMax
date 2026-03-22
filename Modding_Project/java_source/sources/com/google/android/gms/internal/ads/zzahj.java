package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.PrivFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzahj extends zzahf {
    public final String zza;
    public final byte[] zzb;

    public zzahj(String str, byte[] bArr) {
        super(PrivFrame.ID);
        this.zza = str;
        this.zzb = bArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahj.class == obj.getClass()) {
            zzahj zzahjVar = (zzahj) obj;
            if (Objects.equals(this.zza, zzahjVar.zza) && Arrays.equals(this.zzb, zzahjVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + Arrays.hashCode(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzahf
    public final String toString() {
        return this.zzf + ": owner=" + this.zza;
    }
}
