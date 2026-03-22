package androidx.compose.ui.platform;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidViewConfiguration.android.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class AndroidViewConfiguration implements ViewConfiguration {
    public static final int $stable = 8;
    @NotNull
    private final android.view.ViewConfiguration viewConfiguration;

    public AndroidViewConfiguration(@NotNull android.view.ViewConfiguration viewConfiguration) {
        Intrinsics.checkNotNullParameter(viewConfiguration, "viewConfiguration");
        this.viewConfiguration = viewConfiguration;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public long getDoubleTapMinTimeMillis() {
        return 40L;
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public long getDoubleTapTimeoutMillis() {
        return android.view.ViewConfiguration.getDoubleTapTimeout();
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public long getLongPressTimeoutMillis() {
        return android.view.ViewConfiguration.getLongPressTimeout();
    }

    @Override // androidx.compose.ui.platform.ViewConfiguration
    public float getTouchSlop() {
        return this.viewConfiguration.getScaledTouchSlop();
    }
}
