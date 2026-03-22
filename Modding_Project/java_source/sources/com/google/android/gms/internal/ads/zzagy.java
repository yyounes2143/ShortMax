package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ChapterFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzagy extends zzahf {
    public final String zza;
    public final int zzb;
    public final int zzc;
    public final long zzd;
    public final long zze;
    private final zzahf[] zzg;

    public zzagy(String str, int i10, int i11, long j10, long j11, zzahf[] zzahfVarArr) {
        super(ChapterFrame.ID);
        this.zza = str;
        this.zzb = i10;
        this.zzc = i11;
        this.zzd = j10;
        this.zze = j11;
        this.zzg = zzahfVarArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagy.class == obj.getClass()) {
            zzagy zzagyVar = (zzagy) obj;
            if (this.zzb == zzagyVar.zzb && this.zzc == zzagyVar.zzc && this.zzd == zzagyVar.zzd && this.zze == zzagyVar.zze && Objects.equals(this.zza, zzagyVar.zza) && Arrays.equals(this.zzg, zzagyVar.zzg)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.zzb + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER;
        String str = this.zza;
        long j10 = this.zze;
        return (((((((i10 * 31) + this.zzc) * 31) + ((int) this.zzd)) * 31) + ((int) j10)) * 31) + str.hashCode();
    }
}
