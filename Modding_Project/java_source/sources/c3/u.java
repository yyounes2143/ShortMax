package c3;

import android.graphics.Matrix;
import android.graphics.Rect;
/* compiled from: ScalingUtils.java */
/* loaded from: classes3.dex */
class u extends p {

    /* renamed from: l  reason: collision with root package name */
    public static final q f3033l = new u();

    private u() {
    }

    @Override // c3.p
    public void b(Matrix matrix, Rect rect, int i10, int i11, float f10, float f11, float f12, float f13) {
        float min = Math.min(f12, f13);
        matrix.setScale(min, min);
        matrix.postTranslate((int) (rect.left + 0.5f), (int) (rect.top + (rect.height() - (i11 * min)) + 0.5f));
    }

    public String toString() {
        return "fit_bottom_start";
    }
}
