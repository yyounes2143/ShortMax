package com.moloco.sdk.acm.services;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes6.dex */
public final class ApplicationLifecycleObserver implements DefaultLifecycleObserver {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final com.moloco.sdk.acm.eventprocessing.b f31970a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final g0 f31971b;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.services.ApplicationLifecycleObserver$onStop$1", f = "ApplicationLifecycleTracker.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f31972h;

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f31972h == 0) {
                kotlin.f.b(obj);
                ApplicationLifecycleObserver.this.f31970a.a();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public ApplicationLifecycleObserver(@NotNull com.moloco.sdk.acm.eventprocessing.b dbWorkRequest, @NotNull g0 scope) {
        Intrinsics.checkNotNullParameter(dbWorkRequest, "dbWorkRequest");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.f31970a = dbWorkRequest;
        this.f31971b = scope;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(@NotNull LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.onStop(owner);
        e.f(e.f31983a, "ApplicationLifecycleObserver", "Application onStop", false, 4, null);
        gt.g.d(this.f31971b, null, null, new a(null), 3, null);
    }
}
