package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.webview.WebView;
import com.unity3d.services.core.webview.WebViewApp;
import gt.c0;
import gt.e;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: InitializeStateReset.kt */
@Metadata
@d(c = "com.unity3d.services.core.domain.task.InitializeStateReset$doWork$2$1$success$1", f = "InitializeStateReset.kt", l = {42}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class InitializeStateReset$doWork$2$1$success$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ WebViewApp $currentApp;
    int label;
    final /* synthetic */ InitializeStateReset this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InitializeStateReset.kt */
    @Metadata
    @d(c = "com.unity3d.services.core.domain.task.InitializeStateReset$doWork$2$1$success$1$1", f = "InitializeStateReset.kt", l = {}, m = "invokeSuspend")
    /* renamed from: com.unity3d.services.core.domain.task.InitializeStateReset$doWork$2$1$success$1$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
        final /* synthetic */ WebViewApp $currentApp;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(WebViewApp webViewApp, c<? super AnonymousClass1> cVar) {
            super(2, cVar);
            this.$currentApp = webViewApp;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass1(this.$currentApp, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            a.f();
            if (this.label == 0) {
                f.b(obj);
                WebView webView = this.$currentApp.getWebView();
                if (webView != null) {
                    webView.destroy();
                }
                this.$currentApp.setWebView(null);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InitializeStateReset$doWork$2$1$success$1(InitializeStateReset initializeStateReset, WebViewApp webViewApp, c<? super InitializeStateReset$doWork$2$1$success$1> cVar) {
        super(2, cVar);
        this.this$0 = initializeStateReset;
        this.$currentApp = webViewApp;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new InitializeStateReset$doWork$2$1$success$1(this.this$0, this.$currentApp, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((InitializeStateReset$doWork$2$1$success$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ISDKDispatchers iSDKDispatchers;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            iSDKDispatchers = this.this$0.dispatchers;
            c0 main = iSDKDispatchers.getMain();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$currentApp, null);
            this.label = 1;
            if (e.g(main, anonymousClass1, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
