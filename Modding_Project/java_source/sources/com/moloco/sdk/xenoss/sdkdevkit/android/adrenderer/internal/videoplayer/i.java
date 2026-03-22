package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.videoplayer;

import android.view.View;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0;
import kotlin.jvm.internal.SourceDebugExtension;
@SourceDebugExtension({"SMAP\nVisibilityAwareVideoPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisibilityAwareVideoPlayer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/VisibilityAwareVideoPlayerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"})
/* loaded from: classes6.dex */
public final class i {
    public static final kt.b<Boolean> b(a0 a0Var, View view) {
        kt.b<Boolean> a10;
        if (view == null || (a10 = a0Var.a(view)) == null) {
            return kotlinx.coroutines.flow.c.H(Boolean.FALSE);
        }
        return a10;
    }
}
