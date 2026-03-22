package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidComposeView.android.kt */
@RequiresApi(29)
@Metadata
/* loaded from: classes.dex */
final class CalculateMatrixToWindowApi29 implements CalculateMatrixToWindow {
    @NotNull
    private final Matrix tmpMatrix = new Matrix();
    @NotNull
    private final int[] tmpPosition = new int[2];

    @Override // androidx.compose.ui.platform.CalculateMatrixToWindow
    @DoNotInline
    /* renamed from: calculateMatrixToWindow-EL8BTi8 */
    public void mo3530calculateMatrixToWindowEL8BTi8(@NotNull View view, @NotNull float[] matrix) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        this.tmpMatrix.reset();
        view.transformMatrixToGlobal(this.tmpMatrix);
        ViewParent parent = view.getParent();
        while (parent instanceof View) {
            view = (View) parent;
            parent = view.getParent();
        }
        view.getLocationOnScreen(this.tmpPosition);
        int[] iArr = this.tmpPosition;
        int i10 = iArr[0];
        int i11 = iArr[1];
        view.getLocationInWindow(iArr);
        int[] iArr2 = this.tmpPosition;
        this.tmpMatrix.postTranslate(iArr2[0] - i10, iArr2[1] - i11);
        AndroidMatrixConversions_androidKt.m1718setFromtUYjHk(matrix, this.tmpMatrix);
    }
}
