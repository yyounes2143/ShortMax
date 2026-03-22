package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebSettings;
import androidx.compose.runtime.internal.StabilityInferred;
import at.n;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.internal.services.f0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.C3281d;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.g;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r;
import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import gt.e;
import gt.g0;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutKt;
import kt.f;
import kt.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SuppressLint({"SetJavaScriptEnabled", "ViewConstructor"})
/* loaded from: classes6.dex */
public final class a extends C3281d implements q {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g0 f34442b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final f0 f34443c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final r f34444d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f34445e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final c f34446f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final i<g> f34447g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final f<Unit> f34448h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public final i<Boolean> f34449i;

    @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticWebView$loadHtml$2", f = "StaticWebView.kt", l = {113}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0522a extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.internal.g0<Unit, g>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34450h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ String f34452j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ long f34453k;

        @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticWebView$loadHtml$2$isLoadOperationTimedOut$1", f = "StaticWebView.kt", l = {119}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0523a extends SuspendLambda implements Function2<g0, rs.c<? super Pair<? extends Boolean, ? extends g>>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f34454h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ a f34455i;

            @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticWebView$loadHtml$2$isLoadOperationTimedOut$1$1", f = "StaticWebView.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0524a extends SuspendLambda implements n<Boolean, g, rs.c<? super Pair<? extends Boolean, ? extends g>>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f34456h;

                /* renamed from: i  reason: collision with root package name */
                public /* synthetic */ boolean f34457i;

                /* renamed from: j  reason: collision with root package name */
                public /* synthetic */ Object f34458j;

                public C0524a(rs.c<? super C0524a> cVar) {
                    super(3, cVar);
                }

