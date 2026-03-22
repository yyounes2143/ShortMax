package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.compose.runtime.internal.StabilityInferred;
import at.n;
import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.g;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.h;
import gt.g0;
import gt.q0;
import kotlin.KotlinNothingValueException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.o;
import kt.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@SuppressLint({"SetJavaScriptEnabled", "ViewConstructor"})
/* loaded from: classes6.dex */
public final class b extends WebView {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f34570i = new a(null);

    /* renamed from: j  reason: collision with root package name */
    public static final int f34571j = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final h f34572a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g f34573b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.acm.recorder.a f34574c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.c f34575d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final g0 f34576e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public final kt.e<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.b> f34577f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public final i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a> f34578g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public final i<Boolean> f34579h;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.TemplateWebView$loadHtml$2", f = "TemplateWebView.kt", l = {140}, m = "invokeSuspend")
    /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0531b extends SuspendLambda implements Function2<g0, rs.c<? super com.moloco.sdk.internal.g0<Unit, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a>>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public Object f34580h;

        /* renamed from: i  reason: collision with root package name */
        public int f34581i;

        /* renamed from: k  reason: collision with root package name */
        public final /* synthetic */ String f34583k;

        /* renamed from: l  reason: collision with root package name */
        public final /* synthetic */ long f34584l;

