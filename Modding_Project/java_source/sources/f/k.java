package f;

import java.util.ArrayList;
import kotlin.Unit;
/* loaded from: classes.dex */
public final class k implements kt.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ kt.f f51588a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f51589b;

    public k(kt.f fVar, ArrayList arrayList) {
        this.f51588a = fVar;
        this.f51589b = arrayList;
    }

    @Override // kt.b
    public final Object collect(kt.c cVar, rs.c cVar2) {
        Object collect = this.f51588a.collect(new j(cVar, this.f51589b), cVar2);
        if (collect == kotlin.coroutines.intrinsics.a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }
}
