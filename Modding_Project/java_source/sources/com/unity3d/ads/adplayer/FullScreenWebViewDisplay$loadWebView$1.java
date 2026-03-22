package com.unity3d.ads.adplayer;

import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import com.unity3d.ads.adplayer.DisplayMessage;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.services.core.domain.ISDKDispatchers;
import gt.g;
import gt.g0;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FullScreenWebViewDisplay.kt */
@Metadata
@d(c = "com.unity3d.ads.adplayer.FullScreenWebViewDisplay$loadWebView$1", f = "FullScreenWebViewDisplay.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class FullScreenWebViewDisplay$loadWebView$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ WebView $webView;
    int label;
    final /* synthetic */ FullScreenWebViewDisplay this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FullScreenWebViewDisplay.kt */
    @Metadata
    @d(c = "com.unity3d.ads.adplayer.FullScreenWebViewDisplay$loadWebView$1$1", f = "FullScreenWebViewDisplay.kt", l = {125}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$loadWebView$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        int label;
        final /* synthetic */ FullScreenWebViewDisplay this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(FullScreenWebViewDisplay fullScreenWebViewDisplay, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.this$0 = fullScreenWebViewDisplay;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.this$0, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            String str;
            Map map;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                kt.d<DisplayMessage> displayMessages = AndroidFullscreenWebViewAdPlayer.Companion.getDisplayMessages();
                str = this.this$0.opportunityId;
                map = this.this$0.showOptions;
                DisplayMessage.DisplayReady displayReady = new DisplayMessage.DisplayReady(str, map);
                this.label = 1;
                if (displayMessages.emit(displayReady, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FullScreenWebViewDisplay.kt */
    @Metadata
    @d(c = "com.unity3d.ads.adplayer.FullScreenWebViewDisplay$loadWebView$1$2", f = "FullScreenWebViewDisplay.kt", l = {131}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.adplayer.FullScreenWebViewDisplay$loadWebView$1$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        int label;
        final /* synthetic */ FullScreenWebViewDisplay this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(FullScreenWebViewDisplay fullScreenWebViewDisplay, c<? super AnonymousClass2> cVar) {
            super(2, cVar);
            this.this$0 = fullScreenWebViewDisplay;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass2(this.this$0, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            String str;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                kt.d<DisplayMessage> displayMessages = AndroidFullscreenWebViewAdPlayer.Companion.getDisplayMessages();
                str = this.this$0.opportunityId;
                DisplayMessage.DisplayError displayError = new DisplayMessage.DisplayError(str, "WebView failed to attach to FullScreenWebViewDisplay.");
                this.label = 1;
                if (displayMessages.emit(displayError, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullScreenWebViewDisplay$loadWebView$1(WebView webView, FullScreenWebViewDisplay fullScreenWebViewDisplay, c<? super FullScreenWebViewDisplay$loadWebView$1> cVar) {
        super(2, cVar);
        this.$webView = webView;
        this.this$0 = fullScreenWebViewDisplay;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new FullScreenWebViewDisplay$loadWebView$1(this.$webView, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((FullScreenWebViewDisplay$loadWebView$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ISDKDispatchers dispatchers;
        SendDiagnosticEvent sendDiagnosticEvent;
        AdObject adObject;
        ViewGroup viewGroup;
        ISDKDispatchers dispatchers2;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            try {
                ViewParent parent = this.$webView.getParent();
                if (parent instanceof ViewGroup) {
                    viewGroup = (ViewGroup) parent;
                } else {
                    viewGroup = null;
                }
                if (viewGroup != null) {
                    viewGroup.removeView(this.$webView);
                }
                this.this$0.setContentView(this.$webView);
                dispatchers2 = this.this$0.getDispatchers();
                g.d(i.a(dispatchers2.getDefault()), null, null, new AnonymousClass1(this.this$0, null), 3, null);
            } catch (Throwable th2) {
                if (!(th2 instanceof CancellationException)) {
                    dispatchers = this.this$0.getDispatchers();
                    g.d(i.a(dispatchers.getDefault()), null, null, new AnonymousClass2(this.this$0, null), 3, null);
                    String message = th2.getMessage();
                    if (message == null) {
                        message = "Unknown";
                    }
                    Map f10 = p0.f(k.a("reason", message));
                    sendDiagnosticEvent = this.this$0.getSendDiagnosticEvent();
                    adObject = this.this$0.getAdObject();
                    SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_ad_viewer_fullscreen_intent_failed_to_attach_webview", null, f10, null, adObject, null, 42, null);
                    this.this$0.setResult(0);
                    this.this$0.finish();
                } else {
                    return Unit.f60915a;
                }
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
