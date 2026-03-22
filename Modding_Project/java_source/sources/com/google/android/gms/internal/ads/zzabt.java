package com.google.android.gms.internal.ads;

import android.view.Surface;
import androidx.annotation.RequiresApi;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RequiresApi(30)
/* loaded from: classes4.dex */
final class zzabt {
    public static void zza(Surface surface, float f10) {
        int i10;
        if (f10 == 0.0f) {
            i10 = 0;
        } else {
            i10 = 1;
        }
        try {
            surface.setFrameRate(f10, i10);
        } catch (IllegalStateException e10) {
            zzea.zzd("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e10);
        }
    }
}
