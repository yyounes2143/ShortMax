package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Matrix.kt */
@Metadata
/* loaded from: classes.dex */
public final class MatrixKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dot-p89u6pk  reason: not valid java name */
    public static final float m2059dotp89u6pk(float[] fArr, int i10, float[] fArr2, int i11) {
        int i12 = i10 * 4;
        return (fArr[i12] * fArr2[i11]) + (fArr[i12 + 1] * fArr2[4 + i11]) + (fArr[i12 + 2] * fArr2[8 + i11]) + (fArr[i12 + 3] * fArr2[12 + i11]);
    }

    /* renamed from: isIdentity-58bKbWc  reason: not valid java name */
    public static final boolean m2060isIdentity58bKbWc(@NotNull float[] isIdentity) {
        float f10;
        Intrinsics.checkNotNullParameter(isIdentity, "$this$isIdentity");
        for (int i10 = 0; i10 < 4; i10++) {
            for (int i11 = 0; i11 < 4; i11++) {
                if (i10 == i11) {
                    f10 = 1.0f;
                } else {
                    f10 = 0.0f;
                }
                if (isIdentity[(i10 * 4) + i11] != f10) {
                    return false;
                }
            }
        }
        return true;
    }
}
