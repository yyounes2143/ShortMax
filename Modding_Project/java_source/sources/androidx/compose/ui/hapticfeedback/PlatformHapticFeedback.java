package androidx.compose.ui.hapticfeedback;

import android.view.View;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformHapticFeedback.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class PlatformHapticFeedback implements HapticFeedback {
    @NotNull
    private final View view;

    public PlatformHapticFeedback(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.view = view;
    }

    @Override // androidx.compose.ui.hapticfeedback.HapticFeedback
    /* renamed from: performHapticFeedback-CdsT49E */
    public void mo2454performHapticFeedbackCdsT49E(int i10) {
        HapticFeedbackType.Companion companion = HapticFeedbackType.Companion;
        if (HapticFeedbackType.m2458equalsimpl0(i10, companion.m2462getLongPress5zf0vsI())) {
            this.view.performHapticFeedback(0);
        } else if (HapticFeedbackType.m2458equalsimpl0(i10, companion.m2463getTextHandleMove5zf0vsI())) {
            this.view.performHapticFeedback(9);
        }
    }
}
