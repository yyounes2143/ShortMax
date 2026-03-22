package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SelectionHandles.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectionHandlesKt {
    private static final float HandleHeight;
    private static final float HandleWidth;
    @NotNull
    private static final SemanticsPropertyKey<SelectionHandleInfo> SelectionHandleInfoKey = new SemanticsPropertyKey<>("SelectionHandleInfo", null, 2, null);

    static {
        float f10 = 25;
        HandleWidth = Dp.m4049constructorimpl(f10);
        HandleHeight = Dp.m4049constructorimpl(f10);
    }

    /* renamed from: getAdjustedCoordinates-k-4lQ0M  reason: not valid java name */
    public static final long m832getAdjustedCoordinatesk4lQ0M(long j10) {
        return OffsetKt.Offset(Offset.m1606getXimpl(j10), Offset.m1607getYimpl(j10) - 1.0f);
    }

    public static final float getHandleHeight() {
        return HandleHeight;
    }

    public static final float getHandleWidth() {
        return HandleWidth;
    }

    @NotNull
    public static final SemanticsPropertyKey<SelectionHandleInfo> getSelectionHandleInfoKey() {
        return SelectionHandleInfoKey;
    }
}
