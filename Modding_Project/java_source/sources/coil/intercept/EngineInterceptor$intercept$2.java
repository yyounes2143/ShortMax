package coil.intercept;

import android.graphics.drawable.Drawable;
import coil.decode.DataSource;
import coil.intercept.EngineInterceptor;
import coil.memory.MemoryCache;
import gt.g0;
import h0.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import m0.f;
import m0.j;
import m0.m;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.i;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: EngineInterceptor.kt */
@Metadata
@d(c = "coil.intercept.EngineInterceptor$intercept$2", f = "EngineInterceptor.kt", l = {75}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class EngineInterceptor$intercept$2 extends SuspendLambda implements Function2<g0, c<? super m>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f4026h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ EngineInterceptor f4027i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ f f4028j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ Object f4029k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ j f4030l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ a0.c f4031m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ MemoryCache.Key f4032n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ a.InterfaceC0763a f4033o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$2(EngineInterceptor engineInterceptor, f fVar, Object obj, j jVar, a0.c cVar, MemoryCache.Key key, a.InterfaceC0763a interfaceC0763a, c<? super EngineInterceptor$intercept$2> cVar2) {
        super(2, cVar2);
        this.f4027i = engineInterceptor;
        this.f4028j = fVar;
        this.f4029k = obj;
        this.f4030l = jVar;
        this.f4031m = cVar;
        this.f4032n = key;
        this.f4033o = interfaceC0763a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new EngineInterceptor$intercept$2(this.f4027i, this.f4028j, this.f4029k, this.f4030l, this.f4031m, this.f4032n, this.f4033o, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super m> cVar) {
        return ((EngineInterceptor$intercept$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        k0.c cVar;
        MemoryCache.Key key;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f4026h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            EngineInterceptor engineInterceptor = this.f4027i;
            f fVar = this.f4028j;
            Object obj2 = this.f4029k;
            j jVar = this.f4030l;
            a0.c cVar2 = this.f4031m;
            this.f4026h = 1;
            obj = engineInterceptor.i(fVar, obj2, jVar, cVar2, this);
            if (obj == f10) {
                return f10;
            }
        }
        EngineInterceptor.b bVar = (EngineInterceptor.b) obj;
        cVar = this.f4027i.f3974c;
        boolean h10 = cVar.h(this.f4032n, this.f4028j, bVar);
        Drawable e10 = bVar.e();
        f fVar2 = this.f4028j;
        DataSource c10 = bVar.c();
        MemoryCache.Key key2 = this.f4032n;
        if (h10) {
            key = key2;
        } else {
            key = null;
        }
        return new m(e10, fVar2, c10, key, bVar.d(), bVar.f(), i.t(this.f4033o));
    }
}