                public final Object i(boolean z10, g gVar, rs.c<? super Pair<Boolean, ? extends g>> cVar) {
                    C0524a c0524a = new C0524a(cVar);
                    c0524a.f34457i = z10;
                    c0524a.f34458j = gVar;
                    return c0524a.invokeSuspend(Unit.f60915a);
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Object invoke(Boolean bool, g gVar, rs.c<? super Pair<? extends Boolean, ? extends g>> cVar) {
                    return i(bool.booleanValue(), gVar, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f34456h == 0) {
                        kotlin.f.b(obj);
                        return k.a(kotlin.coroutines.jvm.internal.a.a(this.f34457i), (g) this.f34458j);
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            @d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.StaticWebView$loadHtml$2$isLoadOperationTimedOut$1$2", f = "StaticWebView.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a$a$a$b */
            /* loaded from: classes6.dex */
            public static final class b extends SuspendLambda implements Function2<Pair<? extends Boolean, ? extends g>, rs.c<? super Boolean>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f34459h;

                /* renamed from: i  reason: collision with root package name */
                public /* synthetic */ Object f34460i;

                public b(rs.c<? super b> cVar) {
                    super(2, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    b bVar = new b(cVar);
                    bVar.f34460i = obj;
                    return bVar;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: i */
                public final Object invoke(Pair<Boolean, ? extends g> pair, rs.c<? super Boolean> cVar) {
                    return ((b) create(pair, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    boolean z10;
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f34459h == 0) {
                        kotlin.f.b(obj);
                        Pair pair = (Pair) this.f34460i;
                        boolean booleanValue = ((Boolean) pair.b()).booleanValue();
                        g gVar = (g) pair.d();
                        if (!booleanValue && gVar == null) {
                            z10 = false;
                        } else {
                            z10 = true;
                        }
                        return kotlin.coroutines.jvm.internal.a.a(z10);
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0523a(a aVar, rs.c<? super C0523a> cVar) {
                super(2, cVar);
                this.f34455i = aVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(g0 g0Var, rs.c<? super Pair<Boolean, ? extends g>> cVar) {
                return ((C0523a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new C0523a(this.f34455i, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f34454h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    kt.b G = kotlinx.coroutines.flow.c.G(this.f34455i.f34446f.o(), this.f34455i.f34446f.m(), new C0524a(null));
                    b bVar = new b(null);
                    this.f34454h = 1;
                    obj = kotlinx.coroutines.flow.c.x(G, bVar, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0522a(String str, long j10, rs.c<? super C0522a> cVar) {
            super(2, cVar);
            this.f34452j = str;
            this.f34453k = j10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<Unit, g>> cVar) {
            return ((C0522a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new C0522a(this.f34452j, this.f34453k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34450h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                try {
                    a aVar = a.this;
                    com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.g0.a(aVar, aVar.getHtmlCssFixer().a(this.f34452j));
                    long j10 = this.f34453k;
                    C0523a c0523a = new C0523a(a.this, null);
                    this.f34450h = 1;
                    obj = TimeoutKt.f(j10, c0523a, this);
                    if (obj == f10) {
                        return f10;
                    }
                } catch (Exception e10) {
                    MolocoLogger.error$default(MolocoLogger.INSTANCE, "StaticWebView", "loadHtml", e10, false, 8, null);
                    return new g0.a(g.f34005b);
                }
            }
            if (obj == null) {
                a.this.f34446f.e();
            }
            boolean booleanValue = a.this.f34446f.o().getValue().booleanValue();
            g value = a.this.f34446f.m().getValue();
            if (value != null) {
                return new g0.a(value);
            }
            if (booleanValue) {
                return new g0.b(Unit.f60915a);
            }
            return new g0.a(g.f34004a);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ a(android.content.Context r8, gt.g0 r9, com.moloco.sdk.internal.services.f0 r10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r r11, boolean r12, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.c r13, int r14, kotlin.jvm.internal.DefaultConstructorMarker r15) {
        /*
            r7 = this;
            r15 = r14 & 2
            if (r15 == 0) goto L10
            com.moloco.sdk.internal.scheduling.a r9 = com.moloco.sdk.internal.scheduling.c.a()
            kotlin.coroutines.CoroutineContext r9 = r9.getMain()
            gt.g0 r9 = kotlinx.coroutines.i.a(r9)
        L10:
            r2 = r9
            r9 = r14 & 16
            if (r9 == 0) goto L16
            r12 = 0
        L16:
            r5 = r12
            r9 = r14 & 32
            if (r9 == 0) goto L20
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.c r13 = new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.c
            r13.<init>(r2, r10, r11)
        L20:
            r6 = r13
            r0 = r7
            r1 = r8
            r3 = r10
            r4 = r11
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.a.<init>(android.content.Context, gt.g0, com.moloco.sdk.internal.services.f0, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.r, boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.c, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Nullable
    public final Object b(@NotNull String str, long j10, @NotNull rs.c<? super com.moloco.sdk.internal.g0<Unit, g>> cVar) {
        return e.g(com.moloco.sdk.internal.scheduling.c.a().getMain(), new C0522a(str, j10, null), cVar);
    }

    @NotNull
    public final i<Boolean> c() {
        return this.f34449i;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.C3281d, android.webkit.WebView
    public void destroy() {
        super.destroy();
        kotlinx.coroutines.i.e(this.f34442b, null, 1, null);
    }

    @NotNull
    public final f<Unit> getClickthroughEvent() {
        return this.f34448h;
    }

    @NotNull
    public final i<g> getUnrecoverableError() {
        return this.f34447g;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void h(@NotNull a.AbstractC0597a.c button) {
        Intrinsics.checkNotNullParameter(button, "button");
        this.f34446f.h(button);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.q
    public void i(@NotNull a.AbstractC0597a.c.EnumC0599a buttonType) {
        Intrinsics.checkNotNullParameter(buttonType, "buttonType");
        this.f34446f.i(buttonType);
    }

    @Override // android.webkit.WebView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.f34445e) {
            return false;
        }
        if (event.getAction() == 0) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            this.f34446f.b(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.staticrenderer.model.a(kotlin.collections.n.j0(iArr), kotlin.collections.n.W0(iArr), getHeight(), getWidth(), (int) (event.getX() + kotlin.collections.n.j0(iArr)), (int) (event.getY() + kotlin.collections.n.W0(iArr))));
        }
        return super.onTouchEvent(event);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull Context context, @NotNull gt.g0 scope, @NotNull f0 clickthroughService, @NotNull r buttonTracker, boolean z10, @NotNull c webViewClientImpl) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(clickthroughService, "clickthroughService");
        Intrinsics.checkNotNullParameter(buttonTracker, "buttonTracker");
        Intrinsics.checkNotNullParameter(webViewClientImpl, "webViewClientImpl");
        this.f34442b = scope;
        this.f34443c = clickthroughService;
        this.f34444d = buttonTracker;
        this.f34445e = z10;
        this.f34446f = webViewClientImpl;
        setWebViewClient(webViewClientImpl);
        setScrollBarStyle(0);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        WebSettings settings = getSettings();
        settings.setSupportZoom(false);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        setBackgroundColor(0);
        setVisibility(8);
        this.f34447g = webViewClientImpl.m();
        this.f34448h = webViewClientImpl.j();
        this.f34449i = webViewClientImpl.p();
    }
}
