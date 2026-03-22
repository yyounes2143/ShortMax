package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class s {
    @NotNull
    public final FrameLayout a(@NotNull Context context, @NotNull WebView webView) {
        ViewGroup viewGroup;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(webView, "webView");
        ViewParent parent = webView.getParent();
        if (parent instanceof ViewGroup) {
            viewGroup = (ViewGroup) parent;
        } else {
            viewGroup = null;
        }
        if (viewGroup != null) {
            viewGroup.removeView(webView);
        }
        webView.setBackgroundColor(0);
        webView.setVisibility(0);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(webView, new ViewGroup.LayoutParams(-1, -1));
        return frameLayout;
    }
}
