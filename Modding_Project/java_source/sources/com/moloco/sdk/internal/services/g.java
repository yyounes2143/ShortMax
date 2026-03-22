package com.moloco.sdk.internal.services;

import androidx.annotation.MainThread;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.lifecycle.Lifecycle;
import com.moloco.sdk.internal.MolocoLogger;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class g implements r {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f33386e = new a(null);

    /* renamed from: f  reason: collision with root package name */
    public static final int f33387f = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Lifecycle f33388a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final SingleObserverBackgroundThenForegroundAnalyticsListener f33389b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final gt.g0 f33390c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f33391d;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @d(c = "com.moloco.sdk.internal.services.AnalyticsApplicationLifecycleTrackerImpl$startObserving$1", f = "AnalyticsApplicationLifecycleTracker.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33392h;

        public b(rs.c<? super b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33392h == 0) {
                kotlin.f.b(obj);
                g.this.d();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @d(c = "com.moloco.sdk.internal.services.AnalyticsApplicationLifecycleTrackerImpl$trackNextBackgroundForeground$1", f = "AnalyticsApplicationLifecycleTracker.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class c extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33394h;

        public c(rs.c<? super c> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new c(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33394h == 0) {
                kotlin.f.b(obj);
                MolocoLogger.debug$default(MolocoLogger.INSTANCE, "AnalyticsApplicationLifecycleTrackerImpl", "Tracking next bg / fg of the application", false, 4, null);
                g.this.d();
                g.this.f33389b.a();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public g(@NotNull Lifecycle lifecycle, @NotNull SingleObserverBackgroundThenForegroundAnalyticsListener fgBgListener) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(fgBgListener, "fgBgListener");
        this.f33388a = lifecycle;
        this.f33389b = fgBgListener;
        this.f33390c = kotlinx.coroutines.i.a(com.moloco.sdk.internal.scheduling.c.a().a());
    }

    @Override // com.moloco.sdk.internal.services.r
    public void b() {
        gt.g.d(this.f33390c, null, null, new c(null), 3, null);
    }

    @MainThread
    public final void d() {
        if (!this.f33391d) {
            MolocoLogger.debug$default(MolocoLogger.INSTANCE, "AnalyticsApplicationLifecycleTrackerImpl", "Observing application lifecycle events", false, 4, null);
            this.f33388a.addObserver(this.f33389b);
            this.f33391d = true;
        }
    }

    @Override // com.moloco.sdk.internal.services.r
    public void a() {
        MolocoLogger.debug$default(MolocoLogger.INSTANCE, "AnalyticsApplicationLifecycleTrackerImpl", "Start observing application lifecycle events", false, 4, null);
        gt.g.d(this.f33390c, null, null, new b(null), 3, null);
    }
}
