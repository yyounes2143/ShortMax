package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.webkit.WebViewAssetLoader;
import androidx.webkit.WebViewClientCompat;
import com.moloco.sdk.internal.MolocoLogger;
import com.vungle.ads.internal.Constants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class w extends WebViewClientCompat {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f34376g = new a(null);

    /* renamed from: h  reason: collision with root package name */
    public static final int f34377h = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final y f34378a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final WebViewAssetLoader f34379b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final kt.e<Boolean> f34380c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final kt.i<Boolean> f34381d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> f34382e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> f34383f;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Uri a(WebResourceRequest webResourceRequest) {
            Uri url = webResourceRequest.getUrl();
            Uri parse = Uri.parse(StringsKt.N((url == null || (r4 = url.toString()) == null) ? "" : "", Constants.AD_MRAID_JS_FILE_NAME, "com.moloco.sdk.xenoss.sdkdevkit.mraid.js", true));
            Intrinsics.checkNotNullExpressionValue(parse, "parse(...)");
            return parse;
        }

        public a() {
        }
    }

    public w(@NotNull Context context, @NotNull y mraidJsCommandsSource) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mraidJsCommandsSource, "mraidJsCommandsSource");
        this.f34378a = mraidJsCommandsSource;
        WebViewAssetLoader build = new WebViewAssetLoader.Builder().addPathHandler(DomExceptionUtils.SEPARATOR, new WebViewAssetLoader.AssetsPathHandler(context.getApplicationContext())).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this.f34379b = build;
        kt.e<Boolean> a10 = kotlinx.coroutines.flow.o.a(Boolean.FALSE);
        this.f34380c = a10;
        this.f34381d = a10;
        kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> a11 = kotlinx.coroutines.flow.o.a(null);
        this.f34382e = a11;
        this.f34383f = kotlinx.coroutines.flow.c.d(a11);
    }

    @NotNull
    public final kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> c() {
        return this.f34383f;
    }

    @NotNull
    public final kt.i<Boolean> e() {
        return this.f34381d;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(@Nullable WebView webView, @Nullable String str) {
        super.onPageFinished(webView, str);
        this.f34380c.setValue(Boolean.TRUE);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(@Nullable WebView webView, @Nullable String str, @Nullable Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.f34380c.setValue(Boolean.FALSE);
    }

    @Override // android.webkit.WebViewClient
    @ms.c
    public void onReceivedError(@Nullable WebView webView, int i10, @Nullable String str, @Nullable String str2) {
        super.onReceivedError(webView, i10, str, str2);
        this.f34382e.setValue(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d.f33980a);
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        MolocoLogger.error$default(molocoLogger, "MraidWebViewClient", "onReceivedError " + str, null, false, 12, null);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(@Nullable WebView webView, @Nullable RenderProcessGoneDetail renderProcessGoneDetail) {
        this.f34382e.setValue(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d.f33981b);
        MolocoLogger.error$default(MolocoLogger.INSTANCE, "MraidWebViewClient", "onRenderProcessGone", null, false, 12, null);
        return true;
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(@Nullable WebView webView, @NotNull WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return this.f34379b.shouldInterceptRequest(f34376g.a(request));
    }

    @Override // android.webkit.WebViewClient
    @ms.c
    public boolean shouldOverrideUrlLoading(@Nullable WebView webView, @Nullable String str) {
        if (str == null) {
            return false;
        }
        return this.f34378a.a(str);
    }
}
