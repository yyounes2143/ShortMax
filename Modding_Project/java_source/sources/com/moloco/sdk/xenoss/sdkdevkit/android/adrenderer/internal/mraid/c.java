package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f34242a = new c();

    public final float a(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public final float b(float f10, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return f10 / a(context);
    }

    public final int c(float f10, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) (b(f10, context) + 0.5f);
    }
}
