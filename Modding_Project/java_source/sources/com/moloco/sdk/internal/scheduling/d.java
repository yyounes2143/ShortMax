package com.moloco.sdk.internal.scheduling;

import gt.g;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final g0 f33067a = i.a(c.a().a());

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.internal.scheduling.RunOnMainDispatcherKt$runOnMainDispatcher$1", f = "RunOnMainDispatcher.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f33068h;

        /* renamed from: i  reason: collision with root package name */
        public final /* synthetic */ Function0<Unit> f33069i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Function0<Unit> function0, rs.c<? super a> cVar) {
            super(2, cVar);
            this.f33069i = function0;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            return new a(this.f33069i, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f33068h == 0) {
                f.b(obj);
                this.f33069i.invoke();
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @NotNull
    public static final r a(@NotNull Function0<Unit> block) {
        r d10;
        Intrinsics.checkNotNullParameter(block, "block");
        d10 = g.d(f33067a, null, null, new a(block, null), 3, null);
        return d10;
    }
}
