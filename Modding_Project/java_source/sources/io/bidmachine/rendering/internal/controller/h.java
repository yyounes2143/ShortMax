package io.bidmachine.rendering.internal.controller;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.CallSuper;
import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import gt.g0;
import io.bidmachine.rendering.model.AnimationEventType;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.rendering.utils.NetworkRequest;
import io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.d0;
import tp.a0;
import tp.b0;
import tp.w;
import tp.y;
import tp.z;
@Metadata
/* loaded from: classes8.dex */
public final class h implements fq.q {
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final d f58137s = new d(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final sq.h f58138a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final io.bidmachine.rendering.internal.state.c f58139b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final fq.r f58140c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final eq.c f58141d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f58142e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final lq.a f58143f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final tp.g f58144g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private fq.s f58145h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final jq.e f58146i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final hq.a f58147j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final ms.i f58148k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final ms.i f58149l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final cr.c f58150m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final Map<tp.f, tq.b> f58151n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final List<tp.f> f58152o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final List<tp.f> f58153p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final List<tp.t> f58154q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final ms.i f58155r;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata
    /* loaded from: classes8.dex */
    public final class a extends b {
        public a() {
            super();
        }

        @Override // io.bidmachine.rendering.internal.controller.h.b, up.c
        public void a(@NotNull up.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            super.a(adForm);
            if (!h.B(h.this, adForm, false, 2, null)) {
                d(adForm, new rq.t("Failed to setup ad element (" + adForm + ')'));
            } else if (!h.this.f58151n.isEmpty()) {
            } else {
                h.this.c0();
            }
        }

        @Override // io.bidmachine.rendering.internal.controller.h.b, up.c
        public void d(@NotNull up.a adForm, @NotNull rq.t error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            super.d(adForm, error);
            h.this.u(error);
        }

        @Override // io.bidmachine.rendering.internal.controller.h.b, up.c
        public void e(@NotNull up.a adForm, @NotNull rq.t error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            super.e(adForm, error);
            h.this.u(error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata
    /* loaded from: classes8.dex */
    public abstract class b implements up.c {
        public b() {
        }

        @Override // up.c
        @CallSuper
        public void a(@NotNull up.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            sq.h hVar = h.this.f58138a;
            tp.s.g(hVar, "AdsElement (" + adForm + ") - onAdFormLoaded", new Object[0]);
            h.this.f58151n.remove(adForm);
        }

        @Override // up.c
        @CallSuper
        public void b(@NotNull up.a adForm, @NotNull rq.t error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            sq.h hVar = h.this.f58138a;
            tp.s.b(hVar, "AdsElement (" + adForm + ") - onAdFormFailToShow - " + error, new Object[0]);
        }

        @Override // up.c
        @CallSuper
        public void c(@NotNull up.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            sq.h hVar = h.this.f58138a;
            tp.s.g(hVar, "AdsElement (" + adForm + ") - onAdFormShown", new Object[0]);
        }

        @Override // up.c
        @CallSuper
        public void d(@NotNull up.a adForm, @NotNull rq.t error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            sq.h hVar = h.this.f58138a;
            tp.s.b(hVar, "AdsElement (" + adForm + ") - onAdFormFailToLoad - " + error, new Object[0]);
            h.this.f58151n.remove(adForm);
        }

        @Override // up.c
        @CallSuper
        public void e(@NotNull up.a adForm, @NotNull rq.t error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            sq.h hVar = h.this.f58138a;
            tp.s.b(hVar, "AdsElement (" + adForm + ") - onAdFormExpired - " + error, new Object[0]);
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    private final class c implements hq.a {
        public c() {
        }

        @Override // hq.a
        public void a(@NotNull rq.n brokenCreativeEvent) {
            Intrinsics.checkNotNullParameter(brokenCreativeEvent, "brokenCreativeEvent");
            h.this.t(brokenCreativeEvent);
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class d {
        public /* synthetic */ d(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private d() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata
    /* loaded from: classes8.dex */
    public final class e extends b {
        public e() {
            super();
        }

        @Override // io.bidmachine.rendering.internal.controller.h.b, up.c
        public void a(@NotNull up.a adForm) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            super.a(adForm);
            if (!h.this.C(adForm, true)) {
                d(adForm, new rq.t("Failed to setup ad element (" + adForm + ')'));
            }
            if (!h.this.f58151n.isEmpty()) {
                return;
            }
            h.this.c0();
        }

        @Override // io.bidmachine.rendering.internal.controller.h.b, up.c
        public void d(@NotNull up.a adForm, @NotNull rq.t error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            super.d(adForm, error);
            h hVar = h.this;
            hVar.x(adForm, hVar.U());
        }

        @Override // io.bidmachine.rendering.internal.controller.h.b, up.c
        public void e(@NotNull up.a adForm, @NotNull rq.t error) {
            Intrinsics.checkNotNullParameter(adForm, "adForm");
            Intrinsics.checkNotNullParameter(error, "error");
            super.e(adForm, error);
            h hVar = h.this;
            hVar.x(adForm, hVar.U());
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    private final class f implements jq.e {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Context f58160a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ h f58161b;

        @Metadata
        /* loaded from: classes8.dex */
        public static final class a implements tp.r {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f58162a;

            public a(Object obj) {
                this.f58162a = obj;
            }

            @Override // yq.m
            public final void s() {
                ((tp.j) this.f58162a).b();
            }
        }

        @Metadata
        /* loaded from: classes8.dex */
        public static final class b implements tp.r {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f58163a;

            public b(Object obj) {
                this.f58163a = obj;
            }

            @Override // yq.m
            public final void s() {
                ((tp.j) this.f58163a).b();
            }
        }

        @Metadata
        /* loaded from: classes8.dex */
        public static final class c implements tp.r {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f58164a;

            public c(Object obj) {
                this.f58164a = obj;
            }

            @Override // yq.m
            public final void s() {
                ((tp.j) this.f58164a).b();
            }
        }

        @Metadata
        /* loaded from: classes8.dex */
        public static final class d implements tp.r {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f58165a;

            public d(Object obj) {
                this.f58165a = obj;
            }

            @Override // yq.m
            public final void s() {
                ((tp.j) this.f58165a).b();
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$hide$$inlined$executeAction$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes8.dex */
        public static final class e extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58166h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ h f58167i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f58168j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f58169k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ Class f58170l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f58171m;

            /* renamed from: n  reason: collision with root package name */
            final /* synthetic */ h f58172n;

            /* renamed from: o  reason: collision with root package name */
            final /* synthetic */ Integer f58173o;

            @Metadata
            /* loaded from: classes8.dex */
            public static final class a implements tp.r {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f58174a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ h f58175b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ Integer f58176c;

                public a(Object obj, h hVar, Integer num) {
                    this.f58174a = obj;
                    this.f58175b = hVar;
                    this.f58176c = num;
                }

                @Override // yq.m
                public final void s() {
                    boolean z10;
                    sq.n nVar = (sq.n) this.f58174a;
                    h hVar = this.f58175b;
                    if (this.f58176c != null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    hVar.v(nVar, false, z10, new C0811f(nVar));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public e(h hVar, String str, String str2, Class cls, String str3, rs.c cVar, h hVar2, Integer num) {
                super(2, cVar);
                this.f58167i = hVar;
                this.f58168j = str;
                this.f58169k = str2;
                this.f58170l = cls;
                this.f58171m = str3;
                this.f58172n = hVar2;
                this.f58173o = num;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((e) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new e(this.f58167i, this.f58168j, this.f58169k, this.f58170l, this.f58171m, cVar, this.f58172n, this.f58173o);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58166h == 0) {
                    kotlin.f.b(obj);
                    Object E = this.f58167i.E(this.f58168j);
                    if (E == null) {
                        this.f58167i.p(this.f58169k, this.f58168j);
                    } else if (!this.f58170l.isInstance(E)) {
                        this.f58167i.q(this.f58169k, this.f58168j, this.f58171m);
                    } else if (this.f58170l.isInstance(E)) {
                        sq.j.k(new a(E, this.f58172n, this.f58173o));
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Metadata
        /* renamed from: io.bidmachine.rendering.internal.controller.h$f$f  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        static final class C0811f implements tp.r {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ sq.n f58177a;

            C0811f(sq.n nVar) {
                this.f58177a = nVar;
            }

            @Override // yq.m
            public final void s() {
                this.f58177a.p(false);
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$lockVisibility$$inlined$executeAction$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes8.dex */
        public static final class g extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58178h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ h f58179i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f58180j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f58181k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ Class f58182l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f58183m;

            /* renamed from: n  reason: collision with root package name */
            final /* synthetic */ boolean f58184n;

            @Metadata
            /* loaded from: classes8.dex */
            public static final class a implements tp.r {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f58185a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ boolean f58186b;

                public a(Object obj, boolean z10) {
                    this.f58185a = obj;
                    this.f58186b = z10;
                }

                @Override // yq.m
                public final void s() {
                    ((sq.n) this.f58185a).q(this.f58186b);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public g(h hVar, String str, String str2, Class cls, String str3, rs.c cVar, boolean z10) {
                super(2, cVar);
                this.f58179i = hVar;
                this.f58180j = str;
                this.f58181k = str2;
                this.f58182l = cls;
                this.f58183m = str3;
                this.f58184n = z10;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((g) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new g(this.f58179i, this.f58180j, this.f58181k, this.f58182l, this.f58183m, cVar, this.f58184n);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58178h == 0) {
                    kotlin.f.b(obj);
                    Object E = this.f58179i.E(this.f58180j);
                    if (E == null) {
                        this.f58179i.p(this.f58181k, this.f58180j);
                    } else if (!this.f58182l.isInstance(E)) {
                        this.f58179i.q(this.f58181k, this.f58180j, this.f58183m);
                    } else if (this.f58182l.isInstance(E)) {
                        sq.j.k(new a(E, this.f58184n));
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$mute$$inlined$executeAction$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
        /* renamed from: io.bidmachine.rendering.internal.controller.h$f$h  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        public static final class C0812h extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58187h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ h f58188i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f58189j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f58190k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ Class f58191l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f58192m;

            /* renamed from: n  reason: collision with root package name */
            final /* synthetic */ Integer f58193n;

            @Metadata
            /* renamed from: io.bidmachine.rendering.internal.controller.h$f$h$a */
            /* loaded from: classes8.dex */
            public static final class a implements tp.r {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f58194a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Integer f58195b;

                public a(Object obj, Integer num) {
                    this.f58194a = obj;
                    this.f58195b = num;
                }

                @Override // yq.m
                public final void s() {
                    ((tp.u) this.f58194a).b(this.f58195b);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0812h(h hVar, String str, String str2, Class cls, String str3, rs.c cVar, Integer num) {
                super(2, cVar);
                this.f58188i = hVar;
                this.f58189j = str;
                this.f58190k = str2;
                this.f58191l = cls;
                this.f58192m = str3;
                this.f58193n = num;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((C0812h) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new C0812h(this.f58188i, this.f58189j, this.f58190k, this.f58191l, this.f58192m, cVar, this.f58193n);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58187h == 0) {
                    kotlin.f.b(obj);
                    Object E = this.f58188i.E(this.f58189j);
                    if (E == null) {
                        this.f58188i.p(this.f58190k, this.f58189j);
                    } else if (!this.f58191l.isInstance(E)) {
                        this.f58188i.q(this.f58190k, this.f58189j, this.f58192m);
                    } else if (this.f58191l.isInstance(E)) {
                        sq.j.k(new a(E, this.f58193n));
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Metadata
        /* loaded from: classes8.dex */
        public static final class i implements tp.q<Boolean> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ h f58196a;

            i(h hVar) {
                this.f58196a = hVar;
            }

            @Override // yq.l
            public /* bridge */ /* synthetic */ void a(Object obj) {
                c(((Boolean) obj).booleanValue());
            }

            public void c(boolean z10) {
                fq.s X = this.f58196a.X();
                if (X != null) {
                    X.c();
                }
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$progress$$inlined$executeAction$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes8.dex */
        public static final class j extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58197h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ h f58198i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f58199j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f58200k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ Class f58201l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f58202m;

            /* renamed from: n  reason: collision with root package name */
            final /* synthetic */ long f58203n;

            /* renamed from: o  reason: collision with root package name */
            final /* synthetic */ long f58204o;

            /* renamed from: p  reason: collision with root package name */
            final /* synthetic */ float f58205p;

            @Metadata
            /* loaded from: classes8.dex */
            public static final class a implements tp.r {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f58206a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ long f58207b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ long f58208c;

                /* renamed from: d  reason: collision with root package name */
                final /* synthetic */ float f58209d;

                public a(Object obj, long j10, long j11, float f10) {
                    this.f58206a = obj;
                    this.f58207b = j10;
                    this.f58208c = j11;
                    this.f58209d = f10;
                }

                @Override // yq.m
                public final void s() {
                    ((tp.v) this.f58206a).e(this.f58207b, this.f58208c, this.f58209d);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public j(h hVar, String str, String str2, Class cls, String str3, rs.c cVar, long j10, long j11, float f10) {
                super(2, cVar);
                this.f58198i = hVar;
                this.f58199j = str;
                this.f58200k = str2;
                this.f58201l = cls;
                this.f58202m = str3;
                this.f58203n = j10;
                this.f58204o = j11;
                this.f58205p = f10;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((j) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new j(this.f58198i, this.f58199j, this.f58200k, this.f58201l, this.f58202m, cVar, this.f58203n, this.f58204o, this.f58205p);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58197h == 0) {
                    kotlin.f.b(obj);
                    Object E = this.f58198i.E(this.f58199j);
                    if (E == null) {
                        this.f58198i.p(this.f58200k, this.f58199j);
                    } else if (!this.f58201l.isInstance(E)) {
                        this.f58198i.q(this.f58200k, this.f58199j, this.f58202m);
                    } else if (this.f58201l.isInstance(E)) {
                        sq.j.k(new a(E, this.f58203n, this.f58204o, this.f58205p));
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$repeat$$inlined$executeAction$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes8.dex */
        public static final class k extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58210h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ h f58211i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f58212j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f58213k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ Class f58214l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f58215m;

            @Metadata
            /* loaded from: classes8.dex */
            public static final class a implements tp.r {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f58216a;

                public a(Object obj) {
                    this.f58216a = obj;
                }

                @Override // yq.m
                public final void s() {
                    ((w) this.f58216a).k();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public k(h hVar, String str, String str2, Class cls, String str3, rs.c cVar) {
                super(2, cVar);
                this.f58211i = hVar;
                this.f58212j = str;
                this.f58213k = str2;
                this.f58214l = cls;
                this.f58215m = str3;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((k) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new k(this.f58211i, this.f58212j, this.f58213k, this.f58214l, this.f58215m, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58210h == 0) {
                    kotlin.f.b(obj);
                    Object E = this.f58211i.E(this.f58212j);
                    if (E == null) {
                        this.f58211i.p(this.f58213k, this.f58212j);
                    } else if (!this.f58214l.isInstance(E)) {
                        this.f58211i.q(this.f58213k, this.f58212j, this.f58215m);
                    } else if (this.f58214l.isInstance(E)) {
                        sq.j.k(new a(E));
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$schedule$$inlined$executeAction$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes8.dex */
        public static final class l extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58217h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ h f58218i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f58219j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f58220k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ Class f58221l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f58222m;

            /* renamed from: n  reason: collision with root package name */
            final /* synthetic */ long f58223n;

            @Metadata
            /* loaded from: classes8.dex */
            public static final class a implements tp.r {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f58224a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ long f58225b;

                public a(Object obj, long j10) {
                    this.f58224a = obj;
                    this.f58225b = j10;
                }

                @Override // yq.m
                public final void s() {
                    ((y) this.f58224a).a(this.f58225b);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public l(h hVar, String str, String str2, Class cls, String str3, rs.c cVar, long j10) {
                super(2, cVar);
                this.f58218i = hVar;
                this.f58219j = str;
                this.f58220k = str2;
                this.f58221l = cls;
                this.f58222m = str3;
                this.f58223n = j10;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((l) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new l(this.f58218i, this.f58219j, this.f58220k, this.f58221l, this.f58222m, cVar, this.f58223n);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58217h == 0) {
                    kotlin.f.b(obj);
                    Object E = this.f58218i.E(this.f58219j);
                    if (E == null) {
                        this.f58218i.p(this.f58220k, this.f58219j);
                    } else if (!this.f58221l.isInstance(E)) {
                        this.f58218i.q(this.f58220k, this.f58219j, this.f58222m);
                    } else if (this.f58221l.isInstance(E)) {
                        sq.j.k(new a(E, this.f58223n));
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$show$$inlined$executeAction$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes8.dex */
        public static final class m extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58226h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ h f58227i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f58228j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f58229k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ Class f58230l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f58231m;

            /* renamed from: n  reason: collision with root package name */
            final /* synthetic */ h f58232n;

            /* renamed from: o  reason: collision with root package name */
            final /* synthetic */ Integer f58233o;

            @Metadata
            /* loaded from: classes8.dex */
            public static final class a implements tp.r {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f58234a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ h f58235b;

                /* renamed from: c  reason: collision with root package name */
                final /* synthetic */ Integer f58236c;

                public a(Object obj, h hVar, Integer num) {
                    this.f58234a = obj;
                    this.f58235b = hVar;
                    this.f58236c = num;
                }

                @Override // yq.m
                public final void s() {
                    boolean z10;
                    sq.n nVar = (sq.n) this.f58234a;
                    h hVar = this.f58235b;
                    if (this.f58236c != null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    hVar.v(nVar, true, z10, new n(nVar));
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public m(h hVar, String str, String str2, Class cls, String str3, rs.c cVar, h hVar2, Integer num) {
                super(2, cVar);
                this.f58227i = hVar;
                this.f58228j = str;
                this.f58229k = str2;
                this.f58230l = cls;
                this.f58231m = str3;
                this.f58232n = hVar2;
                this.f58233o = num;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((m) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new m(this.f58227i, this.f58228j, this.f58229k, this.f58230l, this.f58231m, cVar, this.f58232n, this.f58233o);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58226h == 0) {
                    kotlin.f.b(obj);
                    Object E = this.f58227i.E(this.f58228j);
                    if (E == null) {
                        this.f58227i.p(this.f58229k, this.f58228j);
                    } else if (!this.f58230l.isInstance(E)) {
                        this.f58227i.q(this.f58229k, this.f58228j, this.f58231m);
                    } else if (this.f58230l.isInstance(E)) {
                        sq.j.k(new a(E, this.f58232n, this.f58233o));
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Metadata
        /* loaded from: classes8.dex */
        static final class n implements tp.r {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ sq.n f58237a;

            n(sq.n nVar) {
                this.f58237a = nVar;
            }

            @Override // yq.m
            public final void s() {
                this.f58237a.p(true);
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$simulateClick$$inlined$executeAction$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes8.dex */
        public static final class o extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58238h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ h f58239i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f58240j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f58241k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ Class f58242l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f58243m;

            @Metadata
            /* loaded from: classes8.dex */
            public static final class a implements tp.r {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f58244a;

                public a(Object obj) {
                    this.f58244a = obj;
                }

                @Override // yq.m
                public final void s() {
                    ((tp.f) this.f58244a).m();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public o(h hVar, String str, String str2, Class cls, String str3, rs.c cVar) {
                super(2, cVar);
                this.f58239i = hVar;
                this.f58240j = str;
                this.f58241k = str2;
                this.f58242l = cls;
                this.f58243m = str3;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((o) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new o(this.f58239i, this.f58240j, this.f58241k, this.f58242l, this.f58243m, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58238h == 0) {
                    kotlin.f.b(obj);
                    Object E = this.f58239i.E(this.f58240j);
                    if (E == null) {
                        this.f58239i.p(this.f58241k, this.f58240j);
                    } else if (!this.f58242l.isInstance(E)) {
                        this.f58239i.q(this.f58241k, this.f58240j, this.f58243m);
                    } else if (this.f58242l.isInstance(E)) {
                        sq.j.k(new a(E));
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Metadata
        /* loaded from: classes8.dex */
        public static final class p implements tp.r {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f58245a;

            public p(Object obj) {
                this.f58245a = obj;
            }

            @Override // yq.m
            public final void s() {
                ((z) this.f58245a).e();
            }
        }

        @Metadata
        /* loaded from: classes8.dex */
        public static final class q implements tp.r {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f58246a;

            public q(Object obj) {
                this.f58246a = obj;
            }

            @Override // yq.m
            public final void s() {
                ((z) this.f58246a).e();
            }
        }

        @Metadata
        /* loaded from: classes8.dex */
        public static final class r implements tp.r {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f58247a;

            public r(Object obj) {
                this.f58247a = obj;
            }

            @Override // yq.m
            public final void s() {
                ((z) this.f58247a).e();
            }
        }

        @Metadata
        /* loaded from: classes8.dex */
        public static final class s implements tp.r {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Object f58248a;

            public s(Object obj) {
                this.f58248a = obj;
            }

            @Override // yq.m
            public final void s() {
                ((z) this.f58248a).e();
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$start$$inlined$executeAction$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes8.dex */
        public static final class t extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58249h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ h f58250i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f58251j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f58252k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ Class f58253l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f58254m;

            /* renamed from: n  reason: collision with root package name */
            final /* synthetic */ String f58255n;

            @Metadata
            /* loaded from: classes8.dex */
            public static final class a implements tp.r {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f58256a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ String f58257b;

                public a(Object obj, String str) {
                    this.f58256a = obj;
                    this.f58257b = str;
                }

                @Override // yq.m
                public final void s() {
                    ((a0) this.f58256a).a(this.f58257b);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public t(h hVar, String str, String str2, Class cls, String str3, rs.c cVar, String str4) {
                super(2, cVar);
                this.f58250i = hVar;
                this.f58251j = str;
                this.f58252k = str2;
                this.f58253l = cls;
                this.f58254m = str3;
                this.f58255n = str4;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((t) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new t(this.f58250i, this.f58251j, this.f58252k, this.f58253l, this.f58254m, cVar, this.f58255n);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58249h == 0) {
                    kotlin.f.b(obj);
                    Object E = this.f58250i.E(this.f58251j);
                    if (E == null) {
                        this.f58250i.p(this.f58252k, this.f58251j);
                    } else if (!this.f58253l.isInstance(E)) {
                        this.f58250i.q(this.f58252k, this.f58251j, this.f58254m);
                    } else if (this.f58253l.isInstance(E)) {
                        sq.j.k(new a(E, this.f58255n));
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$unlockVisibility$$inlined$executeAction$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes8.dex */
        public static final class u extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58258h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ h f58259i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f58260j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f58261k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ Class f58262l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f58263m;

            @Metadata
            /* loaded from: classes8.dex */
            public static final class a implements tp.r {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f58264a;

                public a(Object obj) {
                    this.f58264a = obj;
                }

                @Override // yq.m
                public final void s() {
                    ((sq.n) this.f58264a).o();
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public u(h hVar, String str, String str2, Class cls, String str3, rs.c cVar) {
                super(2, cVar);
                this.f58259i = hVar;
                this.f58260j = str;
                this.f58261k = str2;
                this.f58262l = cls;
                this.f58263m = str3;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((u) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new u(this.f58259i, this.f58260j, this.f58261k, this.f58262l, this.f58263m, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58258h == 0) {
                    kotlin.f.b(obj);
                    Object E = this.f58259i.E(this.f58260j);
                    if (E == null) {
                        this.f58259i.p(this.f58261k, this.f58260j);
                    } else if (!this.f58262l.isInstance(E)) {
                        this.f58259i.q(this.f58261k, this.f58260j, this.f58263m);
                    } else if (this.f58262l.isInstance(E)) {
                        sq.j.k(new a(E));
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$EventTaskExecutorImpl$unmute$$inlined$executeAction$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
        /* loaded from: classes8.dex */
        public static final class v extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58265h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ h f58266i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ String f58267j;

            /* renamed from: k  reason: collision with root package name */
            final /* synthetic */ String f58268k;

            /* renamed from: l  reason: collision with root package name */
            final /* synthetic */ Class f58269l;

            /* renamed from: m  reason: collision with root package name */
            final /* synthetic */ String f58270m;

            /* renamed from: n  reason: collision with root package name */
            final /* synthetic */ Integer f58271n;

            @Metadata
            /* loaded from: classes8.dex */
            public static final class a implements tp.r {

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ Object f58272a;

                /* renamed from: b  reason: collision with root package name */
                final /* synthetic */ Integer f58273b;

                public a(Object obj, Integer num) {
                    this.f58272a = obj;
                    this.f58273b = num;
                }

                @Override // yq.m
                public final void s() {
                    ((tp.u) this.f58272a).a(this.f58273b);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public v(h hVar, String str, String str2, Class cls, String str3, rs.c cVar, Integer num) {
                super(2, cVar);
                this.f58266i = hVar;
                this.f58267j = str;
                this.f58268k = str2;
                this.f58269l = cls;
                this.f58270m = str3;
                this.f58271n = num;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((v) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new v(this.f58266i, this.f58267j, this.f58268k, this.f58269l, this.f58270m, cVar, this.f58271n);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58265h == 0) {
                    kotlin.f.b(obj);
                    Object E = this.f58266i.E(this.f58267j);
                    if (E == null) {
                        this.f58266i.p(this.f58268k, this.f58267j);
                    } else if (!this.f58269l.isInstance(E)) {
                        this.f58266i.q(this.f58268k, this.f58267j, this.f58270m);
                    } else if (this.f58269l.isInstance(E)) {
                        sq.j.k(new a(E, this.f58271n));
                    }
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        public f(@NotNull h hVar, Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            this.f58161b = hVar;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            this.f58160a = applicationContext;
        }

        private final void n(String str) {
            fq.s X = this.f58161b.X();
            if (X != null) {
                X.a();
            }
            sq.k.c(this.f58160a, str, new i(this.f58161b));
        }

        @Override // jq.e
        public void a(@NotNull String targetElementName, @Nullable String str) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            h hVar = this.f58161b;
            gt.g.d(hVar.R(hVar), hVar.P(hVar).c(), null, new t(hVar, targetElementName, "start", a0.class, "Startable", null, str), 2, null);
        }

        @Override // jq.e
        public void b(@NotNull String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            n(url);
        }

        @Override // jq.e
        public void c(@NotNull String targetElementName) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            h hVar = this.f58161b;
            gt.g.d(hVar.R(hVar), hVar.P(hVar).c(), null, new k(hVar, targetElementName, "repeat", w.class, "Repeatable", null), 2, null);
        }

        @Override // jq.e
        public void d(@NotNull String targetElementName) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            h hVar = this.f58161b;
            gt.g.d(hVar.R(hVar), hVar.P(hVar).c(), null, new u(hVar, targetElementName, "unlockVisibility", sq.n.class, "VisibilityChanger", null), 2, null);
        }

        @Override // jq.e
        public void e(@NotNull String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            fq.s X = this.f58161b.X();
            if (X != null) {
                X.d();
            }
            n(url);
        }

        @Override // jq.e
        public void f(@NotNull String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            new NetworkRequest.a(url, NetworkRequest.Method.Get).f(pp.f.a()).c();
        }

        @Override // jq.e
        public void g(@NotNull String targetElementName) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            h hVar = this.f58161b;
            gt.g.d(hVar.R(hVar), hVar.P(hVar).c(), null, new o(hVar, targetElementName, "simulateClick", tp.f.class, "AdElement", null), 2, null);
        }

        @Override // jq.e
        public void h(@NotNull String targetElementName, @Nullable Integer num) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            h hVar = this.f58161b;
            gt.g.d(hVar.R(hVar), hVar.P(hVar).c(), null, new v(hVar, targetElementName, CampaignEx.JSON_NATIVE_VIDEO_UNMUTE, tp.u.class, "Mutable", null, num), 2, null);
        }

        @Override // jq.e
        public void i(@NotNull String targetElementName, @Nullable Integer num) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            h hVar = this.f58161b;
            gt.g.d(hVar.R(hVar), hVar.P(hVar).c(), null, new C0812h(hVar, targetElementName, "mute", tp.u.class, "Mutable", null, num), 2, null);
        }

        @Override // jq.e
        public void j(@NotNull String targetElementName, @Nullable Integer num) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            h hVar = this.f58161b;
            gt.g.d(hVar.R(hVar), hVar.P(hVar).c(), null, new m(hVar, targetElementName, "show", sq.n.class, "VisibilityChanger", null, hVar, num), 2, null);
        }

        @Override // jq.e
        public void k(@NotNull String targetElementName, @Nullable Integer num) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            h hVar = this.f58161b;
            gt.g.d(hVar.R(hVar), hVar.P(hVar).c(), null, new e(hVar, targetElementName, "hide", sq.n.class, "VisibilityChanger", null, hVar, num), 2, null);
        }

        @Override // jq.e
        public void l(@NotNull String targetElementName, long j10, long j11, float f10) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            h hVar = this.f58161b;
            gt.g.d(hVar.R(hVar), hVar.P(hVar).c(), null, new j(hVar, targetElementName, "progress", tp.v.class, "Progress", null, j10, j11, f10), 2, null);
        }

        @Override // jq.e
        public void m(@NotNull String targetElementName, long j10) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            h hVar = this.f58161b;
            gt.g.d(hVar.R(hVar), hVar.P(hVar).c(), null, new l(hVar, targetElementName, "schedule", y.class, "Schedule", null, j10), 2, null);
        }

        @Override // jq.e
        public void b() {
            h hVar = this.f58161b;
            for (tp.f fVar : hVar.T()) {
                if (tp.j.class.isInstance(fVar)) {
                    sq.j.k(new a(fVar));
                }
            }
            for (tp.f fVar2 : hVar.U()) {
                if (tp.j.class.isInstance(fVar2)) {
                    sq.j.k(new b(fVar2));
                }
            }
            for (tp.t tVar : hVar.W()) {
                if (tp.j.class.isInstance(tVar)) {
                    sq.j.k(new c(tVar));
                }
            }
            b0 V = hVar.V();
            if (tp.j.class.isInstance(V)) {
                sq.j.k(new d(V));
            }
        }

        @Override // jq.e
        public void a(@NotNull String targetElementName, boolean z10) {
            Intrinsics.checkNotNullParameter(targetElementName, "targetElementName");
            h hVar = this.f58161b;
            gt.g.d(hVar.R(hVar), hVar.P(hVar).c(), null, new g(hVar, targetElementName, "lockVisibility", sq.n.class, "VisibilityChanger", null, z10), 2, null);
        }

        @Override // jq.e
        public void e() {
            h hVar = this.f58161b;
            for (tp.f fVar : hVar.T()) {
                if (z.class.isInstance(fVar)) {
                    sq.j.k(new p(fVar));
                }
            }
            for (tp.f fVar2 : hVar.U()) {
                if (z.class.isInstance(fVar2)) {
                    sq.j.k(new q(fVar2));
                }
            }
            for (tp.t tVar : hVar.W()) {
                if (z.class.isInstance(tVar)) {
                    sq.j.k(new r(tVar));
                }
            }
            b0 V = hVar.V();
            if (z.class.isInstance(V)) {
                sq.j.k(new s(V));
            }
        }

        @Override // jq.e
        public void a(@NotNull String stateGroups) {
            Intrinsics.checkNotNullParameter(stateGroups, "stateGroups");
            this.f58161b.Y().a(stateGroups);
        }

        @Override // jq.e
        public void b(@NotNull PrivacySheetParams privacySheetParams) {
            Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
            fq.s X = this.f58161b.X();
            if (X != null) {
                X.b(privacySheetParams);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata
    /* loaded from: classes8.dex */
    public final class g extends b0 {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ h f58274c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull h hVar, jq.b eventCallback) {
            super(eventCallback);
            Intrinsics.checkNotNullParameter(eventCallback, "eventCallback");
            this.f58274c = hVar;
        }

        @Override // tp.b0, tp.u
        public void a(@Nullable Integer num) {
            r().a(num);
        }

        @Override // tp.b0, tp.u
        public void b(@Nullable Integer num) {
            r().b(num);
        }

        @Override // tp.b0, tp.z
        public void e() {
            fq.s X = this.f58274c.X();
            if (X != null) {
                X.e();
            }
        }

        @Override // tp.b0
        @NotNull
        public String s() {
            return r().e();
        }

        @Override // tp.b0, tp.j
        public void b() {
            fq.s X = this.f58274c.X();
            if (X != null) {
                X.b();
            }
        }
    }

    @Metadata
    /* renamed from: io.bidmachine.rendering.internal.controller.h$h  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    static final class C0813h extends Lambda implements Function0<up.b> {
        C0813h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: b */
        public final up.b invoke() {
            Context applicationContext = h.this.f58142e;
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            return new up.b(applicationContext, h.this.f58143f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class i extends Lambda implements Function0<Integer> {
        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @Nullable
        /* renamed from: b */
        public final Integer invoke() {
            ViewGroup e10 = h.this.e().e();
            if (e10 != null) {
                return Integer.valueOf(e10.getId());
            }
            return null;
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class j extends Lambda implements Function0<g> {
        j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: b */
        public final g invoke() {
            h hVar = h.this;
            return new g(hVar, hVar.i("system"));
        }
    }

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.controller.DefaultAdPhaseController$load$1", f = "DefaultAdPhaseController.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class k extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58278h;

        k(rs.c<? super k> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        @Nullable
        /* renamed from: a */
        public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((k) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new k(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f58278h == 0) {
                kotlin.f.b(obj);
                if (h.this.Z()) {
                    h.this.a0();
                    h.this.b0();
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class l implements tp.r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f58280a;

        public l(Object obj) {
            this.f58280a = obj;
        }

        @Override // yq.m
        public final void s() {
            ((y) this.f58280a).pause();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class m implements tp.r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f58281a;

        public m(Object obj) {
            this.f58281a = obj;
        }

        @Override // yq.m
        public final void s() {
            ((y) this.f58281a).pause();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class n implements tp.r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f58282a;

        public n(Object obj) {
            this.f58282a = obj;
        }

        @Override // yq.m
        public final void s() {
            ((y) this.f58282a).pause();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class o implements tp.r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f58283a;

        public o(Object obj) {
            this.f58283a = obj;
        }

        @Override // yq.m
        public final void s() {
            ((y) this.f58283a).pause();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class p implements tp.r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f58284a;

        public p(Object obj) {
            this.f58284a = obj;
        }

        @Override // yq.m
        public final void s() {
            ((y) this.f58284a).l();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class q implements tp.r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f58285a;

        public q(Object obj) {
            this.f58285a = obj;
        }

        @Override // yq.m
        public final void s() {
            ((y) this.f58285a).l();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class r implements tp.r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f58286a;

        public r(Object obj) {
            this.f58286a = obj;
        }

        @Override // yq.m
        public final void s() {
            ((y) this.f58286a).l();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class s implements tp.r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f58287a;

        public s(Object obj) {
            this.f58287a = obj;
        }

        @Override // yq.m
        public final void s() {
            ((y) this.f58287a).l();
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    static final class t extends Lambda implements Function0<kq.a> {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ rq.c f58288d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        t(rq.c cVar) {
            super(0);
            this.f58288d = cVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @NotNull
        /* renamed from: b */
        public final kq.a invoke() {
            return new kq.a(this.f58288d.i());
        }
    }

    public h(@NotNull Context context, @NotNull rq.c adPhaseParams, @NotNull sq.h tag, @NotNull io.bidmachine.rendering.internal.state.c adState, @NotNull fq.r adPhaseControllerListener, @NotNull eq.c adAnimationController) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adPhaseParams, "adPhaseParams");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(adState, "adState");
        Intrinsics.checkNotNullParameter(adPhaseControllerListener, "adPhaseControllerListener");
        Intrinsics.checkNotNullParameter(adAnimationController, "adAnimationController");
        this.f58138a = tag;
        this.f58139b = adState;
        this.f58140c = adPhaseControllerListener;
        this.f58141d = adAnimationController;
        Context applicationContext = context.getApplicationContext();
        this.f58142e = applicationContext;
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        io.bidmachine.rendering.internal.repository.b bVar = new io.bidmachine.rendering.internal.repository.b(applicationContext, R(this), P(this));
        this.f58143f = bVar;
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        this.f58144g = new tp.g(applicationContext, bVar, adPhaseParams);
        this.f58146i = new f(this, context);
        this.f58147j = new c();
        this.f58148k = kotlin.c.b(new t(adPhaseParams));
        this.f58149l = kotlin.c.b(new j());
        this.f58150m = new CoroutineTaskManager(R(this).getCoroutineContext().plus(P(this).e()));
        this.f58151n = new ConcurrentHashMap();
        this.f58152o = new CopyOnWriteArrayList();
        this.f58153p = new CopyOnWriteArrayList();
        this.f58154q = new CopyOnWriteArrayList();
        this.f58155r = kotlin.c.b(new C0813h());
    }

    public static /* synthetic */ boolean B(h hVar, up.a aVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return hVar.C(aVar, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(tp.f item) {
        Intrinsics.checkNotNullParameter(item, "$item");
        item.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final io.bidmachine.rendering.internal.h P(h hVar) {
        return hVar.f58139b.n();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final g0 R(h hVar) {
        return hVar.f58139b.o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b0 V() {
        return (b0) this.f58149l.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kq.b Y() {
        return (kq.b) this.f58148k.getValue();
    }

    private final io.bidmachine.rendering.internal.detector.brokencreative.a f(rq.a aVar) {
        rq.m d10 = aVar.d();
        if (d10 != null) {
            return new io.bidmachine.rendering.internal.detector.brokencreative.a(e().d().h(), aVar.j(), d10, this.f58147j);
        }
        return null;
    }

    public static /* synthetic */ void o(h hVar, b0 b0Var, List list, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            list = null;
        }
        hVar.z(b0Var, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p(String str, String str2) {
        sq.h hVar = this.f58138a;
        tp.s.b(hVar, "EventTask - " + str + ", target object (" + str2 + ") not found", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q(String str, String str2, String str3) {
        sq.h hVar = this.f58138a;
        tp.s.b(hVar, "EventTask - " + str + ", target object (" + str2 + ") not " + str3, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(rq.n nVar) {
        fq.s X;
        if (!this.f58139b.h() && (X = X()) != null) {
            X.a(nVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v(sq.n nVar, boolean z10, boolean z11, Runnable runnable) {
        AnimationEventType animationEventType;
        Runnable runnable2;
        Runnable runnable3;
        if ((nVar instanceof tp.f) && this.f58139b.d() && !this.f58139b.h()) {
            if (z10) {
                animationEventType = AnimationEventType.Appear;
            } else {
                animationEventType = AnimationEventType.Disappear;
            }
            AnimationEventType animationEventType2 = animationEventType;
            if (z10) {
                runnable2 = runnable;
            } else {
                runnable2 = null;
            }
            if (z10) {
                runnable3 = null;
            } else {
                runnable3 = runnable;
            }
            this.f58141d.e((tp.f) nVar, animationEventType2, z11, runnable2, runnable3);
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(tp.f item) {
        Intrinsics.checkNotNullParameter(item, "$item");
        item.f();
    }

    @VisibleForTesting
    public final void A(@NotNull up.a adForm, @NotNull up.c adFormListener) {
        Intrinsics.checkNotNullParameter(adForm, "adForm");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        sq.h hVar = this.f58138a;
        tp.s.g(hVar, "Load AdElement - " + adForm.h().j(), new Object[0]);
        fq.p pVar = new fq.p(adForm);
        this.f58151n.put(adForm, pVar);
        try {
            this.f58150m.execute(pVar);
        } catch (Throwable th2) {
            adFormListener.d(adForm, rq.t.f66124b.a(th2));
        }
    }

    @VisibleForTesting
    public final boolean C(@NotNull up.a item, boolean z10) {
        Intrinsics.checkNotNullParameter(item, "item");
        boolean u10 = item.u();
        if (u10) {
            this.f58141d.h(item, z10, AnimationEventType.Appear);
        }
        return u10;
    }

    @VisibleForTesting
    @Nullable
    public final Object E(@NotNull String name) {
        Object obj;
        Object obj2;
        Intrinsics.checkNotNullParameter(name, "name");
        if (StringsKt.t0(name)) {
            return null;
        }
        Iterator<T> it = this.f58152o.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (StringsKt.G(((tp.f) obj).h().j(), name, true)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        Object obj3 = (tp.f) obj;
        if (obj3 == null) {
            Iterator<T> it2 = this.f58153p.iterator();
            while (true) {
                if (it2.hasNext()) {
                    obj2 = it2.next();
                    if (StringsKt.G(((tp.f) obj2).h().j(), name, true)) {
                        break;
                    }
                } else {
                    obj2 = null;
                    break;
                }
            }
            obj3 = (tp.f) obj2;
            if (obj3 == null) {
                Iterator<T> it3 = this.f58154q.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        obj3 = it3.next();
                        if (StringsKt.G(((tp.t) obj3).t().a(), name, true)) {
                            break;
                        }
                    } else {
                        obj3 = null;
                        break;
                    }
                }
            }
        }
        if (obj3 != null) {
            return obj3;
        }
        if (!Intrinsics.areEqual(V().s(), name)) {
            return null;
        }
        return V();
    }

    @VisibleForTesting
    public final <T extends b0> void G(@NotNull List<T> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        tp.s.g(this.f58138a, "Destroy TargetObjects", new Object[0]);
        for (T t10 : items) {
            z(t10, items);
        }
        items.clear();
    }

    @VisibleForTesting
    public final void H(@NotNull List<? extends tp.f> items, boolean z10) {
        Intrinsics.checkNotNullParameter(items, "items");
        sq.h hVar = this.f58138a;
        tp.s.g(hVar, "Show AdElements, animated: " + z10, new Object[0]);
        for (tp.f fVar : items) {
            J(fVar, z10);
        }
    }

    @VisibleForTesting
    public final void J(@NotNull final tp.f item, boolean z10) {
        Intrinsics.checkNotNullParameter(item, "item");
        sq.h hVar = this.f58138a;
        tp.s.g(hVar, "Show AdElement - " + item.h().j() + ", animated: " + z10, new Object[0]);
        tp.r rVar = new tp.r() { // from class: fq.u
            @Override // yq.m
            public final void s() {
                io.bidmachine.rendering.internal.controller.h.I(tp.f.this);
            }
        };
        if (z10) {
            eq.c.b(this.f58141d, item, AnimationEventType.Appear, false, rVar, null, 20, null);
        } else {
            rVar.run();
        }
    }

    @VisibleForTesting
    public final void O() {
        tp.s.g(this.f58138a, "Cancel loading AdElements", new Object[0]);
        for (Map.Entry<tp.f, tq.b> entry : this.f58151n.entrySet()) {
            this.f58150m.cancel(entry.getValue());
        }
        this.f58151n.clear();
    }

    @VisibleForTesting
    public final void Q() {
        tp.s.g(this.f58138a, "Destroy AdPhase", new Object[0]);
        this.f58141d.c(e());
        final tp.g e10 = e();
        sq.j.k(new tp.r() { // from class: fq.x
            @Override // yq.m
            public final void s() {
                tp.g.this.a();
            }
        });
    }

    @NotNull
    public final up.b S() {
        return (up.b) this.f58155r.getValue();
    }

    @NotNull
    public final List<tp.f> T() {
        return this.f58152o;
    }

    @NotNull
    public final List<tp.f> U() {
        return this.f58153p;
    }

    @NotNull
    public final List<tp.t> W() {
        return this.f58154q;
    }

    @Nullable
    public fq.s X() {
        return this.f58145h;
    }

    @VisibleForTesting
    public final boolean Z() {
        List<rq.a> a10 = e().d().a();
        if (a10.isEmpty()) {
            u(new rq.t("AdPhase does not contain any ads part"));
            return false;
        } else if (b()) {
            c0();
            return false;
        } else if (!this.f58139b.c()) {
            return false;
        } else {
            this.f58152o.addAll(h(a10, new a()));
            if (this.f58152o.isEmpty()) {
                u(new rq.t("No supported ads found for the given parameters"));
                return false;
            }
            return true;
        }
    }

    @VisibleForTesting
    public final void a0() {
        this.f58153p.addAll(h(e().d().e(), new e()));
    }

    @VisibleForTesting
    public final void b0() {
        List<d0> g10 = e().d().g();
        List<tp.t> list = this.f58154q;
        ArrayList arrayList = new ArrayList(CollectionsKt.z(g10, 10));
        for (d0 d0Var : g10) {
            arrayList.add(new tp.t(d0Var, i(d0Var.a())));
        }
        list.addAll(arrayList);
    }

    @Override // fq.q
    public void c() {
        tp.s.g(this.f58138a, "AdPhase - load", new Object[0]);
        gt.g.d(R(this), P(this).e(), null, new k(null), 2, null);
    }

    @VisibleForTesting
    public final void c0() {
        if (!this.f58139b.a(true)) {
            return;
        }
        this.f58140c.d(this);
    }

    @Override // fq.q
    public void d() {
        tp.s.g(this.f58138a, "AdPhase - performShow", new Object[0]);
        for (tp.f fVar : T()) {
            if (y.class.isInstance(fVar)) {
                sq.j.k(new p(fVar));
            }
        }
        for (tp.f fVar2 : U()) {
            if (y.class.isInstance(fVar2)) {
                sq.j.k(new q(fVar2));
            }
        }
        for (tp.t tVar : W()) {
            if (y.class.isInstance(tVar)) {
                sq.j.k(new r(tVar));
            }
        }
        b0 V = V();
        if (y.class.isInstance(V)) {
            sq.j.k(new s(V));
        }
        if (this.f58139b.m()) {
            H(this.f58152o, false);
            H(this.f58153p, false);
        }
        this.f58139b.l();
    }

    @VisibleForTesting
    @NotNull
    public final List<tp.f> h(@NotNull List<rq.a> elementsParams, @NotNull up.c adFormListener) {
        Intrinsics.checkNotNullParameter(elementsParams, "elementsParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        ArrayList<up.a> arrayList = new ArrayList(CollectionsKt.z(elementsParams, 10));
        for (rq.a aVar : elementsParams) {
            arrayList.add(j(aVar, adFormListener));
        }
        for (up.a aVar2 : arrayList) {
            A(aVar2, adFormListener);
        }
        return arrayList;
    }

    @VisibleForTesting
    @NotNull
    public final jq.b i(@NotNull String sourceName) {
        Intrinsics.checkNotNullParameter(sourceName, "sourceName");
        return new io.bidmachine.rendering.internal.event.c(sourceName, new kq.c(Y()), new eq.d(this.f58141d, new i()), new jq.a(this.f58146i, sourceName), R(this), P(this), e().d().f(sourceName));
    }

    @VisibleForTesting
    @NotNull
    public final up.a j(@NotNull rq.a elementParams, @NotNull up.c adFormListener) {
        Intrinsics.checkNotNullParameter(elementParams, "elementParams");
        Intrinsics.checkNotNullParameter(adFormListener, "adFormListener");
        sq.h hVar = this.f58138a;
        tp.s.g(hVar, "Create AdElement - " + elementParams.j(), new Object[0]);
        return S().b(elementParams, adFormListener, i(elementParams.j()), f(elementParams));
    }

    @Override // fq.q
    public void onShown() {
        if (!this.f58139b.i()) {
            return;
        }
        tp.s.g(this.f58138a, "AdPhase - onShown", new Object[0]);
        H(this.f58152o, true);
        H(this.f58153p, true);
        V().r().k();
    }

    @VisibleForTesting
    public final void r(@NotNull List<tp.f> item) {
        Intrinsics.checkNotNullParameter(item, "item");
        tp.s.g(this.f58138a, "Destroy AdElements", new Object[0]);
        for (tp.f fVar : item) {
            x(fVar, item);
        }
        item.clear();
    }

    @VisibleForTesting
    public final void s(@NotNull List<? extends tp.f> items, boolean z10) {
        Intrinsics.checkNotNullParameter(items, "items");
        sq.h hVar = this.f58138a;
        tp.s.g(hVar, "Hide AdElements, animated: " + z10, new Object[0]);
        for (tp.f fVar : items) {
            y(fVar, z10);
        }
    }

    @NotNull
    public String toString() {
        String hVar = this.f58138a.toString();
        Intrinsics.checkNotNullExpressionValue(hVar, "tag.toString()");
        return hVar;
    }

    @VisibleForTesting
    public final void u(@NotNull rq.t error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (!this.f58139b.a(false)) {
            return;
        }
        this.f58140c.c(this, error);
    }

    @VisibleForTesting
    public final void x(@NotNull final tp.f item, @Nullable List<tp.f> list) {
        Intrinsics.checkNotNullParameter(item, "item");
        sq.h hVar = this.f58138a;
        tp.s.g(hVar, "Destroy AdElement - " + item.h().j(), new Object[0]);
        this.f58141d.a(item);
        if (list != null) {
            list.remove(item);
        }
        sq.j.k(new tp.r() { // from class: fq.t
            @Override // yq.m
            public final void s() {
                tp.f.this.a();
            }
        });
    }

    @VisibleForTesting
    public final void y(@NotNull final tp.f item, boolean z10) {
        Intrinsics.checkNotNullParameter(item, "item");
        sq.h hVar = this.f58138a;
        tp.s.g(hVar, "Hide AdElement - " + item.h().j() + ", animated: " + z10, new Object[0]);
        tp.r rVar = new tp.r() { // from class: fq.v
            @Override // yq.m
            public final void s() {
                io.bidmachine.rendering.internal.controller.h.w(tp.f.this);
            }
        };
        if (z10) {
            eq.c.b(this.f58141d, item, AnimationEventType.Disappear, false, null, rVar, 12, null);
        } else {
            rVar.run();
        }
    }

    @VisibleForTesting
    public final <T extends b0> void z(@NotNull final b0 item, @Nullable List<T> list) {
        Intrinsics.checkNotNullParameter(item, "item");
        sq.h hVar = this.f58138a;
        tp.s.g(hVar, "Destroy TargetObject - " + item.s(), new Object[0]);
        if (list != null) {
            TypeIntrinsics.asMutableCollection(list).remove(item);
        }
        sq.j.k(new tp.r() { // from class: fq.w
            @Override // yq.m
            public final void s() {
                b0.this.a();
            }
        });
    }

    @Override // fq.q
    public void a(boolean z10) {
        sq.h hVar = this.f58138a;
        tp.s.g(hVar, "AdPhase - performHide, isFinishing: " + z10, new Object[0]);
        for (tp.f fVar : T()) {
            if (y.class.isInstance(fVar)) {
                sq.j.k(new l(fVar));
            }
        }
        for (tp.f fVar2 : U()) {
            if (y.class.isInstance(fVar2)) {
                sq.j.k(new m(fVar2));
            }
        }
        for (tp.t tVar : W()) {
            if (y.class.isInstance(tVar)) {
                sq.j.k(new n(tVar));
            }
        }
        b0 V = V();
        if (y.class.isInstance(V)) {
            sq.j.k(new o(V));
        }
        s(this.f58152o, z10);
        s(this.f58153p, z10);
    }

    @Override // fq.q
    public boolean b() {
        return this.f58139b.b();
    }

    @Override // fq.q
    @NotNull
    public tp.g e() {
        return this.f58144g;
    }

    @Override // fq.q
    public boolean c(@NotNull ViewGroup container) {
        Intrinsics.checkNotNullParameter(container, "container");
        return e().c(container, this.f58152o, this.f58153p);
    }

    @Override // fq.q
    public void a() {
        tp.s.g(this.f58138a, "AdPhase - destroy", new Object[0]);
        O();
        r(this.f58152o);
        r(this.f58153p);
        Q();
        G(this.f58154q);
        o(this, V(), null, 2, null);
        d(null);
        this.f58139b.a();
    }

    @Override // fq.q
    public void d(@Nullable fq.s sVar) {
        this.f58145h = sVar;
    }
}
