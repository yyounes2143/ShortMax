package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class v {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final String f36535a = "\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\"> \n        <style> body { margin:0; padding:0; overflow:hidden; } </style>\n        ";

    @NotNull
    public final String a(@NotNull String toHtml) {
        Intrinsics.checkNotNullParameter(toHtml, "toHtml");
        return this.f36535a + toHtml;
    }
}
