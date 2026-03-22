package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.d  reason: case insensitive filesystem */
/* loaded from: classes6.dex */
public class C3281d extends WebView {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.v f33958a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3281d(@NotNull Context context) {
        super(context.getApplicationContext());
        Intrinsics.checkNotNullParameter(context, "context");
        this.f33958a = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.v();
    }

    @Override // android.webkit.WebView
    public void destroy() {
        ViewGroup viewGroup;
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            viewGroup = (ViewGroup) parent;
        } else {
            viewGroup = null;
        }
        if (viewGroup != null) {
            viewGroup.removeView(this);
        }
        removeAllViews();
        super.destroy();
    }

    @NotNull
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.v getHtmlCssFixer() {
        return this.f33958a;
    }
}
