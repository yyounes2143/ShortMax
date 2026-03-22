package androidx.compose.ui.platform;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidAccessibilityManager.android.kt */
@RequiresApi(29)
@Metadata
/* loaded from: classes.dex */
public final class Api29Impl {
    @NotNull
    public static final Api29Impl INSTANCE = new Api29Impl();

    private Api29Impl() {
    }

    @DoNotInline
    public final int getRecommendedTimeoutMillis(@NotNull android.view.accessibility.AccessibilityManager accessibilityManager, int i10, int i11) {
        Intrinsics.checkNotNullParameter(accessibilityManager, "accessibilityManager");
        return accessibilityManager.getRecommendedTimeoutMillis(i10, i11);
    }
}
