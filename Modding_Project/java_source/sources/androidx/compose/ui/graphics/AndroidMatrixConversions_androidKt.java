package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidMatrixConversions.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidMatrixConversions_androidKt {
    /* renamed from: setFrom-EL8BTi8  reason: not valid java name */
    public static final void m1717setFromEL8BTi8(@NotNull android.graphics.Matrix setFrom, @NotNull float[] matrix) {
        Intrinsics.checkNotNullParameter(setFrom, "$this$setFrom");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        float f10 = matrix[2];
        if (f10 == 0.0f) {
            float f11 = matrix[6];
            if (f11 == 0.0f && matrix[10] == 1.0f && matrix[14] == 0.0f) {
                float f12 = matrix[8];
                if (f12 == 0.0f && matrix[9] == 0.0f && matrix[11] == 0.0f) {
                    float f13 = matrix[0];
                    float f14 = matrix[1];
                    float f15 = matrix[3];
                    float f16 = matrix[4];
                    float f17 = matrix[5];
                    float f18 = matrix[7];
                    float f19 = matrix[12];
                    float f20 = matrix[13];
                    float f21 = matrix[15];
                    matrix[0] = f13;
                    matrix[1] = f16;
                    matrix[2] = f19;
                    matrix[3] = f14;
                    matrix[4] = f17;
                    matrix[5] = f20;
                    matrix[6] = f15;
                    matrix[7] = f18;
                    matrix[8] = f21;
                    setFrom.setValues(matrix);
                    matrix[0] = f13;
                    matrix[1] = f14;
                    matrix[2] = f10;
                    matrix[3] = f15;
                    matrix[4] = f16;
                    matrix[5] = f17;
                    matrix[6] = f11;
                    matrix[7] = f18;
                    matrix[8] = f12;
                    return;
                }
            }
        }
        throw new IllegalArgumentException("Android does not support arbitrary transforms");
    }

    /* renamed from: setFrom-tU-YjHk  reason: not valid java name */
    public static final void m1718setFromtUYjHk(@NotNull float[] setFrom, @NotNull android.graphics.Matrix matrix) {
        Intrinsics.checkNotNullParameter(setFrom, "$this$setFrom");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        matrix.getValues(setFrom);
        float f10 = setFrom[0];
        float f11 = setFrom[1];
        float f12 = setFrom[2];
        float f13 = setFrom[3];
        float f14 = setFrom[4];
        float f15 = setFrom[5];
        float f16 = setFrom[6];
        float f17 = setFrom[7];
        float f18 = setFrom[8];
        setFrom[0] = f10;
        setFrom[1] = f13;
        setFrom[2] = 0.0f;
        setFrom[3] = f16;
        setFrom[4] = f11;
        setFrom[5] = f14;
        setFrom[6] = 0.0f;
        setFrom[7] = f17;
        setFrom[8] = 0.0f;
        setFrom[9] = 0.0f;
        setFrom[10] = 1.0f;
        setFrom[11] = 0.0f;
        setFrom[12] = f12;
        setFrom[13] = f15;
        setFrom[14] = 0.0f;
        setFrom[15] = f18;
    }
}
