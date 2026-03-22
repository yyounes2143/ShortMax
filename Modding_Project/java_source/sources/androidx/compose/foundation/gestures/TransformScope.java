package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
/* compiled from: TransformableState.kt */
@Metadata
/* loaded from: classes.dex */
public interface TransformScope {

    /* compiled from: TransformableState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    /* renamed from: transformBy-d-4ec7I$default  reason: not valid java name */
    static /* synthetic */ void m361transformByd4ec7I$default(TransformScope transformScope, float f10, long j10, float f11, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                f10 = 1.0f;
            }
            if ((i10 & 2) != 0) {
                j10 = Offset.Companion.m1622getZeroF1C5BW0();
            }
            if ((i10 & 4) != 0) {
                f11 = 0.0f;
            }
            transformScope.mo276transformByd4ec7I(f10, j10, f11);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: transformBy-d-4ec7I");
    }

    /* renamed from: transformBy-d-4ec7I */
    void mo276transformByd4ec7I(float f10, long j10, float f11);
}
