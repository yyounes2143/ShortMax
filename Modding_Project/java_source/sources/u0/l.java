package u0;

import java.util.List;
/* compiled from: ScaleKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class l extends g<e1.d> {

    /* renamed from: i  reason: collision with root package name */
    private final e1.d f67741i;

    public l(List<e1.a<e1.d>> list) {
        super(list);
        this.f67741i = new e1.d();
    }

    @Override // u0.a
    /* renamed from: r */
    public e1.d i(e1.a<e1.d> aVar, float f10) {
        e1.d dVar;
        e1.d dVar2;
        e1.d dVar3 = aVar.f50724b;
        if (dVar3 != null && (dVar = aVar.f50725c) != null) {
            e1.d dVar4 = dVar3;
            e1.d dVar5 = dVar;
            e1.c<A> cVar = this.f67709e;
            if (cVar != 0 && (dVar2 = (e1.d) cVar.b(aVar.f50729g, aVar.f50730h.floatValue(), dVar4, dVar5, f10, e(), f())) != null) {
                return dVar2;
            }
            this.f67741i.d(d1.k.i(dVar4.b(), dVar5.b(), f10), d1.k.i(dVar4.c(), dVar5.c(), f10));
            return this.f67741i;
        }
        throw new IllegalStateException("Missing values for keyframe.");
    }
}
