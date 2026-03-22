package e;

import java.util.ArrayList;
import kotlin.Unit;
/* loaded from: classes.dex */
public final class c implements kt.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ kt.f f50620a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ArrayList f50621b;

    public c(kt.f fVar, ArrayList arrayList) {
        this.f50620a = fVar;
        this.f50621b = arrayList;
    }

    @Override // kt.b
    public final Object collect(kt.c cVar, rs.c cVar2) {
        Object collect = this.f50620a.collect(new a(cVar, this.f50621b), cVar2);
        if (collect == kotlin.coroutines.intrinsics.a.f()) {
            return collect;
        }
        return Unit.f60915a;
    }
}
