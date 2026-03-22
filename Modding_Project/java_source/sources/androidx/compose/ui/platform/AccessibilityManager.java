package androidx.compose.ui.platform;

import kotlin.Metadata;
/* compiled from: AccessibilityManager.kt */
@Metadata
/* loaded from: classes.dex */
public interface AccessibilityManager {

    /* compiled from: AccessibilityManager.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    static /* synthetic */ long calculateRecommendedTimeoutMillis$default(AccessibilityManager accessibilityManager, long j10, boolean z10, boolean z11, boolean z12, int i10, Object obj) {
        boolean z13;
        boolean z14;
        boolean z15;
        if (obj == null) {
            if ((i10 & 2) != 0) {
                z13 = false;
            } else {
                z13 = z10;
            }
            if ((i10 & 4) != 0) {
                z14 = false;
            } else {
                z14 = z11;
            }
            if ((i10 & 8) != 0) {
                z15 = false;
            } else {
                z15 = z12;
            }
            return accessibilityManager.calculateRecommendedTimeoutMillis(j10, z13, z14, z15);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: calculateRecommendedTimeoutMillis");
    }

    long calculateRecommendedTimeoutMillis(long j10, boolean z10, boolean z11, boolean z12);
}
