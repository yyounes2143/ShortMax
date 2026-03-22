package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Arrays;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzagr implements zzau {
    public final String zza;
    public final String zzb;
    public final long zzc;
    public final long zzd;
    public final byte[] zze;
    private int zzf;

    static {
        zzx zzxVar = new zzx();
        zzxVar.zzah(MimeTypes.APPLICATION_ID3);
        zzxVar.zzan();
        zzx zzxVar2 = new zzx();
        zzxVar2.zzah(MimeTypes.APPLICATION_SCTE35);
        zzxVar2.zzan();
    }

    public zzagr(String str, String str2, long j10, long j11, byte[] bArr) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = j10;
        this.zzd = j11;
        this.zze = bArr;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzagr.class == obj.getClass()) {
            zzagr zzagrVar = (zzagr) obj;
            if (this.zzc == zzagrVar.zzc && this.zzd == zzagrVar.zzd && Objects.equals(this.zza, zzagrVar.zza) && Objects.equals(this.zzb, zzagrVar.zzb) && Arrays.equals(this.zze, zzagrVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i10 = this.zzf;
        if (i10 == 0) {
            int hashCode = ((this.zza.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER) * 31) + this.zzb.hashCode();
            long j10 = this.zzc;
            int hashCode2 = (((((hashCode * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) this.zzd)) * 31) + Arrays.hashCode(this.zze);
            this.zzf = hashCode2;
            return hashCode2;
        }
        return i10;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.zza + ", id=" + this.zzd + ", durationMs=" + this.zzc + ", value=" + this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final /* synthetic */ void zza(zzar zzarVar) {
    }
}
