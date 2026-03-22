package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.os.Build;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zztk {
    private static Boolean zza;

    public static int zza(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d10) {
        if (Build.VERSION.SDK_INT >= 29) {
            Boolean bool = zza;
            if (bool == null || !bool.booleanValue()) {
                return zztj.zza(videoCapabilities, i10, i11, d10);
            }
            return 0;
        }
        return 0;
    }
}
