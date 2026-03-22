package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid;

import android.annotation.SuppressLint;
import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.webkit.WebViewClientCompat;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.C3281d;
import gt.g0;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SuppressLint({"SetJavaScriptEnabled", "ViewConstructor"})
/* loaded from: classes6.dex */
public final class v extends C3281d {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f34358e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    public static final int f34359f = 8;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final w f34360b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final kt.i<Boolean> f34361c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> f34362d;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidWebView$loadHtml$2", f = "MraidWebView.kt", l = {65}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34363h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ boolean f34364i;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ v f34365j;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ String f34366k;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidWebView$loadHtml$2$1", f = "MraidWebView.kt", l = {90}, m = "invokeSuspend")
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f34367h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ boolean f34368i;

            /* renamed from: j  reason: collision with root package name */
            public final /* synthetic */ v f34369j;

            /* renamed from: k  reason: collision with root package name */
            public final /* synthetic */ String f34370k;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidWebView$loadHtml$2$1$1", f = "MraidWebView.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.v$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0515a extends SuspendLambda implements at.n<Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d, rs.c<? super Pair<? extends Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f34371h;

                /* renamed from: i  reason: collision with root package name */
                public /* synthetic */ boolean f34372i;

                /* renamed from: j  reason: collision with root package name */
                public /* synthetic */ Object f34373j;

                public C0515a(rs.c<? super C0515a> cVar) {
                    super(3, cVar);
                }

                public final Object i(boolean z10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d dVar, rs.c<? super Pair<Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
                    C0515a c0515a = new C0515a(cVar);
                    c0515a.f34372i = z10;
                    c0515a.f34373j = dVar;
                    return c0515a.invokeSuspend(Unit.f60915a);
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Object invoke(Boolean bool, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d dVar, rs.c<? super Pair<? extends Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
                    return i(bool.booleanValue(), dVar, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f34371h == 0) {
                        kotlin.f.b(obj);
                        return ms.k.a(kotlin.coroutines.jvm.internal.a.a(this.f34372i), (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d) this.f34373j);
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.MraidWebView$loadHtml$2$1$2", f = "MraidWebView.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.mraid.v$b$a$b  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0516b extends SuspendLambda implements Function2<Pair<? extends Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>, rs.c<? super Boolean>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f34374h;

                /* renamed from: i  reason: collision with root package name */
                public /* synthetic */ Object f34375i;

                public C0516b(rs.c<? super C0516b> cVar) {
                    super(2, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    C0516b c0516b = new C0516b(cVar);
                    c0516b.f34375i = obj;
                    return c0516b;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: i */
                public final Object invoke(Pair<Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> pair, rs.c<? super Boolean> cVar) {
                    return ((C0516b) create(pair, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    boolean z10;
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f34374h == 0) {
                        kotlin.f.b(obj);
                        Pair pair = (Pair) this.f34375i;
                        boolean booleanValue = ((Boolean) pair.b()).booleanValue();
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d dVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d) pair.d();
                        if (!booleanValue && dVar == null) {
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
            public a(boolean z10, v vVar, String str, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f34368i = z10;
                this.f34369j = vVar;
                this.f34370k = str;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f34368i, this.f34369j, this.f34370k, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f34367h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    try {
                        if (this.f34368i) {
                            Context context = this.f34369j.getContext();
                            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.g0.a(this.f34369j, new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.w(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.r(context), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.t(), null, 4, null).a(this.f34370k));
                        } else {
                            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.g0.a(this.f34369j, this.f34370k);
                        }
                        kt.b G = kotlinx.coroutines.flow.c.G(this.f34369j.f34360b.e(), this.f34369j.f34360b.c(), new C0515a(null));
                        C0516b c0516b = new C0516b(null);
                        this.f34367h = 1;
                        obj = kotlinx.coroutines.flow.c.x(G, c0516b, this);
                        if (obj == f10) {
                            return f10;
                        }
                    } catch (Exception e10) {
                        MolocoLogger.error$default(MolocoLogger.INSTANCE, "MraidWebView", e10.toString(), null, false, 12, null);
                        return new g0.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d.f33982c);
                    }
                }
                Pair pair = (Pair) obj;
                boolean booleanValue = ((Boolean) pair.b()).booleanValue();
                com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d dVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d) pair.d();
                if (dVar != null) {
                    return new g0.a(dVar);
                }
                if (booleanValue) {
                    return new g0.b(new f(null, 1, null));
                }
                return new g0.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d.f33983d);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(boolean z10, v vVar, String str, rs.c<? super b> cVar) {
            super(2, cVar);
            this.f34364i = z10;
            this.f34365j = vVar;
            this.f34366k = str;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(this.f34364i, this.f34365j, this.f34366k, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34363h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                CoroutineContext main = com.moloco.sdk.internal.scheduling.c.a().getMain();
                a aVar = new a(this.f34364i, this.f34365j, this.f34366k, null);
                this.f34363h = 1;
                obj = gt.e.g(main, aVar, this);
                if (obj == f10) {
                    return f10;
                }
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(@NotNull Context context, @NotNull y mraidJsCommandUrlSource) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(mraidJsCommandUrlSource, "mraidJsCommandUrlSource");
        WebView.setWebContentsDebuggingEnabled(false);
        setScrollBarStyle(0);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setScrollContainer(false);
        WebSettings settings = getSettings();
        settings.setSupportZoom(false);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setMediaPlaybackRequiresUserGesture(true);
        setVisibility(8);
        w wVar = new w(context, mraidJsCommandUrlSource);
        setWebViewClient(wVar);
        this.f34360b = wVar;
        this.f34361c = wVar.e();
        this.f34362d = wVar.c();
    }

    @Nullable
    public final Object b(@NotNull String str, boolean z10, @NotNull rs.c<? super com.moloco.sdk.internal.g0<f, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d>> cVar) {
        return kotlinx.coroutines.i.f(new b(z10, this, str, null), cVar);
    }

    @NotNull
    public final kt.i<Boolean> c() {
        return this.f34361c;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.C3281d, android.webkit.WebView
    public void destroy() {
        super.destroy();
        setWebViewClient(new WebViewClientCompat());
    }

    @NotNull
    public final kt.i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.d> getUnrecoverableError() {
        return this.f34362d;
    }
}
