package y0;

import java.util.Arrays;
import java.util.List;
/* compiled from: AnimatableGradientColorValue.java */
/* loaded from: classes2.dex */
public class c extends p<z0.d, z0.d> {
    public c(List<e1.a<z0.d>> list) {
        super(e(list));
    }

    private static e1.a<z0.d> d(e1.a<z0.d> aVar) {
        z0.d dVar = aVar.f50724b;
        z0.d dVar2 = aVar.f50725c;
        if (dVar != null && dVar2 != null && dVar.e().length != dVar2.e().length) {
            float[] f10 = f(dVar.e(), dVar2.e());
            return aVar.b(dVar.b(f10), dVar2.b(f10));
        }
        return aVar;
    }

    private static List<e1.a<z0.d>> e(List<e1.a<z0.d>> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.set(i10, d(list.get(i10)));
        }
        return list;
    }

    static float[] f(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f10 = Float.NaN;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            float f11 = fArr3[i11];
            if (f11 != f10) {
                fArr3[i10] = f11;
                i10++;
                f10 = fArr3[i11];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i10);
    }

    @Override // y0.o
    public u0.a<z0.d, z0.d> a() {
        return new u0.e(this.f70559a);
    }

    @Override // y0.p, y0.o
    public /* bridge */ /* synthetic */ List b() {
        return super.b();
    }

    @Override // y0.p, y0.o
    public /* bridge */ /* synthetic */ boolean c() {
        return super.c();
    }

    @Override // y0.p
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
