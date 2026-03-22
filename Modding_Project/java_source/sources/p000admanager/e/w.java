package p000admanager.e;

import ca.f;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import rs.c;
/* renamed from: ad-manager.e.w  reason: invalid package */
/* loaded from: classes.dex */
public final class w extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f573h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ f f574i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(f fVar, c cVar) {
        super(2, cVar);
        this.f574i = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new w(this.f574i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new w(this.f574i, (c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f573h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            long j10 = this.f574i.j();
            this.f573h = 1;
            if (DelayKt.b(j10, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
