package coil.intercept;

import a0.b;
import coil.intercept.EngineInterceptor;
import g0.h;
import g0.l;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import m0.f;
import m0.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EngineInterceptor.kt */
@Metadata
@d(c = "coil.intercept.EngineInterceptor$execute$executeResult$1", f = "EngineInterceptor.kt", l = {127}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class EngineInterceptor$execute$executeResult$1 extends SuspendLambda implements Function2<g0, c<? super EngineInterceptor.b>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f4002h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EngineInterceptor f4003i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<h> f4004j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<b> f4005k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ f f4006l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ Object f4007m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ Ref.ObjectRef<j> f4008n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ a0.c f4009o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$execute$executeResult$1(EngineInterceptor engineInterceptor, Ref.ObjectRef<h> objectRef, Ref.ObjectRef<b> objectRef2, f fVar, Object obj, Ref.ObjectRef<j> objectRef3, a0.c cVar, c<? super EngineInterceptor$execute$executeResult$1> cVar2) {
        super(2, cVar2);
        this.f4003i = engineInterceptor;
        this.f4004j = objectRef;
        this.f4005k = objectRef2;
        this.f4006l = fVar;
        this.f4007m = obj;
        this.f4008n = objectRef3;
        this.f4009o = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new EngineInterceptor$execute$executeResult$1(this.f4003i, this.f4004j, this.f4005k, this.f4006l, this.f4007m, this.f4008n, this.f4009o, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super EngineInterceptor.b> cVar) {
        return ((EngineInterceptor$execute$executeResult$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.f4002h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            a0.c cVar = this.f4009o;
            this.f4002h = 1;
            obj = this.f4003i.h((l) this.f4004j.element, this.f4005k.element, this.f4006l, this.f4007m, this.f4008n.element, cVar, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
