package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.metadata.id3.GeobFrame;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzahb extends zzahf {
    public final String zza;
    public final String zzb;
    public final String zzc;
    public final byte[] zzd;

    public zzahb(String str, String str2, String str3, byte[] bArr) {
        super(GeobFrame.ID);
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = bArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahb.class == obj.getClass()) {
            zzahb zzahbVar = (zzahb) obj;
            if (Objects.equals(this.zza, zzahbVar.zza) && Objects.equals(this.zzb, zzahbVar.zzb) && Objects.equals(this.zzc, zzahbVar.zzc) && Arrays.equals(this.zzd, zzahbVar.zzd)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        String str = this.zza;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        return ((((((i10 + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.zzb.hashCode()) * 31) + this.zzc.hashCode()) * 31) + Arrays.hashCode(this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzahf
    public final String toString() {
        return this.zzf + ": mimeType=" + this.zza + ", filename=" + this.zzb + ", description=" + this.zzc;
    }
}
