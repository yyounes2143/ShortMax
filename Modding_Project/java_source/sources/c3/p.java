package c3;

import android.graphics.Matrix;
import android.graphics.Rect;
/* compiled from: ScalingUtils.java */
/* loaded from: classes3.dex */
public abstract class p implements q {
    @Override // c3.q
    public Matrix a(Matrix matrix, Rect rect, int i10, int i11, float f10, float f11) {
        b(matrix, rect, i10, i11, f10, f11, rect.width() / i10, rect.height() / i11);
        return matrix;
    }

    public abstract void b(Matrix matrix, Rect rect, int i10, int i11, float f10, float f11, float f12, float f13);
}
