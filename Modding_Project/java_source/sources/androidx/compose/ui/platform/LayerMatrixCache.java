package androidx.compose.ui.platform;

import android.graphics.Matrix;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LayerMatrixCache.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayerMatrixCache<T> {
    @Nullable
    private Matrix androidMatrixCache;
    @NotNull
    private final Function2<T, Matrix, Unit> getMatrix;
    @Nullable
    private float[] inverseMatrixCache;
    private boolean isDirty;
    private boolean isInverseDirty;
    private boolean isInverseValid;
    @Nullable
    private float[] matrixCache;
    @Nullable
    private Matrix previousAndroidMatrix;

    /* JADX WARN: Multi-variable type inference failed */
    public LayerMatrixCache(@NotNull Function2<? super T, ? super Matrix, Unit> getMatrix) {
        Intrinsics.checkNotNullParameter(getMatrix, "getMatrix");
        this.getMatrix = getMatrix;
        this.isDirty = true;
        this.isInverseDirty = true;
        this.isInverseValid = true;
    }

    @Nullable
    /* renamed from: calculateInverseMatrix-bWbORWo  reason: not valid java name */
    public final float[] m3549calculateInverseMatrixbWbORWo(T t10) {
        float[] fArr = this.inverseMatrixCache;
        if (fArr == null) {
            fArr = androidx.compose.ui.graphics.Matrix.m2036constructorimpl$default(null, 1, null);
            this.inverseMatrixCache = fArr;
        }
        if (this.isInverseDirty) {
            this.isInverseValid = InvertMatrixKt.m3547invertToJiSxe2E(m3550calculateMatrixGrdbGEg(t10), fArr);
            this.isInverseDirty = false;
        }
        if (!this.isInverseValid) {
            return null;
        }
        return fArr;
    }

    @NotNull
    /* renamed from: calculateMatrix-GrdbGEg  reason: not valid java name */
    public final float[] m3550calculateMatrixGrdbGEg(T t10) {
        float[] fArr = this.matrixCache;
        if (fArr == null) {
            fArr = androidx.compose.ui.graphics.Matrix.m2036constructorimpl$default(null, 1, null);
            this.matrixCache = fArr;
        }
        if (!this.isDirty) {
            return fArr;
        }
        Matrix matrix = this.androidMatrixCache;
        if (matrix == null) {
            matrix = new Matrix();
            this.androidMatrixCache = matrix;
        }
        this.getMatrix.invoke(t10, matrix);
        Matrix matrix2 = this.previousAndroidMatrix;
        if (matrix2 == null || !Intrinsics.areEqual(matrix, matrix2)) {
            AndroidMatrixConversions_androidKt.m1718setFromtUYjHk(fArr, matrix);
            this.androidMatrixCache = matrix2;
            this.previousAndroidMatrix = matrix;
        }
        this.isDirty = false;
        return fArr;
    }

    public final void invalidate() {
        this.isDirty = true;
        this.isInverseDirty = true;
    }
}
