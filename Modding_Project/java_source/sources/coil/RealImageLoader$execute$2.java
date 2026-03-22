package coil;

import gt.g0;
import gt.k0;
import gt.q0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import m0.f;
import m0.g;
import o0.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.i;
import rs.c;
/* compiled from: RealImageLoader.kt */
@Metadata
@d(c = "coil.RealImageLoader$execute$2", f = "RealImageLoader.kt", l = {146}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class RealImageLoader$execute$2 extends SuspendLambda implements Function2<g0, c<? super g>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f3758h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f3759i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ f f3760j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ RealImageLoader f3761k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$execute$2(f fVar, RealImageLoader realImageLoader, c<? super RealImageLoader$execute$2> cVar) {
        super(2, cVar);
        this.f3760j = fVar;
        this.f3761k = realImageLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        RealImageLoader$execute$2 realImageLoader$execute$2 = new RealImageLoader$execute$2(this.f3760j, this.f3761k, cVar);
        realImageLoader$execute$2.f3759i = obj;
        return realImageLoader$execute$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super g> cVar) {
        return ((RealImageLoader$execute$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        k0<? extends g> b10;
        Object f10 = a.f();
        int i10 = this.f3758h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            b10 = gt.g.b((g0) this.f3759i, q0.c().m(), null, new RealImageLoader$execute$2$job$1(this.f3761k, this.f3760j, null), 2, null);
            if (this.f3760j.M() instanceof b) {
                i.l(((b) this.f3760j.M()).getView()).b(b10);
            }
            this.f3758h = 1;
            obj = b10.await(this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
