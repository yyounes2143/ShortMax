package c3;

import android.graphics.Matrix;
import android.graphics.Rect;
/* compiled from: ScalingUtils.java */
/* loaded from: classes3.dex */
class z extends p {

    /* renamed from: l  reason: collision with root package name */
    public static final q f3038l = new z();

    private z() {
    }

    @Override // c3.p
    public void b(Matrix matrix, Rect rect, int i10, int i11, float f10, float f11, float f12, float f13) {
        matrix.setScale(f12, f13);
        matrix.postTranslate((int) (rect.left + 0.5f), (int) (rect.top + 0.5f));
    }

    public String toString() {
        return "fit_xy";
    }
}
