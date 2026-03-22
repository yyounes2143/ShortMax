package coil;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import m0.f;
import m0.g;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealImageLoader.kt */
@Metadata
@d(c = "coil.RealImageLoader$execute$2$job$1", f = "RealImageLoader.kt", l = {139}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class RealImageLoader$execute$2$job$1 extends SuspendLambda implements Function2<g0, c<? super g>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f3762h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RealImageLoader f3763i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ f f3764j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$execute$2$job$1(RealImageLoader realImageLoader, f fVar, c<? super RealImageLoader$execute$2$job$1> cVar) {
        super(2, cVar);
        this.f3763i = realImageLoader;
        this.f3764j = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new RealImageLoader$execute$2$job$1(this.f3763i, this.f3764j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super g> cVar) {
        return ((RealImageLoader$execute$2$job$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.f3762h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            RealImageLoader realImageLoader = this.f3763i;
            f fVar = this.f3764j;
            this.f3762h = 1;
            obj = realImageLoader.g(fVar, 1, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
