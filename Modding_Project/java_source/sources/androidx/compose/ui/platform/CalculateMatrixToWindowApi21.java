package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewParent;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.Matrix;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidComposeView.android.kt */
@Metadata
/* loaded from: classes.dex */
final class CalculateMatrixToWindowApi21 implements CalculateMatrixToWindow {
    @NotNull
    private final int[] tmpLocation = new int[2];
    @NotNull
    private final float[] tmpMatrix = Matrix.m2036constructorimpl$default(null, 1, null);

    /* renamed from: preConcat-tU-YjHk  reason: not valid java name */
    private final void m3531preConcattUYjHk(float[] fArr, android.graphics.Matrix matrix) {
        AndroidMatrixConversions_androidKt.m1718setFromtUYjHk(this.tmpMatrix, matrix);
        AndroidComposeView_androidKt.m3526preTransformJiSxe2E(fArr, this.tmpMatrix);
    }

    /* renamed from: preTranslate-3XD1CNM  reason: not valid java name */
    private final void m3532preTranslate3XD1CNM(float[] fArr, float f10, float f11) {
        Matrix.m2045resetimpl(this.tmpMatrix);
        Matrix.m2056translateimpl$default(this.tmpMatrix, f10, f11, 0.0f, 4, null);
        AndroidComposeView_androidKt.m3526preTransformJiSxe2E(fArr, this.tmpMatrix);
    }

    /* renamed from: transformMatrixToWindow-EL8BTi8  reason: not valid java name */
    private final void m3533transformMatrixToWindowEL8BTi8(View view, float[] fArr) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            m3533transformMatrixToWindowEL8BTi8((View) parent, fArr);
            m3532preTranslate3XD1CNM(fArr, -view.getScrollX(), -view.getScrollY());
            m3532preTranslate3XD1CNM(fArr, view.getLeft(), view.getTop());
        } else {
            int[] iArr = this.tmpLocation;
            view.getLocationInWindow(iArr);
            m3532preTranslate3XD1CNM(fArr, -view.getScrollX(), -view.getScrollY());
            m3532preTranslate3XD1CNM(fArr, iArr[0], iArr[1]);
        }
        android.graphics.Matrix viewMatrix = view.getMatrix();
        if (!viewMatrix.isIdentity()) {
            Intrinsics.checkNotNullExpressionValue(viewMatrix, "viewMatrix");
            m3531preConcattUYjHk(fArr, viewMatrix);
        }
    }

    @Override // androidx.compose.ui.platform.CalculateMatrixToWindow
    /* renamed from: calculateMatrixToWindow-EL8BTi8 */
    public void mo3530calculateMatrixToWindowEL8BTi8(@NotNull View view, @NotNull float[] matrix) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        Matrix.m2045resetimpl(matrix);
        m3533transformMatrixToWindowEL8BTi8(view, matrix);
    }
}
