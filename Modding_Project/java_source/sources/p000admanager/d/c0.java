package p000admanager.d;

import ca.e;
import ca.f;
import gt.g0;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.r;
import rs.c;
/* renamed from: ad-manager.d.c0  reason: invalid package */
/* loaded from: classes.dex */
public final class c0 extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public int f443h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ f f444i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f445j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ r f446k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f447l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(f fVar, Ref.ObjectRef objectRef, r rVar, Ref.ObjectRef objectRef2, c cVar) {
        super(2, cVar);
        this.f444i = fVar;
        this.f445j = objectRef;
        this.f446k = rVar;
        this.f447l = objectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new c0(this.f444i, this.f445j, this.f446k, this.f447l, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((c0) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kt.f fVar;
        Object f10 = a.f();
        int i10 = this.f443h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ArrayList arrayList = new ArrayList();
            for (e eVar : this.f444i.f()) {
                arrayList.add(eVar.e());
            }
            da.f.f50275i.getClass();
            fVar = da.f.f50278l;
            e.c cVar = new e.c(fVar, arrayList);
            y yVar = new y(this.f445j, this.f446k, this.f447l, null);
            this.f443h = 1;
            if (kotlinx.coroutines.flow.c.m(cVar, yVar, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
