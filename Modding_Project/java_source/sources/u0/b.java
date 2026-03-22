package u0;

import java.util.List;
/* compiled from: ColorKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class b extends g<Integer> {
    public b(List<e1.a<Integer>> list) {
        super(list);
    }

    public int r() {
        return s(b(), d());
    }

    public int s(e1.a<Integer> aVar, float f10) {
        Float f11;
        Integer num;
        if (aVar.f50724b != null && aVar.f50725c != null) {
            e1.c<A> cVar = this.f67709e;
            if (cVar != 0 && (f11 = aVar.f50730h) != null && (num = (Integer) cVar.b(aVar.f50729g, f11.floatValue(), aVar.f50724b, aVar.f50725c, f10, e(), f())) != null) {
                return num.intValue();
            }
            return d1.d.c(d1.k.b(f10, 0.0f, 1.0f), aVar.f50724b.intValue(), aVar.f50725c.intValue());
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // u0.a
    /* renamed from: t */
    public Integer i(e1.a<Integer> aVar, float f10) {
        return Integer.valueOf(s(aVar, f10));
    }
}
