package com.unity3d.ads.adplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.unity3d.ads.core.domain.SendWebViewClientErrorDiagnostics;
import gt.c0;
import gt.f0;
import gt.g;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.o;
import kt.e;
import kt.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidWebViewContainer.kt */
@Metadata
@SuppressLint({"ClickableViewAccessibility"})
@SourceDebugExtension({"SMAP\nAndroidWebViewContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebViewContainer.kt\ncom/unity3d/ads/adplayer/AndroidWebViewContainer\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n20#2:156\n22#2:160\n50#3:157\n55#3:159\n106#4:158\n1#5:161\n*S KotlinDebug\n*F\n+ 1 AndroidWebViewContainer.kt\ncom/unity3d/ads/adplayer/AndroidWebViewContainer\n*L\n41#1:156\n41#1:160\n41#1:157\n41#1:159\n41#1:158\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidWebViewContainer implements WebViewContainer {
    @NotNull
    private final e<InputEvent> _lastInputEvent;
    @NotNull
    private final Context context;
    @NotNull
    private final i<InputEvent> lastInputEvent;
    @NotNull
    private final g0 scope;
    @NotNull
    private final SendWebViewClientErrorDiagnostics sendWebViewClientErrorDiagnostics;
    @NotNull
    private final WebView webView;
    @NotNull
    private final AndroidWebViewClient webViewClient;

    /* compiled from: AndroidWebViewContainer.kt */
    @Metadata
    @d(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer$2", f = "AndroidWebViewContainer.kt", l = {42}, m = "invokeSuspend")
    /* renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$2  reason: invalid class name */
    /* loaded from: classes7.dex */
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Boolean, c<? super Unit>, Object> {
        int label;

        AnonymousClass2(c<? super AnonymousClass2> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
            return new AnonymousClass2(cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, c<? super Unit> cVar) {
            return invoke(bool.booleanValue(), cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
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
                AndroidWebViewContainer androidWebViewContainer = AndroidWebViewContainer.this;
                this.label = 1;
                if (androidWebViewContainer.onRenderProcessGone(this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }

        @Nullable
        public final Object invoke(boolean z10, @Nullable c<? super Unit> cVar) {
            return ((AnonymousClass2) create(Boolean.valueOf(z10), cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    public AndroidWebViewContainer(@NotNull WebView webView, @NotNull AndroidWebViewClient webViewClient, @NotNull SendWebViewClientErrorDiagnostics sendWebViewClientErrorDiagnostics, @NotNull c0 mainDispatcher, @NotNull c0 defaultDispatcher, @NotNull g0 adPlayerScope, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(webViewClient, "webViewClient");
        Intrinsics.checkNotNullParameter(sendWebViewClientErrorDiagnostics, "sendWebViewClientErrorDiagnostics");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        Intrinsics.checkNotNullParameter(context, "context");
        this.webView = webView;
        this.webViewClient = webViewClient;
        this.sendWebViewClientErrorDiagnostics = sendWebViewClientErrorDiagnostics;
        this.context = context;
        g0 i10 = kotlinx.coroutines.i.i(kotlinx.coroutines.i.i(adPlayerScope, mainDispatcher), new f0("AndroidWebViewContainer"));
        this.scope = i10;
        e<InputEvent> a10 = o.a(null);
        this._lastInputEvent = a10;
        this.lastInputEvent = kotlinx.coroutines.flow.c.d(a10);
        final i<Boolean> isRenderProcessGone = webViewClient.isRenderProcessGone();
        kotlinx.coroutines.flow.c.J(kotlinx.coroutines.flow.c.O(new kt.b<Boolean>() { // from class: com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1

            /* compiled from: Emitters.kt */
            @Metadata
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 AndroidWebViewContainer.kt\ncom/unity3d/ads/adplayer/AndroidWebViewContainer\n*L\n1#1,222:1\n21#2:223\n22#2:225\n41#3:224\n*E\n"})
            /* renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1$2  reason: invalid class name */
            /* loaded from: classes7.dex */
            public static final class AnonymousClass2<T> implements kt.c {
                final /* synthetic */ kt.c $this_unsafeFlow;

                /* compiled from: Emitters.kt */
                @Metadata
                @d(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1$2", f = "AndroidWebViewContainer.kt", l = {223}, m = "emit")
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"})
                /* renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1$2$1  reason: invalid class name */
                /* loaded from: classes7.dex */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(c cVar) {
                        super(cVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(kt.c cVar) {
                    this.$this_unsafeFlow = cVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
                @Override // kt.c
                @org.jetbrains.annotations.Nullable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, @org.jetbrains.annotations.NotNull rs.c r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1
                        if (r0 == 0) goto L13
                        r0 = r6
                        com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1$2$1 r0 = (com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1.AnonymousClass2.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r3 = r1 & r2
                        if (r3 == 0) goto L13
                        int r1 = r1 - r2
                        r0.label = r1
                        goto L18
                    L13:
                        com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1$2$1 r0 = new com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1$2$1
                        r0.<init>(r6)
                    L18:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L31
                        if (r2 != r3) goto L29
                        kotlin.f.b(r6)
                        goto L48
                    L29:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L31:
                        kotlin.f.b(r6)
                        kt.c r6 = r4.$this_unsafeFlow
                        r2 = r5
                        java.lang.Boolean r2 = (java.lang.Boolean) r2
                        boolean r2 = r2.booleanValue()
                        if (r2 == 0) goto L48
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L48
                        return r1
                    L48:
                        kotlin.Unit r5 = kotlin.Unit.f60915a
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1.AnonymousClass2.emit(java.lang.Object, rs.c):java.lang.Object");
                }
            }

            @Override // kt.b
            @Nullable
            public Object collect(@NotNull kt.c<? super Boolean> cVar, @NotNull c cVar2) {
                Object collect = kt.b.this.collect(new AnonymousClass2(cVar), cVar2);
                if (collect == kotlin.coroutines.intrinsics.a.f()) {
                    return collect;
                }
                return Unit.f60915a;
            }
        }, new AnonymousClass2(null)), kotlinx.coroutines.i.i(i10, defaultDispatcher));
        webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.unity3d.ads.adplayer.a
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean _init_$lambda$1;
                _init_$lambda$1 = AndroidWebViewContainer._init_$lambda$1(AndroidWebViewContainer.this, view, motionEvent);
                return _init_$lambda$1;
            }
        });
        applySafeAreaInsets();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$1(AndroidWebViewContainer this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0 || actionMasked == 1 || actionMasked == 5 || actionMasked == 6) {
            this$0._lastInputEvent.setValue(motionEvent);
            return false;
        }
        return false;
    }

    private final void applySafeAreaInsets() {
        ViewCompat.setOnApplyWindowInsetsListener(this.webView, new OnApplyWindowInsetsListener() { // from class: com.unity3d.ads.adplayer.b
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat applySafeAreaInsets$lambda$3;
                applySafeAreaInsets$lambda$3 = AndroidWebViewContainer.applySafeAreaInsets$lambda$3(AndroidWebViewContainer.this, view, windowInsetsCompat);
                return applySafeAreaInsets$lambda$3;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat applySafeAreaInsets$lambda$3(AndroidWebViewContainer this$0, View v10, WindowInsetsCompat insets) {
        Float d10;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(v10, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "insets.getInsets(WindowI…Compat.Type.systemBars())");
        Insets insets3 = insets.getInsets(WindowInsetsCompat.Type.displayCutout());
        Intrinsics.checkNotNullExpressionValue(insets3, "insets.getInsets(WindowI…pat.Type.displayCutout())");
        try {
            Result.a aVar = Result.f60901b;
            d10 = Result.d(Float.valueOf(this$0.context.getResources().getDisplayMetrics().density));
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        Float valueOf = Float.valueOf(1.0f);
        if (Result.i(d10)) {
            d10 = valueOf;
        }
        float floatValue = ((Number) d10).floatValue();
        int applySafeAreaInsets$lambda$3$toPx = applySafeAreaInsets$lambda$3$toPx(Math.max(insets2.left, insets3.left), floatValue);
        int applySafeAreaInsets$lambda$3$toPx2 = applySafeAreaInsets$lambda$3$toPx(Math.max(insets2.top, insets3.top), floatValue);
        int applySafeAreaInsets$lambda$3$toPx3 = applySafeAreaInsets$lambda$3$toPx(Math.max(insets2.right, insets3.right), floatValue);
        int applySafeAreaInsets$lambda$3$toPx4 = applySafeAreaInsets$lambda$3$toPx(Math.max(insets2.bottom, insets3.bottom), floatValue);
        g.d(this$0.scope, null, null, new AndroidWebViewContainer$applySafeAreaInsets$1$1(this$0, StringsKt.n("\n                (function() {\n                    const root = document.documentElement;\n                    root.style.setProperty('--safe-area-inset-left', '" + applySafeAreaInsets$lambda$3$toPx + "px');\n                    root.style.setProperty('--safe-area-inset-right', '" + applySafeAreaInsets$lambda$3$toPx3 + "px');\n                    root.style.setProperty('--safe-area-inset-top', '" + applySafeAreaInsets$lambda$3$toPx2 + "px');\n                    root.style.setProperty('--safe-area-inset-bottom', '" + applySafeAreaInsets$lambda$3$toPx4 + "px');\n                })();\n            "), null), 3, null);
        return insets;
    }

    private static final int applySafeAreaInsets$lambda$3$toPx(int i10, float f10) {
        return (int) (i10 / f10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object onRenderProcessGone(rs.c<? super kotlin.Unit> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.unity3d.ads.adplayer.AndroidWebViewContainer$onRenderProcessGone$1
            if (r0 == 0) goto L13
            r0 = r8
            com.unity3d.ads.adplayer.AndroidWebViewContainer$onRenderProcessGone$1 r0 = (com.unity3d.ads.adplayer.AndroidWebViewContainer$onRenderProcessGone$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.AndroidWebViewContainer$onRenderProcessGone$1 r0 = new com.unity3d.ads.adplayer.AndroidWebViewContainer$onRenderProcessGone$1
            r0.<init>(r7, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.lang.Object r0 = r0.L$0
            com.unity3d.ads.adplayer.AndroidWebViewContainer r0 = (com.unity3d.ads.adplayer.AndroidWebViewContainer) r0
            kotlin.f.b(r8)
            goto L44
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L35:
            kotlin.f.b(r8)
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r8 = r7.destroy(r0)
            if (r8 != r1) goto L43
            return r1
        L43:
            r0 = r7
        L44:
            com.unity3d.ads.core.domain.SendWebViewClientErrorDiagnostics r8 = r0.sendWebViewClientErrorDiagnostics
            com.unity3d.ads.adplayer.model.WebViewClientError r6 = new com.unity3d.ads.adplayer.model.WebViewClientError
            com.unity3d.ads.adplayer.model.ErrorReason r2 = com.unity3d.ads.adplayer.model.ErrorReason.REASON_WEBVIEW_RENDER_PROCESS_GONE
            r4 = 4
            r5 = 0
            java.lang.String r1 = "Render process gone"
            r3 = 0
            r0 = r6
            r0.<init>(r1, r2, r3, r4, r5)
            java.util.List r0 = kotlin.collections.CollectionsKt.e(r6)
            r8.invoke(r0)
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.AndroidWebViewContainer.onRenderProcessGone(rs.c):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|23|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    @Override // com.unity3d.ads.adplayer.WebViewContainer
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object addJavascriptInterface(@org.jetbrains.annotations.NotNull com.unity3d.ads.adplayer.WebViewBridge r6, @org.jetbrains.annotations.NotNull java.lang.String r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.unity3d.ads.adplayer.AndroidWebViewContainer$addJavascriptInterface$1
            if (r0 == 0) goto L13
            r0 = r8
            com.unity3d.ads.adplayer.AndroidWebViewContainer$addJavascriptInterface$1 r0 = (com.unity3d.ads.adplayer.AndroidWebViewContainer$addJavascriptInterface$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.AndroidWebViewContainer$addJavascriptInterface$1 r0 = new com.unity3d.ads.adplayer.AndroidWebViewContainer$addJavascriptInterface$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r8)     // Catch: java.util.concurrent.CancellationException -> L49
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.f.b(r8)
            gt.g0 r8 = r5.scope     // Catch: java.util.concurrent.CancellationException -> L49
            kotlin.coroutines.CoroutineContext r8 = r8.getCoroutineContext()     // Catch: java.util.concurrent.CancellationException -> L49
            com.unity3d.ads.adplayer.AndroidWebViewContainer$addJavascriptInterface$2 r2 = new com.unity3d.ads.adplayer.AndroidWebViewContainer$addJavascriptInterface$2     // Catch: java.util.concurrent.CancellationException -> L49
            r4 = 0
            r2.<init>(r5, r7, r6, r4)     // Catch: java.util.concurrent.CancellationException -> L49
            r0.label = r3     // Catch: java.util.concurrent.CancellationException -> L49
            java.lang.Object r6 = gt.e.g(r8, r2, r0)     // Catch: java.util.concurrent.CancellationException -> L49
            if (r6 != r1) goto L49
            return r1
        L49:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.AndroidWebViewContainer.addJavascriptInterface(com.unity3d.ads.adplayer.WebViewBridge, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    @Override // com.unity3d.ads.adplayer.WebViewContainer
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object destroy(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.unity3d.ads.adplayer.AndroidWebViewContainer$destroy$1
            if (r0 == 0) goto L13
            r0 = r6
            com.unity3d.ads.adplayer.AndroidWebViewContainer$destroy$1 r0 = (com.unity3d.ads.adplayer.AndroidWebViewContainer$destroy$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.AndroidWebViewContainer$destroy$1 r0 = new com.unity3d.ads.adplayer.AndroidWebViewContainer$destroy$1
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L36
            if (r2 != r4) goto L2e
            java.lang.Object r0 = r0.L$0
            com.unity3d.ads.adplayer.AndroidWebViewContainer r0 = (com.unity3d.ads.adplayer.AndroidWebViewContainer) r0
            kotlin.f.b(r6)
            goto L56
        L2e:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L36:
            kotlin.f.b(r6)
            gt.g0 r6 = r5.scope
            kotlin.coroutines.CoroutineContext r6 = r6.getCoroutineContext()
            kotlinx.coroutines.v r2 = kotlinx.coroutines.v.f61916a
            kotlin.coroutines.CoroutineContext r6 = r6.plus(r2)
            com.unity3d.ads.adplayer.AndroidWebViewContainer$destroy$2 r2 = new com.unity3d.ads.adplayer.AndroidWebViewContainer$destroy$2
            r2.<init>(r5, r3)
            r0.L$0 = r5
            r0.label = r4
            java.lang.Object r6 = gt.e.g(r6, r2, r0)
            if (r6 != r1) goto L55
            return r1
        L55:
            r0 = r5
        L56:
            gt.g0 r6 = r0.scope
            kotlinx.coroutines.i.e(r6, r3, r4, r3)
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.AndroidWebViewContainer.destroy(rs.c):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|(2:3|(7:5|6|7|(1:(1:10)(2:16|17))(3:18|19|(1:21))|11|12|13))|23|6|7|(0)(0)|11|12|13) */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    @Override // com.unity3d.ads.adplayer.WebViewContainer
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object evaluateJavascript(@org.jetbrains.annotations.NotNull java.lang.String r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.unity3d.ads.adplayer.AndroidWebViewContainer$evaluateJavascript$1
            if (r0 == 0) goto L13
            r0 = r7
            com.unity3d.ads.adplayer.AndroidWebViewContainer$evaluateJavascript$1 r0 = (com.unity3d.ads.adplayer.AndroidWebViewContainer$evaluateJavascript$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.AndroidWebViewContainer$evaluateJavascript$1 r0 = new com.unity3d.ads.adplayer.AndroidWebViewContainer$evaluateJavascript$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r7)     // Catch: java.util.concurrent.CancellationException -> L49
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.f.b(r7)
            gt.g0 r7 = r5.scope     // Catch: java.util.concurrent.CancellationException -> L49
            kotlin.coroutines.CoroutineContext r7 = r7.getCoroutineContext()     // Catch: java.util.concurrent.CancellationException -> L49
            com.unity3d.ads.adplayer.AndroidWebViewContainer$evaluateJavascript$2 r2 = new com.unity3d.ads.adplayer.AndroidWebViewContainer$evaluateJavascript$2     // Catch: java.util.concurrent.CancellationException -> L49
            r4 = 0
            r2.<init>(r5, r6, r4)     // Catch: java.util.concurrent.CancellationException -> L49
            r0.label = r3     // Catch: java.util.concurrent.CancellationException -> L49
            java.lang.Object r6 = gt.e.g(r7, r2, r0)     // Catch: java.util.concurrent.CancellationException -> L49
            if (r6 != r1) goto L49
            return r1
        L49:
            kotlin.Unit r6 = kotlin.Unit.f60915a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.AndroidWebViewContainer.evaluateJavascript(java.lang.String, rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.adplayer.WebViewContainer
    @NotNull
    public i<InputEvent> getLastInputEvent() {
        return this.lastInputEvent;
    }

    @NotNull
    public final g0 getScope() {
        return this.scope;
    }

    @NotNull
    public final WebView getWebView() {
        return this.webView;
    }

    @NotNull
    public final e<InputEvent> get_lastInputEvent() {
        return this._lastInputEvent;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    @Override // com.unity3d.ads.adplayer.WebViewContainer
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object loadUrl(@org.jetbrains.annotations.NotNull java.lang.String r8, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.unity3d.ads.adplayer.AndroidWebViewContainer$loadUrl$1
            if (r0 == 0) goto L13
            r0 = r9
            com.unity3d.ads.adplayer.AndroidWebViewContainer$loadUrl$1 r0 = (com.unity3d.ads.adplayer.AndroidWebViewContainer$loadUrl$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.adplayer.AndroidWebViewContainer$loadUrl$1 r0 = new com.unity3d.ads.adplayer.AndroidWebViewContainer$loadUrl$1
            r0.<init>(r7, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L4f
            if (r2 == r5) goto L47
            if (r2 == r4) goto L3f
            if (r2 == r3) goto L33
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L33:
            java.lang.Object r8 = r0.L$1
            java.util.List r8 = (java.util.List) r8
            java.lang.Object r0 = r0.L$0
            com.unity3d.ads.adplayer.AndroidWebViewContainer r0 = (com.unity3d.ads.adplayer.AndroidWebViewContainer) r0
            kotlin.f.b(r9)
            goto L95
        L3f:
            java.lang.Object r8 = r0.L$0
            com.unity3d.ads.adplayer.AndroidWebViewContainer r8 = (com.unity3d.ads.adplayer.AndroidWebViewContainer) r8
            kotlin.f.b(r9)
            goto L7b
        L47:
            java.lang.Object r8 = r0.L$0
            com.unity3d.ads.adplayer.AndroidWebViewContainer r8 = (com.unity3d.ads.adplayer.AndroidWebViewContainer) r8
            kotlin.f.b(r9)
            goto L6a
        L4f:
            kotlin.f.b(r9)
            gt.g0 r9 = r7.scope
            kotlin.coroutines.CoroutineContext r9 = r9.getCoroutineContext()
            com.unity3d.ads.adplayer.AndroidWebViewContainer$loadUrl$2 r2 = new com.unity3d.ads.adplayer.AndroidWebViewContainer$loadUrl$2
            r6 = 0
            r2.<init>(r7, r8, r6)
            r0.L$0 = r7
            r0.label = r5
            java.lang.Object r8 = gt.e.g(r9, r2, r0)
            if (r8 != r1) goto L69
            return r1
        L69:
            r8 = r7
        L6a:
            com.unity3d.ads.adplayer.AndroidWebViewClient r9 = r8.webViewClient
            gt.k0 r9 = r9.getOnLoadFinished()
            r0.L$0 = r8
            r0.label = r4
            java.lang.Object r9 = r9.await(r0)
            if (r9 != r1) goto L7b
            return r1
        L7b:
            java.util.List r9 = (java.util.List) r9
            r2 = r9
            java.util.Collection r2 = (java.util.Collection) r2
            boolean r2 = r2.isEmpty()
            if (r2 != 0) goto La0
            r0.L$0 = r8
            r0.L$1 = r9
            r0.label = r3
            java.lang.Object r0 = r8.destroy(r0)
            if (r0 != r1) goto L93
            return r1
        L93:
            r0 = r8
            r8 = r9
        L95:
            com.unity3d.ads.core.domain.SendWebViewClientErrorDiagnostics r9 = r0.sendWebViewClientErrorDiagnostics
            r9.invoke(r8)
            com.unity3d.ads.adplayer.LoadWebViewError r9 = new com.unity3d.ads.adplayer.LoadWebViewError
            r9.<init>(r8)
            throw r9
        La0:
            kotlin.Unit r8 = kotlin.Unit.f60915a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.adplayer.AndroidWebViewContainer.loadUrl(java.lang.String, rs.c):java.lang.Object");
    }
}
