package androidx.compose.ui.node;

import kotlin.Metadata;
/* compiled from: HitTestResult.kt */
@Metadata
/* loaded from: classes.dex */
public final class HitTestResultKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final long DistanceAndInLayer(float f10, boolean z10) {
        long j10;
        long floatToIntBits = Float.floatToIntBits(f10);
        if (z10) {
            j10 = 1;
        } else {
            j10 = 0;
        }
        return DistanceAndInLayer.m3415constructorimpl((j10 & 4294967295L) | (floatToIntBits << 32));
    }
}
