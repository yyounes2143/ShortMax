package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidScrollable.android.kt */
@Metadata
/* loaded from: classes.dex */
final class AndroidConfig implements ScrollConfig {
    @NotNull
    public static final AndroidConfig INSTANCE = new AndroidConfig();

    private AndroidConfig() {
    }

    @Override // androidx.compose.foundation.gestures.ScrollConfig
    /* renamed from: calculateMouseWheelScroll-8xgXZGE  reason: not valid java name */
    public long mo272calculateMouseWheelScroll8xgXZGE(@NotNull Density calculateMouseWheelScroll, @NotNull PointerEvent event, long j10) {
        Intrinsics.checkNotNullParameter(calculateMouseWheelScroll, "$this$calculateMouseWheelScroll");
        Intrinsics.checkNotNullParameter(event, "event");
        List<PointerInputChange> changes = event.getChanges();
        Offset m1595boximpl = Offset.m1595boximpl(Offset.Companion.m1622getZeroF1C5BW0());
        int size = changes.size();
        for (int i10 = 0; i10 < size; i10++) {
            m1595boximpl = Offset.m1595boximpl(Offset.m1611plusMKHz9U(m1595boximpl.m1616unboximpl(), changes.get(i10).m3210getScrollDeltaF1C5BW0()));
        }
        return Offset.m1613timestuRUvjQ(m1595boximpl.m1616unboximpl(), -calculateMouseWheelScroll.mo342toPx0680j_4(Dp.m4049constructorimpl(64)));
    }
}
