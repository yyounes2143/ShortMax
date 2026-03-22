package p000admanager.b;

import android.app.Activity;
import ca.i;
import gt.g0;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.b.a0  reason: invalid package */
/* loaded from: classes.dex */
public final class a0 extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f392h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Activity f393i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ Function1 f394j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(Activity activity, Function1 function1, c cVar) {
        super(2, cVar);
        this.f393i = activity;
        this.f394j = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new a0(this.f393i, this.f394j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        g0 g0Var = (g0) obj;
        return new a0(this.f393i, this.f394j, (c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f392h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            i iVar = i.f3408a;
            Activity activity = this.f393i;
            this.f392h = 1;
            obj = iVar.x(activity, this);
            if (obj == f10) {
                return f10;
            }
        }
        this.f394j.invoke(kotlin.coroutines.jvm.internal.a.a(((Boolean) obj).booleanValue()));
        return Unit.f60915a;
    }
}
