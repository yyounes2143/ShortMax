package androidx.compose.ui.platform;

import android.content.Context;
import android.os.Build;
import androidx.collection.SieveCacheKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidAccessibilityManager.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidAccessibilityManager implements AccessibilityManager {
    @NotNull
    private static final Companion Companion = new Companion(null);
    @Deprecated
    public static final int FlagContentControls = 4;
    @Deprecated
    public static final int FlagContentIcons = 1;
    @Deprecated
    public static final int FlagContentText = 2;
    @NotNull
    private final android.view.accessibility.AccessibilityManager accessibilityManager;

    /* compiled from: AndroidAccessibilityManager.android.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AndroidAccessibilityManager(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("accessibility");
        if (systemService != null) {
            this.accessibilityManager = (android.view.accessibility.AccessibilityManager) systemService;
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.platform.AccessibilityManager
    public long calculateRecommendedTimeoutMillis(long j10, boolean z10, boolean z11, boolean z12) {
        int i10 = z10;
        if (j10 >= SieveCacheKt.NodeLinkMask) {
            return j10;
        }
        if (z11) {
            i10 = (z10 ? 1 : 0) | true;
        }
        if (z12) {
            i10 = (i10 == true ? 1 : 0) | 4;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            int recommendedTimeoutMillis = Api29Impl.INSTANCE.getRecommendedTimeoutMillis(this.accessibilityManager, (int) j10, i10);
            if (recommendedTimeoutMillis != Integer.MAX_VALUE) {
                return recommendedTimeoutMillis;
            }
        } else if (!z12 || !this.accessibilityManager.isTouchExplorationEnabled()) {
            return j10;
        }
        return Long.MAX_VALUE;
    }
}
