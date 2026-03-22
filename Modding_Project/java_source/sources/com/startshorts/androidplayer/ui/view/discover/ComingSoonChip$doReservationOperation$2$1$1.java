package com.startshorts.androidplayer.ui.view.discover;

import com.startshorts.androidplayer.R$string;
import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: ComingSoonChip.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.view.discover.ComingSoonChip$doReservationOperation$2$1$1", f = "ComingSoonChip.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class ComingSoonChip$doReservationOperation$2$1$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f47226h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Function1<Boolean, Unit> f47227i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ComingSoonChip$doReservationOperation$2$1$1(Function1<? super Boolean, Unit> function1, c<? super ComingSoonChip$doReservationOperation$2$1$1> cVar) {
        super(2, cVar);
        this.f47227i = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ComingSoonChip$doReservationOperation$2$1$1(this.f47227i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ComingSoonChip$doReservationOperation$2$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f47226h == 0) {
            f.b(obj);
            Function1<Boolean, Unit> function1 = this.f47227i;
            if (function1 != null) {
                function1.invoke(kotlin.coroutines.jvm.internal.a.a(true));
            }
            u.f51776a.g(R$string.discover_fragment_reserve_succeed, 0);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
