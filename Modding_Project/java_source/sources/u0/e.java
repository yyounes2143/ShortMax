package u0;

import java.util.List;
/* compiled from: GradientColorKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class e extends g<z0.d> {

    /* renamed from: i  reason: collision with root package name */
    private final z0.d f67729i;

    public e(List<e1.a<z0.d>> list) {
        super(list);
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            z0.d dVar = list.get(i11).f50724b;
            if (dVar != null) {
                i10 = Math.max(i10, dVar.f());
            }
        }
        this.f67729i = new z0.d(new float[i10], new int[i10]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // u0.a
    /* renamed from: r */
    public z0.d i(e1.a<z0.d> aVar, float f10) {
        this.f67729i.g(aVar.f50724b, aVar.f50725c, f10);
        return this.f67729i;
    }
}
