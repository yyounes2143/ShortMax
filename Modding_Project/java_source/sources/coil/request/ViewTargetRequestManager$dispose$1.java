package coil.request;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ViewTargetRequestManager.kt */
@Metadata
@d(c = "coil.request.ViewTargetRequestManager$dispose$1", f = "ViewTargetRequestManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class ViewTargetRequestManager$dispose$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f4097h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ViewTargetRequestManager f4098i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewTargetRequestManager$dispose$1(ViewTargetRequestManager viewTargetRequestManager, c<? super ViewTargetRequestManager$dispose$1> cVar) {
        super(2, cVar);
        this.f4098i = viewTargetRequestManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new ViewTargetRequestManager$dispose$1(this.f4098i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((ViewTargetRequestManager$dispose$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.f4097h == 0) {
            f.b(obj);
            this.f4098i.c(null);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
