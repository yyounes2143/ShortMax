package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.ApicFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzagw extends zzahf {
    public final String zza;
    @Nullable
    public final String zzb;
    public final int zzc;
    public final byte[] zzd;

    public zzagw(String str, @Nullable String str2, int i10, byte[] bArr) {
        super(ApicFrame.ID);
        this.zza = str;
        this.zzb = str2;
        this.zzc = i10;
        this.zzd = bArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagw.class == obj.getClass()) {
            zzagw zzagwVar = (zzagw) obj;
            if (this.zzc == zzagwVar.zzc && Objects.equals(this.zza, zzagwVar.zza) && Objects.equals(this.zzb, zzagwVar.zzb) && Arrays.equals(this.zzd, zzagwVar.zzd)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        String str = this.zza;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = this.zzc;
        String str2 = this.zzb;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return ((((((i12 + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + i10) * 31) + i11) * 31) + Arrays.hashCode(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzahf
    public final String toString() {
        return this.zzf + ": mimeType=" + this.zza + ", description=" + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzahf, com.google.android.gms.internal.ads.zzau
    public final void zza(zzar zzarVar) {
        zzarVar.zza(this.zzd, this.zzc);
    }
}
