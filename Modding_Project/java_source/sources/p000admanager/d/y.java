package p000admanager.d;

import ca.b;
import ca.k;
import com.hades.aar.admanager.core.AdEventState;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.r;
import rs.c;
/* renamed from: ad-manager.d.y  reason: invalid package */
/* loaded from: classes.dex */
public final class y extends SuspendLambda implements Function2 {

    /* renamed from: h  reason: collision with root package name */
    public /* synthetic */ Object f511h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f512i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ r f513j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ Ref.ObjectRef f514k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(Ref.ObjectRef objectRef, r rVar, Ref.ObjectRef objectRef2, c cVar) {
        super(2, cVar);
        this.f512i = objectRef;
        this.f513j = rVar;
        this.f514k = objectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        y yVar = new y(this.f512i, this.f513j, this.f514k, cVar);
        yVar.f511h = obj;
        return yVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((y) create((b) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        f.b(obj);
        b bVar = (b) this.f511h;
        if (bVar.b() == AdEventState.LOAD_SUCCEED) {
            k kVar = k.f3414a;
            k.p(kVar, "show collectLatest -> load succeed,adUnitId=" + bVar.a(), null, null, null, 14, null);
            this.f512i.element = null;
            r.a.b(this.f513j, null, 1, null);
            r rVar = (r) this.f514k.element;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
        } else {
            k kVar2 = k.f3414a;
            k.m(kVar2, "show collectLatest -> load failed,adUnitId=" + bVar.a(), null, null, null, 14, null);
            List list = (List) this.f512i.element;
            if (list != null) {
                kotlin.coroutines.jvm.internal.a.a(list.add(bVar.a()));
            }
        }
        return Unit.f60915a;
    }
}
