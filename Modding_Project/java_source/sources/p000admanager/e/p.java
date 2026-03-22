package p000admanager.e;

import ca.e;
import ca.f;
import f.n;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.e.p  reason: invalid package */
/* loaded from: classes.dex */
public final class p extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f552h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ n f553i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ e f554j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ f f555k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(n nVar, e eVar, f fVar, c cVar) {
        super(2, cVar);
        this.f553i = nVar;
        this.f554j = eVar;
        this.f555k = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new p(this.f553i, this.f554j, this.f555k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((p) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f552h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            n nVar = this.f553i;
            e eVar = this.f554j;
            long j10 = this.f555k.j();
            this.f552h = 1;
            if (n.f(nVar, eVar, j10, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
