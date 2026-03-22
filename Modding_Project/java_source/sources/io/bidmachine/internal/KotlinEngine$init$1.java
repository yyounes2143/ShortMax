package io.bidmachine.internal;

import gt.g0;
import io.bidmachine.BidMachine;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import ms.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: KotlinEngine.kt */
@Metadata
@d(c = "io.bidmachine.internal.KotlinEngine$init$1", f = "KotlinEngine.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class KotlinEngine$init$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f54998h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public KotlinEngine$init$1(c<? super KotlinEngine$init$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new KotlinEngine$init$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((KotlinEngine$init$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.f54998h == 0) {
            f.b(obj);
            io.bidmachine.core.a.c(BidMachine.NAME, "Kotlin runtime version is " + g.f62627f);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
