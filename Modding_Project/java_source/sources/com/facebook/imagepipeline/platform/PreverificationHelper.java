package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import com.facebook.soloader.g;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: PreverificationHelper.kt */
@g
@Metadata
/* loaded from: classes3.dex */
public final class PreverificationHelper {
    @g
    @TargetApi(26)
    public final boolean shouldUseHardwareBitmapConfig(@Nullable Bitmap.Config config) {
        Bitmap.Config config2;
        config2 = Bitmap.Config.HARDWARE;
        if (config == config2) {
            return true;
        }
        return false;
    }
}
