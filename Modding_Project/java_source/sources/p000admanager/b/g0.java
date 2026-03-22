package p000admanager.b;

import android.app.Activity;
import ca.i;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import rs.c;
/* renamed from: ad-manager.b.g0  reason: invalid package */
/* loaded from: classes.dex */
public final class g0 extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f398h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Activity f399i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ Function1 f400j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(Activity activity, Function1 function1, c cVar) {
        super(2, cVar);
        this.f399i = activity;
        this.f400j = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new g0(this.f399i, this.f400j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        gt.g0 g0Var = (gt.g0) obj;
        return new g0(this.f399i, this.f400j, (c) obj2).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f398h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            i iVar = i.f3408a;
            Activity activity = this.f399i;
            this.f398h = 1;
            obj = iVar.z(activity, this);
            if (obj == f10) {
                return f10;
            }
        }
        this.f400j.invoke(kotlin.coroutines.jvm.internal.a.a(((Boolean) obj).booleanValue()));
        return Unit.f60915a;
    }
}
