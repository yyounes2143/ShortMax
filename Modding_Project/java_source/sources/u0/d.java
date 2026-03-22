package u0;

import java.util.List;
/* compiled from: FloatKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class d extends g<Float> {
    public d(List<e1.a<Float>> list) {
        super(list);
    }

    public float r() {
        return s(b(), d());
    }

    float s(e1.a<Float> aVar, float f10) {
        Float f11;
        if (aVar.f50724b != null && aVar.f50725c != null) {
            e1.c<A> cVar = this.f67709e;
            if (cVar != 0 && (f11 = (Float) cVar.b(aVar.f50729g, aVar.f50730h.floatValue(), aVar.f50724b, aVar.f50725c, f10, e(), f())) != null) {
                return f11.floatValue();
            }
            return d1.k.i(aVar.g(), aVar.d(), f10);
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // u0.a
    /* renamed from: t */
    public Float i(e1.a<Float> aVar, float f10) {
        return Float.valueOf(s(aVar, f10));
    }
}
