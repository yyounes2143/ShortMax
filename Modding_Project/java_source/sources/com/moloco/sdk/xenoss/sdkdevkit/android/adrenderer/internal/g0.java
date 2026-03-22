package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.webkit.WebView;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class g0 {
    public static final void a(@NotNull WebView webView, @NotNull String data) {
        Intrinsics.checkNotNullParameter(webView, "<this>");
        Intrinsics.checkNotNullParameter(data, "data");
        webView.loadDataWithBaseURL("https://appassets.androidplatform.net", data, "text/html", "utf-8", null);
    }
}
