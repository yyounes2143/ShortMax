package c3;

import android.graphics.Matrix;
import android.graphics.Rect;
/* compiled from: ScalingUtils.java */
/* loaded from: classes3.dex */
class b0 extends p {

    /* renamed from: l  reason: collision with root package name */
    public static final q f2934l = new b0();

    private b0() {
    }

    @Override // c3.p
    public void b(Matrix matrix, Rect rect, int i10, int i11, float f10, float f11, float f12, float f13) {
        float f14;
        float max;
        if (f13 > f12) {
            float f15 = i10 * f13;
            f14 = rect.left + Math.max(Math.min((rect.width() * 0.5f) - (f10 * f15), 0.0f), rect.width() - f15);
            max = rect.top;
            f12 = f13;
        } else {
            f14 = rect.left;
            float f16 = i11 * f12;
            max = Math.max(Math.min((rect.height() * 0.5f) - (f11 * f16), 0.0f), rect.height() - f16) + rect.top;
        }
        matrix.setScale(f12, f12);
        matrix.postTranslate((int) (f14 + 0.5f), (int) (max + 0.5f));
    }

    public String toString() {
        return "focus_crop";
    }
}