        @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.TemplateWebView$loadHtml$2$isLoadOperationTimedOut$1", f = "TemplateWebView.kt", l = {146}, m = "invokeSuspend")
        /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b$b$a */
        /* loaded from: classes6.dex */
        public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Pair<? extends Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a>>, Object> {

            /* renamed from: h  reason: collision with root package name */
            public int f34585h;

            /* renamed from: i  reason: collision with root package name */
            public final /* synthetic */ b f34586i;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.TemplateWebView$loadHtml$2$isLoadOperationTimedOut$1$1", f = "TemplateWebView.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0532a extends SuspendLambda implements n<Boolean, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a, rs.c<? super Pair<? extends Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a>>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f34587h;

                /* renamed from: i  reason: collision with root package name */
                public /* synthetic */ boolean f34588i;

                /* renamed from: j  reason: collision with root package name */
                public /* synthetic */ Object f34589j;

                public C0532a(rs.c<? super C0532a> cVar) {
                    super(3, cVar);
                }

                public final Object i(boolean z10, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a aVar, rs.c<? super Pair<Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a>> cVar) {
                    C0532a c0532a = new C0532a(cVar);
                    c0532a.f34588i = z10;
                    c0532a.f34589j = aVar;
                    return c0532a.invokeSuspend(Unit.f60915a);
                }

                @Override // at.n
                public /* bridge */ /* synthetic */ Object invoke(Boolean bool, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a aVar, rs.c<? super Pair<? extends Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a>> cVar) {
                    return i(bool.booleanValue(), aVar, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f34587h == 0) {
                        kotlin.f.b(obj);
                        return k.a(kotlin.coroutines.jvm.internal.a.a(this.f34588i), (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a) this.f34589j);
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.TemplateWebView$loadHtml$2$isLoadOperationTimedOut$1$2", f = "TemplateWebView.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b$b$a$b  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0533b extends SuspendLambda implements Function2<Pair<? extends Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a>, rs.c<? super Boolean>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f34590h;

                /* renamed from: i  reason: collision with root package name */
                public /* synthetic */ Object f34591i;

                public C0533b(rs.c<? super C0533b> cVar) {
                    super(2, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    C0533b c0533b = new C0533b(cVar);
                    c0533b.f34591i = obj;
                    return c0533b;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: i */
                public final Object invoke(Pair<Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a> pair, rs.c<? super Boolean> cVar) {
                    return ((C0533b) create(pair, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    boolean z10;
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f34590h == 0) {
                        kotlin.f.b(obj);
                        Pair pair = (Pair) this.f34591i;
                        boolean booleanValue = ((Boolean) pair.b()).booleanValue();
                        com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a aVar = (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a) pair.d();
                        if (!booleanValue && aVar == null) {
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
            public a(b bVar, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f34586i = bVar;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(g0 g0Var, rs.c<? super Pair<Boolean, ? extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a>> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                return new a(this.f34586i, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object f10 = kotlin.coroutines.intrinsics.a.f();
                int i10 = this.f34585h;
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    kt.b G = kotlinx.coroutines.flow.c.G(this.f34586i.f34575d.m(), this.f34586i.f34575d.c(), new C0532a(null));
                    C0533b c0533b = new C0533b(null);
                    this.f34585h = 1;
                    obj = kotlinx.coroutines.flow.c.x(G, c0533b, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0531b(String str, long j10, rs.c<? super C0531b> cVar) {
            super(2, cVar);
            this.f34583k = str;
            this.f34584l = j10;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super com.moloco.sdk.internal.g0<Unit, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a>> cVar) {
            return ((C0531b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new C0531b(this.f34583k, this.f34584l, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            com.moloco.sdk.acm.e eVar;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34581i;
            if (i10 != 0) {
                if (i10 == 1) {
                    eVar = (com.moloco.sdk.acm.e) this.f34580h;
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                com.moloco.sdk.acm.e c10 = b.this.f34574c.c(com.moloco.sdk.internal.client_metrics_data.d.f32080r.c());
                try {
                    b.this.loadDataWithBaseURL(null, this.f34583k, "text/html", "UTF-8", null);
                    long j10 = this.f34584l;
                    a aVar = new a(b.this, null);
                    this.f34580h = c10;
                    this.f34581i = 1;
                    Object f11 = TimeoutKt.f(j10, aVar, this);
                    if (f11 == f10) {
                        return f10;
                    }
                    eVar = c10;
                    obj = f11;
                } catch (Exception e10) {
                    MolocoLogger.error$default(MolocoLogger.INSTANCE, "TemplateWebView", "loadHtml failed to load the provided html", e10, false, 8, null);
                    com.moloco.sdk.acm.recorder.a aVar2 = b.this.f34574c;
                    com.moloco.sdk.acm.b bVar = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.E.c());
                    com.moloco.sdk.internal.client_metrics_data.c cVar = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                    com.moloco.sdk.acm.b e11 = bVar.e(cVar.c(), "failure");
                    com.moloco.sdk.internal.client_metrics_data.c cVar2 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
                    aVar2.b(e11.e(cVar2.c(), "invalid_url"));
                    b.this.f34574c.a(c10.f(cVar.c(), "failure").f(cVar2.c(), "invalid_url"));
                    return new g0.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a.f34639b);
                }
            }
            if (obj == null) {
                MolocoLogger.error$default(MolocoLogger.INSTANCE, "TemplateWebView", "Ad failed to load due to timeout", null, false, 12, null);
                com.moloco.sdk.acm.recorder.a aVar3 = b.this.f34574c;
                com.moloco.sdk.acm.b bVar2 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.E.c());
                com.moloco.sdk.internal.client_metrics_data.c cVar3 = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                com.moloco.sdk.acm.b e12 = bVar2.e(cVar3.c(), "failure");
                com.moloco.sdk.internal.client_metrics_data.c cVar4 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
                aVar3.b(e12.e(cVar4.c(), "timeout_error"));
                b.this.f34574c.a(eVar.f(cVar3.c(), "failure").f(cVar4.c(), "timeout_error"));
                return new g0.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a.f34643f);
            }
            boolean booleanValue = b.this.f34575d.m().getValue().booleanValue();
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a value = b.this.f34575d.c().getValue();
            if (value != null) {
                MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
                MolocoLogger.error$default(molocoLogger, "TemplateWebView", "Ad failed to load due to unrecoverable error: " + value.name(), null, false, 12, null);
                com.moloco.sdk.acm.recorder.a aVar4 = b.this.f34574c;
                com.moloco.sdk.acm.b bVar3 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.E.c());
                com.moloco.sdk.internal.client_metrics_data.c cVar5 = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                com.moloco.sdk.acm.b e13 = bVar3.e(cVar5.c(), "failure");
                com.moloco.sdk.internal.client_metrics_data.c cVar6 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
                aVar4.b(e13.e(cVar6.c(), value.name()));
                b.this.f34574c.a(eVar.f(cVar5.c(), "failure").f(cVar6.c(), value.name()));
                return new g0.a(value);
            } else if (booleanValue) {
                com.moloco.sdk.acm.recorder.a aVar5 = b.this.f34574c;
                com.moloco.sdk.acm.b bVar4 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.E.c());
                com.moloco.sdk.internal.client_metrics_data.c cVar7 = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                aVar5.b(bVar4.e(cVar7.c(), "success"));
                b.this.f34574c.a(eVar.f(cVar7.c(), "success"));
                return new g0.b(Unit.f60915a);
            } else {
                com.moloco.sdk.acm.recorder.a aVar6 = b.this.f34574c;
                com.moloco.sdk.acm.b bVar5 = new com.moloco.sdk.acm.b(com.moloco.sdk.internal.client_metrics_data.a.E.c());
                com.moloco.sdk.internal.client_metrics_data.c cVar8 = com.moloco.sdk.internal.client_metrics_data.c.f32057d;
                com.moloco.sdk.acm.b e14 = bVar5.e(cVar8.c(), "failure");
                com.moloco.sdk.internal.client_metrics_data.c cVar9 = com.moloco.sdk.internal.client_metrics_data.c.f32055b;
                aVar6.b(e14.e(cVar9.c(), "unknown_error"));
                b.this.f34574c.a(eVar.f(cVar8.c(), "failure").f(cVar9.c(), "unknown_error"));
                return new g0.a(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a.f34638a);
            }
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.TemplateWebView$startCollectingPlaylistItemDisplaying$1", f = "TemplateWebView.kt", l = {83}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34592h;

        /* renamed from: j  reason: collision with root package name */
        public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a f34594j;

        /* loaded from: classes6.dex */
        public static final class a<T> implements kt.c {

            /* renamed from: a  reason: collision with root package name */
            public final /* synthetic */ b f34595a;

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a f34596b;

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.TemplateWebView$startCollectingPlaylistItemDisplaying$1$1$1", f = "TemplateWebView.kt", l = {}, m = "invokeSuspend")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0534a extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

                /* renamed from: h  reason: collision with root package name */
                public int f34597h;

                /* renamed from: i  reason: collision with root package name */
                public final /* synthetic */ b f34598i;

                /* renamed from: j  reason: collision with root package name */
                public final /* synthetic */ g.a f34599j;

                /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b$c$a$a$a  reason: collision with other inner class name */
                /* loaded from: classes6.dex */
                public /* synthetic */ class C0535a {

                    /* renamed from: a  reason: collision with root package name */
                    public static final /* synthetic */ int[] f34600a;

                    static {
                        int[] iArr = new int[g.a.values().length];
                        try {
                            iArr[g.a.f34681d.ordinal()] = 1;
                        } catch (NoSuchFieldError unused) {
                        }
                        try {
                            iArr[g.a.f34680c.ordinal()] = 2;
                        } catch (NoSuchFieldError unused2) {
                        }
                        f34600a = iArr;
                    }
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C0534a(b bVar, g.a aVar, rs.c<? super C0534a> cVar) {
                    super(2, cVar);
                    this.f34598i = bVar;
                    this.f34599j = aVar;
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: a */
                public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
                    return ((C0534a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
                    return new C0534a(this.f34598i, this.f34599j, cVar);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    kotlin.coroutines.intrinsics.a.f();
                    if (this.f34597h == 0) {
                        kotlin.f.b(obj);
                        WebSettings settings = this.f34598i.getSettings();
                        int i10 = C0535a.f34600a[this.f34599j.ordinal()];
                        boolean z10 = true;
                        if (i10 != 1) {
                            if (i10 != 2) {
                                z10 = this.f34598i.getSettings().getMediaPlaybackRequiresUserGesture();
                            } else {
                                z10 = false;
                            }
                        }
                        settings.setMediaPlaybackRequiresUserGesture(z10);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.TemplateWebView$startCollectingPlaylistItemDisplaying$1$1", f = "TemplateWebView.kt", l = {85}, m = "emit")
            /* renamed from: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b$c$a$b  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            public static final class C0536b extends ContinuationImpl {

                /* renamed from: h  reason: collision with root package name */
                public Object f34601h;

                /* renamed from: i  reason: collision with root package name */
                public Object f34602i;

                /* renamed from: j  reason: collision with root package name */
                public /* synthetic */ Object f34603j;

                /* renamed from: k  reason: collision with root package name */
                public final /* synthetic */ a<T> f34604k;

                /* renamed from: l  reason: collision with root package name */
                public int f34605l;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                public C0536b(a<? super T> aVar, rs.c<? super C0536b> cVar) {
                    super(cVar);
                    this.f34604k = aVar;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    this.f34603j = obj;
                    this.f34605l |= Integer.MIN_VALUE;
                    return this.f34604k.emit(null, this);
                }
            }

            public a(b bVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a aVar) {
                this.f34595a = bVar;
                this.f34596b = aVar;
            }

            /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:3|(8:5|6|7|(1:(2:10|11)(2:19|20))(3:21|22|(1:24)(1:25))|12|(1:14)(1:18)|15|16))|29|6|7|(0)(0)|12|(0)(0)|15|16) */
            /* JADX WARN: Code restructure failed: missing block: B:14:0x0032, code lost:
                r12 = move-exception;
             */
            /* JADX WARN: Code restructure failed: missing block: B:28:0x00ed, code lost:
                com.moloco.sdk.internal.MolocoLogger.info$default(com.moloco.sdk.internal.MolocoLogger.INSTANCE, "TemplateWebView", "Failed to access WebView settings", r12, false, 8, null);
             */
            /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
            /* JADX WARN: Removed duplicated region for block: B:18:0x003e  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x0086 A[Catch: Exception -> 0x0032, TryCatch #0 {Exception -> 0x0032, blocks: (B:12:0x002e, B:23:0x005a, B:25:0x0086, B:26:0x00cd, B:19:0x0041), top: B:31:0x0022 }] */
            /* JADX WARN: Removed duplicated region for block: B:26:0x00cd A[Catch: Exception -> 0x0032, TRY_LEAVE, TryCatch #0 {Exception -> 0x0032, blocks: (B:12:0x002e, B:23:0x005a, B:25:0x0086, B:26:0x00cd, B:19:0x0041), top: B:31:0x0022 }] */
            @Override // kt.c
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.g.a r12, rs.c<? super kotlin.Unit> r13) {
                /*
                    Method dump skipped, instructions count: 253
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.b.c.a.emit(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.events.handlers.g$a, rs.c):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a aVar, rs.c<? super c> cVar) {
            super(2, cVar);
            this.f34594j = aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new c(this.f34594j, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34592h;
            try {
                if (i10 != 0) {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    kotlin.f.b(obj);
                } else {
                    kotlin.f.b(obj);
                    kt.d<g.a> c10 = b.this.f34573b.c();
                    a aVar = new a(b.this, this.f34594j);
                    this.f34592h = 1;
                    if (c10.collect(aVar, this) == f10) {
                        return f10;
                    }
                }
                throw new KotlinNothingValueException();
            } catch (Exception e10) {
                MolocoLogger.info$default(MolocoLogger.INSTANCE, "TemplateWebView", "Error collecting playlist item displaying events", e10, false, 8, null);
                return Unit.f60915a;
            }
        }
    }

    public /* synthetic */ b(Context context, h hVar, g gVar, com.moloco.sdk.acm.recorder.a aVar, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.c cVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, hVar, gVar, aVar, (i10 & 16) != 0 ? new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.c(hVar, aVar) : cVar);
    }

    @Nullable
    public final Object b(@NotNull String str, long j10, @NotNull rs.c<? super com.moloco.sdk.internal.g0<Unit, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a>> cVar) {
        return gt.e.g(q0.c(), new C0531b(str, j10, null), cVar);
    }

    @NotNull
    public final i<Boolean> c() {
        return this.f34579h;
    }

    public final void d(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.creative.mraid.a mraidCommunicationHub) {
        Intrinsics.checkNotNullParameter(mraidCommunicationHub, "mraidCommunicationHub");
        gt.g.d(this.f34576e, null, null, new c(mraidCommunicationHub, null), 3, null);
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
    public final i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.b> getOrientation$moloco_sdk_release() {
        return this.f34577f;
    }

    @NotNull
    public final i<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.errors.a> getUnrecoverableError() {
        return this.f34578g;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        kotlinx.coroutines.i.e(this.f34576e, null, 1, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(@NotNull Context context, @NotNull h contentLoadedEventHandler, @NotNull g playListItemDisplayingEventHandler, @NotNull com.moloco.sdk.acm.recorder.a metricsRecorder, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.renderer.c webViewClientImpl) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(contentLoadedEventHandler, "contentLoadedEventHandler");
        Intrinsics.checkNotNullParameter(playListItemDisplayingEventHandler, "playListItemDisplayingEventHandler");
        Intrinsics.checkNotNullParameter(metricsRecorder, "metricsRecorder");
        Intrinsics.checkNotNullParameter(webViewClientImpl, "webViewClientImpl");
        this.f34572a = contentLoadedEventHandler;
        this.f34573b = playListItemDisplayingEventHandler;
        this.f34574c = metricsRecorder;
        this.f34575d = webViewClientImpl;
        this.f34576e = kotlinx.coroutines.i.a(com.moloco.sdk.common_adapter_internal.a.f31991a.a().getMain());
        this.f34577f = o.a(new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.templates.ad.orientation.a.f34533d, false, 2, null));
        setWebViewClient(webViewClientImpl);
        setScrollBarStyle(0);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        WebSettings settings = getSettings();
        settings.setSupportZoom(false);
        settings.setJavaScriptEnabled(true);
        setSaveEnabled(false);
        settings.setDomStorageEnabled(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setAllowFileAccess(true);
        settings.setAllowContentAccess(true);
        setBackgroundColor(0);
        this.f34578g = webViewClientImpl.c();
        this.f34579h = webViewClientImpl.p();
    }
}
