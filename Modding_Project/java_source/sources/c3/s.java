package c3;

import android.graphics.Matrix;
import android.graphics.Rect;
/* compiled from: ScalingUtils.java */
/* loaded from: classes3.dex */
class s extends p {

    /* renamed from: l  reason: collision with root package name */
    public static final q f3031l = new s();

    private s() {
    }

    @Override // c3.p
    public void b(Matrix matrix, Rect rect, int i10, int i11, float f10, float f11, float f12, float f13) {
        float height;
        float f14;
        if (f13 > f12) {
            f14 = rect.left + ((rect.width() - (i10 * f13)) * 0.5f);
            height = rect.top;
            f12 = f13;
        } else {
            height = ((rect.height() - (i11 * f12)) * 0.5f) + rect.top;
            f14 = rect.left;
        }
        matrix.setScale(f12, f12);
        matrix.postTranslate((int) (f14 + 0.5f), (int) (height + 0.5f));
    }

    public String toString() {
        return "center_crop";
    }
}
