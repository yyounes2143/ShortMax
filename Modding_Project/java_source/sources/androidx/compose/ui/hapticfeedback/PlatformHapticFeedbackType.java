package androidx.compose.ui.hapticfeedback;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformHapticFeedback.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class PlatformHapticFeedbackType {
    @NotNull
    public static final PlatformHapticFeedbackType INSTANCE = new PlatformHapticFeedbackType();
    private static final int LongPress = HapticFeedbackType.m2456constructorimpl(0);
    private static final int TextHandleMove = HapticFeedbackType.m2456constructorimpl(9);

    private PlatformHapticFeedbackType() {
    }

    /* renamed from: getLongPress-5zf0vsI  reason: not valid java name */
    public final int m2464getLongPress5zf0vsI() {
        return LongPress;
    }

    /* renamed from: getTextHandleMove-5zf0vsI  reason: not valid java name */
    public final int m2465getTextHandleMove5zf0vsI() {
        return TextHandleMove;
    }
}
