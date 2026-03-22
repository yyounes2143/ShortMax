package c3;

import android.graphics.Matrix;
import android.graphics.Rect;
/* compiled from: ScalingUtils.java */
/* loaded from: classes3.dex */
class a0 extends p {

    /* renamed from: l  reason: collision with root package name */
    public static final q f2929l = new a0();

    private a0() {
    }

    @Override // c3.p
    public void b(Matrix matrix, Rect rect, int i10, int i11, float f10, float f11, float f12, float f13) {
        matrix.setScale(f13, f13);
        matrix.postTranslate((int) (rect.left + ((rect.width() - (i10 * f13)) * 0.5f) + 0.5f), (int) (rect.top + 0.5f));
    }

    public String toString() {
        return "fit_y";
    }
}
