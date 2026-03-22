package com.vungle.ads.internal.ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.platform.WebViewUtil;
import com.vungle.ads.internal.util.HandlerScheduler;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.ViewUtility;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MRAIDAdWidget.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MRAIDAdWidget extends RelativeLayout {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String TAG = "MRAIDAdWidget";
    @Nullable
    private CloseDelegate closeDelegate;
    @Nullable
    private OnViewTouchListener onViewTouchListener;
    @Nullable
    private OrientationDelegate orientationDelegate;
    @Nullable
    private WebView webView;

    /* compiled from: MRAIDAdWidget.kt */
    @Metadata
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes7.dex */
    public @interface AdStopReason {
        @NotNull
        public static final Companion Companion = Companion.$$INSTANCE;
        public static final int IS_AD_FINISHED_BY_API = 4;
        public static final int IS_AD_FINISHING = 2;
        public static final int IS_CHANGING_CONFIGURATION = 1;

        /* compiled from: MRAIDAdWidget.kt */
        @Metadata
        /* loaded from: classes7.dex */
        public static final class Companion {
            static final /* synthetic */ Companion $$INSTANCE = new Companion();
            public static final int IS_AD_FINISHED_BY_API = 4;
            public static final int IS_AD_FINISHING = 2;
            public static final int IS_CHANGING_CONFIGURATION = 1;

            private Companion() {
            }
        }
    }

    /* compiled from: MRAIDAdWidget.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class AudioContextWrapper extends ContextWrapper {
        public AudioContextWrapper(@Nullable Context context) {
            super(context);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        @NotNull
        public Object getSystemService(@NotNull String name) {
            Object systemService;
            Intrinsics.checkNotNullParameter(name, "name");
            if (Intrinsics.areEqual("audio", name)) {
                systemService = getApplicationContext().getSystemService(name);
            } else {
                systemService = super.getSystemService(name);
            }
            Intrinsics.checkNotNullExpressionValue(systemService, "if (AUDIO_SERVICE == nam…rvice(name)\n            }");
            return systemService;
        }
    }

    /* compiled from: MRAIDAdWidget.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface CloseDelegate {
        void close();
    }

    /* compiled from: MRAIDAdWidget.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MRAIDAdWidget.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DestroyRunnable implements Runnable {
        @NotNull
        private final MRAIDAdWidget widget;

        public DestroyRunnable(@NotNull MRAIDAdWidget widget) {
            Intrinsics.checkNotNullParameter(widget, "widget");
            this.widget = widget;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewGroup viewGroup;
            try {
                this.widget.removeAllViews();
                WebView webView = this.widget.webView;
                if (webView != null) {
                    webView.setWebChromeClient(null);
                    webView.stopLoading();
                    webView.clearHistory();
                    if (Build.VERSION.SDK_INT >= 29) {
                        webView.setWebViewRenderProcessClient(null);
                    }
                    webView.loadUrl("about:blank");
                    webView.removeAllViews();
                    ViewParent parent = webView.getParent();
                    if (parent instanceof ViewGroup) {
                        viewGroup = (ViewGroup) parent;
                    } else {
                        viewGroup = null;
                    }
                    if (viewGroup != null) {
                        viewGroup.removeView(webView);
                    }
                    webView.destroy();
                }
                this.widget.webView = null;
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: MRAIDAdWidget.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface OnViewTouchListener {
        boolean onTouch(@Nullable MotionEvent motionEvent);
    }

    /* compiled from: MRAIDAdWidget.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface OrientationDelegate {
        void setOrientation(int i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MRAIDAdWidget(@NotNull Context context) throws InstantiationException {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        setLayoutParams(layoutParams);
        WebView webView = ViewUtility.INSTANCE.getWebView(context);
        this.webView = webView;
        if (webView != null) {
            webView.setLayoutParams(layoutParams);
        }
        WebView webView2 = this.webView;
        if (webView2 != null) {
            webView2.setTag("VungleWebView");
        }
        addView(this.webView, layoutParams);
        bindListeners();
        prepare();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private final void bindListeners() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.vungle.ads.internal.ui.view.a
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean m4845bindListeners$lambda0;
                    m4845bindListeners$lambda0 = MRAIDAdWidget.m4845bindListeners$lambda0(MRAIDAdWidget.this, view, motionEvent);
                    return m4845bindListeners$lambda0;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindListeners$lambda-0  reason: not valid java name */
    public static final boolean m4845bindListeners$lambda0(MRAIDAdWidget this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OnViewTouchListener onViewTouchListener = this$0.onViewTouchListener;
        if (onViewTouchListener != null) {
            return onViewTouchListener.onTouch(motionEvent);
        }
        return false;
    }

    private final void prepare() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.setLayerType(2, null);
            webView.setBackgroundColor(0);
            webView.setVisibility(8);
        }
    }

    public final void close() {
        CloseDelegate closeDelegate = this.closeDelegate;
        if (closeDelegate != null) {
            closeDelegate.close();
        }
    }

    public final void destroyWebView(long j10) {
        if (j10 <= 0) {
            new DestroyRunnable(this).run();
        } else {
            new HandlerScheduler().schedule(new DestroyRunnable(this), j10);
        }
    }

    @Nullable
    public final CloseDelegate getCloseDelegate$vungle_ads_release() {
        return this.closeDelegate;
    }

    @Nullable
    public final OnViewTouchListener getOnViewTouchListener$vungle_ads_release() {
        return this.onViewTouchListener;
    }

    @Nullable
    public final OrientationDelegate getOrientationDelegate$vungle_ads_release() {
        return this.orientationDelegate;
    }

    @Nullable
    public final String getUrl() {
        WebView webView = this.webView;
        if (webView != null) {
            return webView.getUrl();
        }
        return null;
    }

    public final void linkWebView(@NotNull WebViewClient vngWebViewClient, @Nullable AdPayload.WebViewSettings webViewSettings) {
        Intrinsics.checkNotNullParameter(vngWebViewClient, "vngWebViewClient");
        WebView webView = this.webView;
        if (webView != null) {
            WebViewUtil.INSTANCE.applyWebSettings(webView, webViewSettings);
            webView.setWebViewClient(vngWebViewClient);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        ViewGroup.LayoutParams layoutParams;
        super.onAttachedToWindow();
        ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = -1;
            layoutParams2.width = -1;
        }
        WebView webView = this.webView;
        if (webView != null && (layoutParams = webView.getLayoutParams()) != null) {
            layoutParams.height = -1;
            layoutParams.width = -1;
        }
    }

    public final void pauseWeb() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.onPause();
        }
    }

    public final void resumeWeb() {
        WebView webView = this.webView;
        if (webView != null) {
            webView.onResume();
        }
    }

    public final void setCloseDelegate(@NotNull CloseDelegate closeDelegate) {
        Intrinsics.checkNotNullParameter(closeDelegate, "closeDelegate");
        this.closeDelegate = closeDelegate;
    }

    public final void setCloseDelegate$vungle_ads_release(@Nullable CloseDelegate closeDelegate) {
        this.closeDelegate = closeDelegate;
    }

    public final void setOnViewTouchListener(@Nullable OnViewTouchListener onViewTouchListener) {
        this.onViewTouchListener = onViewTouchListener;
    }

    public final void setOnViewTouchListener$vungle_ads_release(@Nullable OnViewTouchListener onViewTouchListener) {
        this.onViewTouchListener = onViewTouchListener;
    }

    public final void setOrientation(int i10) {
        OrientationDelegate orientationDelegate = this.orientationDelegate;
        if (orientationDelegate != null) {
            orientationDelegate.setOrientation(i10);
        }
    }

    public final void setOrientationDelegate(@Nullable OrientationDelegate orientationDelegate) {
        this.orientationDelegate = orientationDelegate;
    }

    public final void setOrientationDelegate$vungle_ads_release(@Nullable OrientationDelegate orientationDelegate) {
        this.orientationDelegate = orientationDelegate;
    }

    public final void showWebsite(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "loadUrl: " + url);
        WebView webView = this.webView;
        if (webView != null) {
            webView.setVisibility(0);
            webView.loadUrl(url);
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void getCloseDelegate$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getOnViewTouchListener$vungle_ads_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getOrientationDelegate$vungle_ads_release$annotations() {
    }
}
