package p000admanager.d;

import ca.e;
import ca.f;
import e.k;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.d.x  reason: invalid package */
/* loaded from: classes.dex */
public final class x extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f507h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ k f508i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ e f509j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ f f510k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(k kVar, e eVar, f fVar, c cVar) {
        super(2, cVar);
        this.f508i = kVar;
        this.f509j = eVar;
        this.f510k = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new x(this.f508i, this.f509j, this.f510k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((x) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f507h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            k kVar = this.f508i;
            e eVar = this.f509j;
            long j10 = this.f510k.j();
            this.f507h = 1;
            if (k.f(kVar, eVar, j10, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
