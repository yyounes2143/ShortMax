package com.unity3d.ads.core.domain;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidGetWebViewContainerUseCase.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidGetWebViewContainerUseCase$invoke$webview$1", f = "AndroidGetWebViewContainerUseCase.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidGetWebViewContainerUseCase$invoke$webview$1 extends SuspendLambda implements Function2<g0, c<? super WebView>, Object> {
    int label;
    final /* synthetic */ AndroidGetWebViewContainerUseCase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidGetWebViewContainerUseCase$invoke$webview$1(AndroidGetWebViewContainerUseCase androidGetWebViewContainerUseCase, c<? super AndroidGetWebViewContainerUseCase$invoke$webview$1> cVar) {
        super(2, cVar);
        this.this$0 = androidGetWebViewContainerUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidGetWebViewContainerUseCase$invoke$webview$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super WebView> cVar) {
        return ((AndroidGetWebViewContainerUseCase$invoke$webview$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Context context;
        AndroidWebViewClient androidWebViewClient;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            context = this.this$0.context;
            WebView webView = new WebView(context);
            AndroidGetWebViewContainerUseCase androidGetWebViewContainerUseCase = this.this$0;
            WebSettings settings = webView.getSettings();
            settings.setAllowFileAccess(false);
            settings.setBlockNetworkImage(false);
            settings.setBlockNetworkLoads(false);
            settings.setBuiltInZoomControls(false);
            settings.setCacheMode(-1);
            settings.setDatabaseEnabled(false);
            settings.setDisplayZoomControls(false);
            settings.setDomStorageEnabled(false);
            settings.setGeolocationEnabled(false);
            settings.setJavaScriptCanOpenWindowsAutomatically(false);
            settings.setJavaScriptEnabled(true);
            settings.setLoadWithOverviewMode(false);
            settings.setLoadsImagesAutomatically(true);
            settings.setMediaPlaybackRequiresUserGesture(false);
            settings.setMixedContentMode(1);
            settings.setNeedInitialFocus(true);
            settings.setSupportMultipleWindows(false);
            settings.setSupportZoom(false);
            settings.setUseWideViewPort(true);
            settings.setMediaPlaybackRequiresUserGesture(false);
            androidWebViewClient = androidGetWebViewContainerUseCase.androidWebViewClient;
            webView.setWebViewClient(androidWebViewClient);
            webView.setHorizontalScrollBarEnabled(false);
            webView.setVerticalScrollBarEnabled(false);
            webView.setInitialScale(0);
            webView.setBackgroundColor(0);
            webView.setBackgroundResource(0);
            return webView;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
