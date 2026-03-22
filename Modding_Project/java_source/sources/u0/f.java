package u0;

import java.util.List;
/* compiled from: IntegerKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class f extends g<Integer> {
    public f(List<e1.a<Integer>> list) {
        super(list);
    }

    int r(e1.a<Integer> aVar, float f10) {
        int e10;
        Integer num;
        if (aVar.f50724b != null) {
            if (aVar.f50725c == null) {
                e10 = aVar.h();
            } else {
                e10 = aVar.e();
            }
            e1.c<A> cVar = this.f67709e;
            if (cVar != 0 && (num = (Integer) cVar.b(aVar.f50729g, aVar.f50730h.floatValue(), aVar.f50724b, Integer.valueOf(e10), f10, e(), f())) != null) {
                return num.intValue();
            }
            return d1.k.j(aVar.h(), e10, f10);
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // u0.a
    /* renamed from: s */
    public Integer i(e1.a<Integer> aVar, float f10) {
        return Integer.valueOf(r(aVar, f10));
    }
}
