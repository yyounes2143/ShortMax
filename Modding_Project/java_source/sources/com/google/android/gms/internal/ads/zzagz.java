package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterTocFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzagz extends zzahf {
    public final String zza;
    public final boolean zzb;
    public final boolean zzc;
    public final String[] zzd;
    private final zzahf[] zze;

    public zzagz(String str, boolean z10, boolean z11, String[] strArr, zzahf[] zzahfVarArr) {
        super(ChapterTocFrame.ID);
        this.zza = str;
        this.zzb = z10;
        this.zzc = z11;
        this.zzd = strArr;
        this.zze = zzahfVarArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagz.class == obj.getClass()) {
            zzagz zzagzVar = (zzagz) obj;
            if (this.zzb == zzagzVar.zzb && this.zzc == zzagzVar.zzc && Objects.equals(this.zza, zzagzVar.zza) && Arrays.equals(this.zzd, zzagzVar.zzd) && Arrays.equals(this.zze, zzagzVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.zzb ? 1 : 0) + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + (this.zzc ? 1 : 0)) * 31) + this.zza.hashCode();
    }
}
