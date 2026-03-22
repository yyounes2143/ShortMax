package com.moloco.sdk.acm.services;

import androidx.lifecycle.Lifecycle;
import gt.g0;
import gt.q0;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class c implements com.moloco.sdk.acm.services.b {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f31975d = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Lifecycle f31976a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final ApplicationLifecycleObserver f31977b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public AtomicBoolean f31978c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.services.ApplicationLifecycleTrackerImpl$startObserving$2", f = "ApplicationLifecycleTracker.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f31979h;

        public b(rs.c<? super b> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new b(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f31979h == 0) {
                kotlin.f.b(obj);
                if (c.this.f31978c.compareAndSet(false, true)) {
                    e.f(e.f31983a, "ApplicationLifecycleTrackerServiceImpl", "Start observing application lifecycle events", false, 4, null);
                    c.this.f31976a.addObserver(c.this.f31977b);
                }
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public c(@NotNull Lifecycle lifecycle, @NotNull ApplicationLifecycleObserver bgListener) {
        Intrinsics.checkNotNullParameter(lifecycle, "lifecycle");
        Intrinsics.checkNotNullParameter(bgListener, "bgListener");
        this.f31976a = lifecycle;
        this.f31977b = bgListener;
        this.f31978c = new AtomicBoolean(false);
    }

    @Override // com.moloco.sdk.acm.services.b
    @Nullable
    public Object a(@NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(q0.c().m(), new b(null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }
}
