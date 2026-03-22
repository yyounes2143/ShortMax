package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import androidx.annotation.RequiresApi;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RequiresApi(24)
/* loaded from: classes4.dex */
final class zzhn {
    private final MediaCodec.CryptoInfo zza;
    private final MediaCodec.CryptoInfo.Pattern zzb = new MediaCodec.CryptoInfo.Pattern(0, 0);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zza(zzhn zzhnVar, int i10, int i11) {
        MediaCodec.CryptoInfo.Pattern pattern = zzhnVar.zzb;
        pattern.set(i10, i11);
        zzhnVar.zza.setPattern(pattern);
    }
}
