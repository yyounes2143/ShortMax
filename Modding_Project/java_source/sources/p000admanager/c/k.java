package p000admanager.c;

import da.f;
import gt.g0;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import rs.c;
/* renamed from: ad-manager.c.k  reason: invalid package */
/* loaded from: classes.dex */
public final class k extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public Throwable f437h;

    /* renamed from: i  reason: collision with root package name */
    public int f438i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ f f439j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(f fVar, c cVar) {
        super(2, cVar);
        this.f439j = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new k(this.f439j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new k(this.f439j, (c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Throwable th2;
        AtomicBoolean atomicBoolean;
        AtomicBoolean atomicBoolean2;
        Object f10 = a.f();
        int i10 = this.f438i;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                th2 = this.f437h;
                kotlin.f.b(obj);
                atomicBoolean2 = this.f439j.f50286h;
                atomicBoolean2.set(false);
                throw th2;
            }
            kotlin.f.b(obj);
        } else {
            kotlin.f.b(obj);
            try {
                this.f439j.j();
                ga.a.f52235a.d(this.f439j.T(null), "Async cleanup finished");
                this.f438i = 1;
                if (DelayKt.b(5000L, this) == f10) {
                    return f10;
                }
            } catch (Throwable th3) {
                this.f437h = th3;
                this.f438i = 2;
                if (DelayKt.b(5000L, this) == f10) {
                    return f10;
                }
                th2 = th3;
            }
        }
        atomicBoolean = this.f439j.f50286h;
        atomicBoolean.set(false);
        return Unit.f60915a;
    }
}
