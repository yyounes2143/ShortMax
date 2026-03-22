package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class k {
    public static final int a(int i10, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return (int) (i10 * context.getResources().getDisplayMetrics().density);
    }
}
