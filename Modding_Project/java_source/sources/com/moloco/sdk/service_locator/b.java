package com.moloco.sdk.service_locator;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.lifecycle.ProcessLifecycleOwner;
import com.moloco.sdk.BuildConfig;
import com.moloco.sdk.Init$SDKInitResponse;
import com.moloco.sdk.internal.B;
import com.moloco.sdk.internal.C3279b;
import com.moloco.sdk.internal.services.D;
import com.moloco.sdk.internal.services.SingleObserverBackgroundThenForegroundAnalyticsListener;
import com.moloco.sdk.internal.services.init.g;
import com.moloco.sdk.internal.services.j0;
import com.moloco.sdk.service_locator.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.L;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.l0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.m0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.n0;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.o0;
import gt.r1;
import io.ktor.client.HttpClient;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
@SuppressLint({"StaticFieldLeak"})
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f33619a = new b();

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final a f33620a = new a();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final ms.i f33621b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.a.c();
            }
        });

        /* renamed from: c  reason: collision with root package name */
        public static final int f33622c = 8;

        public static final com.moloco.sdk.internal.services.l c() {
            return new com.moloco.sdk.internal.services.l(b.f33619a.a());
        }

        @NotNull
        public final l0 a() {
            return m0.a(g.f33651a.a(), C0494b.f33623a.f());
        }

        @NotNull
        public final com.moloco.sdk.internal.services.l b() {
            return (com.moloco.sdk.internal.services.l) f33621b.getValue();
        }
    }

    @StabilityInferred(parameters = 0)
    /* renamed from: com.moloco.sdk.service_locator.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0494b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final C0494b f33623a = new C0494b();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final ms.i f33624b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.c
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.C0494b.a();
            }
        });
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final ms.i f33625c = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.C0494b.j();
            }
        });
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public static final ms.i f33626d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.C0494b.b();
            }
        });
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public static final ms.i f33627e = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.C0494b.c();
            }
        });
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public static final ms.i f33628f = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.C0494b.i();
            }
        });

        /* renamed from: g  reason: collision with root package name */
        public static final int f33629g = 8;

        public static final com.moloco.sdk.internal.services.analytics.b a() {
            com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l c10 = i.f33662a.c();
            k kVar = k.f33671a;
            return new com.moloco.sdk.internal.services.analytics.b(c10, kVar.b(), kVar.c());
        }

        public static final com.moloco.sdk.internal.services.g b() {
            return new com.moloco.sdk.internal.services.g(ProcessLifecycleOwner.Companion.get().getLifecycle(), f33623a.h());
        }

        public static final com.moloco.sdk.internal.error.c c() {
            return new com.moloco.sdk.internal.error.c(c.f33630a.b(), new com.moloco.sdk.internal.error.api.b(h.f33655a.h(), com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.d.a()));
        }

        public static final com.moloco.sdk.internal.ilrd.g i() {
            return new com.moloco.sdk.internal.ilrd.g(b.f33619a.a());
        }

        public static final SingleObserverBackgroundThenForegroundAnalyticsListener j() {
            return new SingleObserverBackgroundThenForegroundAnalyticsListener(f33623a.d(), h.f33655a.h());
        }

        @NotNull
        public final com.moloco.sdk.internal.services.analytics.a d() {
            return (com.moloco.sdk.internal.services.analytics.a) f33624b.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.r e() {
            return (com.moloco.sdk.internal.services.r) f33626d.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.error.b f() {
            return (com.moloco.sdk.internal.error.b) f33627e.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.ilrd.g g() {
            return (com.moloco.sdk.internal.ilrd.g) f33628f.getValue();
        }

        @NotNull
        public final SingleObserverBackgroundThenForegroundAnalyticsListener h() {
            return (SingleObserverBackgroundThenForegroundAnalyticsListener) f33625c.getValue();
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class c {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final c f33630a = new c();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final ms.i f33631b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.h
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.c.a();
            }
        });

        /* renamed from: c  reason: collision with root package name */
        public static final int f33632c = 8;

        public static final com.moloco.sdk.internal.services.config.b a() {
            return new com.moloco.sdk.internal.services.config.b();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.config.a b() {
            return (com.moloco.sdk.internal.services.config.a) f33631b.getValue();
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final d f33633a = new d();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final ms.i f33634b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.i
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.d.a();
            }
        });

        /* renamed from: c  reason: collision with root package name */
        public static final int f33635c = 8;

        public static final com.moloco.sdk.internal.error.crash.b a() {
            return new com.moloco.sdk.internal.error.crash.b(new com.moloco.sdk.internal.error.crash.e(CollectionsKt.e(new com.moloco.sdk.internal.error.crash.filters.b()), new com.moloco.sdk.internal.error.api.b(h.f33655a.h(), com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.d.a()), com.moloco.sdk.acm.recorder.a.Companion.b()));
        }

        @NotNull
        public final com.moloco.sdk.internal.error.crash.a b() {
            return (com.moloco.sdk.internal.error.crash.a) f33634b.getValue();
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class e {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final e f33636a = new e();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final ms.i f33637b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.j
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.e.b();
            }
        });
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final ms.i f33638c = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.k
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.e.f();
            }
        });
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public static final ms.i f33639d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.e.c();
            }
        });
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public static final ms.i f33640e = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.e.n();
            }
        });
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public static final ms.i f33641f = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.e.e();
            }
        });
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        public static final ms.i f33642g = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.o
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.e.d();
            }
        });
        @NotNull

        /* renamed from: h  reason: collision with root package name */
        public static final ms.i f33643h = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.p
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.e.a();
            }
        });

        /* renamed from: i  reason: collision with root package name */
        public static final int f33644i = 8;

        public static final com.moloco.sdk.internal.services.n a() {
            return new com.moloco.sdk.internal.services.n(b.f33619a.a());
        }

        public static final com.moloco.sdk.internal.services.y b() {
            return new com.moloco.sdk.internal.services.y(b.f33619a.a());
        }

        public static final com.moloco.sdk.internal.services.c0 c() {
            return new com.moloco.sdk.internal.services.c0(b.f33619a.a());
        }

        public static final com.moloco.sdk.internal.services.e0 d() {
            return new com.moloco.sdk.internal.services.e0(b.f33619a.a());
        }

        public static final com.moloco.sdk.internal.services.v e() {
            return new com.moloco.sdk.internal.services.v(b.f33619a.a());
        }

        public static final com.moloco.sdk.internal.services.u f() {
            return new com.moloco.sdk.internal.services.u(b.f33619a.a());
        }

        public static final com.moloco.sdk.internal.services.i n() {
            return new com.moloco.sdk.internal.services.i(b.f33619a.a());
        }

        @NotNull
        public final com.moloco.sdk.internal.services.m g() {
            return (com.moloco.sdk.internal.services.m) f33643h.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.x h() {
            return (com.moloco.sdk.internal.services.x) f33637b.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.b0 i() {
            return (com.moloco.sdk.internal.services.b0) f33639d.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.d0 j() {
            return (com.moloco.sdk.internal.services.d0) f33642g.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.g0 k() {
            return (com.moloco.sdk.internal.services.g0) f33641f.getValue();
        }

        @NotNull
        public final j0 l() {
            return (j0) f33638c.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.f m() {
            return (com.moloco.sdk.internal.services.f) f33640e.getValue();
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class f {
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public static volatile com.moloco.sdk.internal.e f33646b;
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final f f33645a = new f();
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final ms.i f33647c = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.q
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.f.g();
            }
        });
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public static final ms.i f33648d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.r
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.f.e();
            }
        });
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public static final ms.i f33649e = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.s
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.f.f();
            }
        });

        /* renamed from: f  reason: collision with root package name */
        public static final int f33650f = 8;

        public static final com.moloco.sdk.internal.services.init.e e() {
            e eVar = e.f33636a;
            return new com.moloco.sdk.internal.services.init.e(eVar.l(), eVar.h(), k.f33671a.f(), BuildConfig.SDK_VERSION_NAME, BuildConfig.MOLOCO_ENDPOINT_INIT_CONFIG, 3000L, i.f33662a.a());
        }

        public static final com.moloco.sdk.internal.services.init.l f() {
            com.moloco.sdk.internal.services.init.d b10 = f33645a.b();
            g.a aVar = com.moloco.sdk.internal.services.init.g.f33444a;
            SharedPreferences sharedPreferences = b.f33619a.a().getSharedPreferences("moloco_sdk_init_cache", 0);
            Intrinsics.checkNotNullExpressionValue(sharedPreferences, "getSharedPreferences(...)");
            return new com.moloco.sdk.internal.services.init.l(b10, aVar.a(sharedPreferences), kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().getIo().plus(r1.b(null, 1, null))));
        }

        public static final com.moloco.sdk.internal.services.init.n g() {
            return new com.moloco.sdk.internal.services.init.n(BuildConfig.MOLOCO_ENDPOINT_INIT_TRACKING, com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.d.a());
        }

        @NotNull
        public final com.moloco.sdk.internal.e a(@NotNull Init$SDKInitResponse initResponse) {
            Intrinsics.checkNotNullParameter(initResponse, "initResponse");
            com.moloco.sdk.internal.e eVar = f33646b;
            if (eVar == null) {
                synchronized (this) {
                    eVar = f33646b;
                    if (eVar == null) {
                        eVar = new C3279b(initResponse, k.f33671a.b(), h.f33655a.e());
                        f33646b = eVar;
                    }
                }
            }
            return eVar;
        }

        @NotNull
        public final com.moloco.sdk.internal.services.init.d b() {
            return (com.moloco.sdk.internal.services.init.d) f33648d.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.init.j c() {
            return (com.moloco.sdk.internal.services.init.j) f33649e.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.init.m d() {
            return (com.moloco.sdk.internal.services.init.m) f33647c.getValue();
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class g {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final g f33651a = new g();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final ms.i f33652b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.t
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.g.d();
            }
        });
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final ms.i f33653c = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.u
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.g.c();
            }
        });

        /* renamed from: d  reason: collision with root package name */
        public static final int f33654d = 8;

        public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.j c() {
            g gVar = f33651a;
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.o b10 = gVar.b();
            e eVar = e.f33636a;
            com.moloco.sdk.internal.services.g0 k10 = eVar.k();
            C0494b c0494b = C0494b.f33623a;
            com.moloco.sdk.internal.error.b f10 = c0494b.f();
            i iVar = i.f33662a;
            return new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.j(gVar.b(), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.d(eVar.k(), c0494b.f(), iVar.a()), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.b(b10, k10, f10, iVar.a()), new com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.m(b.f33619a.a(), "com.moloco.sdk.xenoss.sdkdevkit.android.cache"));
        }

        public static final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.o d() {
            return (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.o) c.f33630a.b().b(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.o.class, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.q.a());
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n a() {
            return (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.n) f33653c.getValue();
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.o b() {
            return (com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.o) f33652b.getValue();
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class h {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final h f33655a = new h();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final ms.i f33656b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.v
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.h.l();
            }
        });
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final ms.i f33657c = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.w
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.h.k();
            }
        });
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public static final ms.i f33658d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.x
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.h.b();
            }
        });
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public static final ms.i f33659e = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.y
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.h.m();
            }
        });
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        public static final ms.i f33660f = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.z
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.h.a();
            }
        });

        /* renamed from: g  reason: collision with root package name */
        public static final int f33661g = 8;

        public static final ActivityManager a() {
            Object systemService = b.f33619a.a().getSystemService("activity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.ActivityManager");
            return (ActivityManager) systemService;
        }

        public static final com.moloco.sdk.internal.services.q b() {
            return new com.moloco.sdk.internal.services.q(b.f33619a.a());
        }

        public static final com.moloco.sdk.internal.services.proto.b k() {
            return new com.moloco.sdk.internal.services.proto.b();
        }

        public static final com.moloco.sdk.internal.services.k l() {
            return new com.moloco.sdk.internal.services.k();
        }

        public static final B m() {
            return new B();
        }

        @NotNull
        public final ActivityManager c() {
            return (ActivityManager) f33660f.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.p d() {
            return (com.moloco.sdk.internal.services.p) f33658d.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.f0 e() {
            return new com.moloco.sdk.internal.services.t(f(), k.f33671a.b());
        }

        @NotNull
        public final n0 f() {
            return new o0(b.f33619a.a());
        }

        @NotNull
        public final com.moloco.sdk.internal.services.proto.a g() {
            return (com.moloco.sdk.internal.services.proto.a) f33657c.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.j h() {
            return (com.moloco.sdk.internal.services.j) f33656b.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.a i() {
            return (com.moloco.sdk.internal.a) f33659e.getValue();
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.a0 j() {
            return new L();
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class i {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final i f33662a = new i();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final ms.i f33663b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.a0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.i.e();
            }
        });
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final ms.i f33664c = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.b0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.i.f();
            }
        });
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public static final ms.i f33665d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.c0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.i.h();
            }
        });
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public static final ms.i f33666e = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.d0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.i.g();
            }
        });

        /* renamed from: f  reason: collision with root package name */
        public static final int f33667f = 8;

        public static final HttpClient e() {
            e eVar = e.f33636a;
            return com.moloco.sdk.internal.http.e.a(eVar.h().invoke(), eVar.l().invoke());
        }

        public static final com.moloco.sdk.internal.services.c f() {
            return new com.moloco.sdk.internal.services.c(b.f33619a.a(), e.f33636a.l());
        }

        public static final com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l g() {
            return com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l.f36661a.a(f33662a.d());
        }

        public static final com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.p h() {
            return new com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.p(b.f33619a.a());
        }

        @NotNull
        public final HttpClient a() {
            return (HttpClient) f33663b.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.b b() {
            return (com.moloco.sdk.internal.services.b) f33664c.getValue();
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l c() {
            return (com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.l) f33666e.getValue();
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.o d() {
            return (com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.o) f33665d.getValue();
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class j {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final j f33668a = new j();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final ms.i f33669b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.e0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.j.a();
            }
        });

        /* renamed from: c  reason: collision with root package name */
        public static final int f33670c = 8;

        public static final D a() {
            SharedPreferences sharedPreferences = b.f33619a.a().getSharedPreferences("moloco_sdk_preferences", 0);
            Intrinsics.checkNotNull(sharedPreferences);
            return new D(sharedPreferences);
        }

        @NotNull
        public final com.moloco.sdk.internal.services.h0 b() {
            return (com.moloco.sdk.internal.services.h0) f33669b.getValue();
        }
    }

    @StabilityInferred(parameters = 0)
    /* loaded from: classes6.dex */
    public static final class k {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        public static final k f33671a = new k();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final ms.i f33672b = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.f0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.k.g();
            }
        });
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        public static final ms.i f33673c = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.g0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.k.h();
            }
        });
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        public static final ms.i f33674d = kotlin.c.b(new Function0() { // from class: com.moloco.sdk.service_locator.h0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return b.k.a();
            }
        });

        /* renamed from: e  reason: collision with root package name */
        public static final int f33675e = 8;

        public static final com.moloco.sdk.internal.services.events.c a() {
            return new com.moloco.sdk.internal.services.events.c();
        }

        public static final com.moloco.sdk.internal.services.usertracker.c g() {
            return new com.moloco.sdk.internal.services.usertracker.c(j.f33668a.b());
        }

        public static final com.moloco.sdk.internal.services.usertracker.g h() {
            k kVar = f33671a;
            return new com.moloco.sdk.internal.services.usertracker.g(kVar.e(), kVar.d());
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a b() {
            e eVar = e.f33636a;
            com.moloco.sdk.internal.services.x h10 = eVar.h();
            com.moloco.sdk.internal.services.b b10 = i.f33662a.b();
            j0 l10 = eVar.l();
            com.moloco.sdk.internal.services.f m10 = eVar.m();
            com.moloco.sdk.internal.services.usertracker.e f10 = f();
            h hVar = h.f33655a;
            return new com.moloco.sdk.internal.services.events.a(h10, b10, l10, m10, f10, hVar.d(), hVar.g(), c(), BuildConfig.SDK_VERSION_NAME);
        }

        @NotNull
        public final com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b c() {
            return (com.moloco.sdk.xenoss.sdkdevkit.android.core.services.b) f33674d.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.usertracker.b d() {
            return (com.moloco.sdk.internal.services.usertracker.b) f33672b.getValue();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.usertracker.d e() {
            return new com.moloco.sdk.internal.services.usertracker.a();
        }

        @NotNull
        public final com.moloco.sdk.internal.services.usertracker.e f() {
            return (com.moloco.sdk.internal.services.usertracker.e) f33673c.getValue();
        }
    }

    @NotNull
    public final Context a() {
        return com.moloco.sdk.internal.android_context.b.b(null, 1, null);
    }
}
