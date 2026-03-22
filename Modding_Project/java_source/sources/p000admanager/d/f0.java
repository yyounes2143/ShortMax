package p000admanager.d;

import ca.f;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import rs.c;
/* renamed from: ad-manager.d.f0  reason: invalid package */
/* loaded from: classes.dex */
public final class f0 extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f458h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ f f459i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(f fVar, c cVar) {
        super(2, cVar);
        this.f459i = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new f0(this.f459i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new f0(this.f459i, (c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f458h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            long j10 = this.f459i.j();
            this.f458h = 1;
            if (DelayKt.b(j10, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
