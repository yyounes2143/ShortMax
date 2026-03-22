package androidx.compose.ui.platform;

import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewConfiguration.kt */
@Metadata
/* loaded from: classes.dex */
public interface ViewConfiguration {

    /* compiled from: ViewConfiguration.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: getMinimumTouchTargetSize-MYxV2XQ  reason: not valid java name */
        public static long m3577getMinimumTouchTargetSizeMYxV2XQ(@NotNull ViewConfiguration viewConfiguration) {
            return ViewConfiguration.super.mo3464getMinimumTouchTargetSizeMYxV2XQ();
        }
    }

    long getDoubleTapMinTimeMillis();

    long getDoubleTapTimeoutMillis();

    long getLongPressTimeoutMillis();

    /* renamed from: getMinimumTouchTargetSize-MYxV2XQ */
    default long mo3464getMinimumTouchTargetSizeMYxV2XQ() {
        float f10 = 48;
        return DpKt.m4071DpSizeYgX7TsA(Dp.m4049constructorimpl(f10), Dp.m4049constructorimpl(f10));
    }

    float getTouchSlop();
}
