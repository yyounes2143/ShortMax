package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzty implements zztx {
    private zzty() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zztx
    public final int zza() {
        return MediaCodecList.getCodecCount();
    }

    @Override // com.google.android.gms.internal.ads.zztx
    public final MediaCodecInfo zzb(int i10) {
        return MediaCodecList.getCodecInfoAt(i10);
    }

    @Override // com.google.android.gms.internal.ads.zztx
    public final boolean zzc(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zztx
    public final boolean zzd(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        if ("secure-playback".equals(str) && "video/avc".equals(str2)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zztx
    public final boolean zze() {
        return false;
    }

    /* synthetic */ zzty(zzub zzubVar) {
    }
}
