package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NestedScrollInteropConnection.kt */
@Metadata
/* loaded from: classes.dex */
public final class NestedScrollInteropConnectionKt {
    private static final float ScrollingAxesThreshold = 0.5f;

    private static final float ceilAwayFromZero(float f10) {
        double floor;
        if (f10 >= 0.0f) {
            floor = Math.ceil(f10);
        } else {
            floor = Math.floor(f10);
        }
        return (float) floor;
    }

    public static final int composeToViewOffset(float f10) {
        return ((int) ceilAwayFromZero(f10)) * (-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getScrollAxes-k-4lQ0M  reason: not valid java name */
    public static final int m3568getScrollAxesk4lQ0M(long j10) {
        int i10;
        if (Math.abs(Offset.m1606getXimpl(j10)) >= 0.5f) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (Math.abs(Offset.m1607getYimpl(j10)) >= 0.5f) {
            return i10 | 2;
        }
        return i10;
    }

    @Composable
    @ExperimentalComposeUiApi
    @NotNull
    public static final NestedScrollConnection rememberNestedScrollInteropConnection(@Nullable Composer composer, int i10) {
        composer.startReplaceableGroup(1471602047);
        View view = (View) composer.consume(AndroidCompositionLocals_androidKt.getLocalView());
        composer.startReplaceableGroup(1157296644);
        boolean changed = composer.changed(view);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new NestedScrollInteropConnection(view);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        NestedScrollInteropConnection nestedScrollInteropConnection = (NestedScrollInteropConnection) rememberedValue;
        composer.endReplaceableGroup();
        return nestedScrollInteropConnection;
    }

    private static final float reverseAxis(int i10) {
        return i10 * (-1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toOffset-Uv8p0NA  reason: not valid java name */
    public static final long m3569toOffsetUv8p0NA(int[] iArr, long j10) {
        float d10;
        float d11;
        if (Offset.m1606getXimpl(j10) >= 0.0f) {
            d10 = kotlin.ranges.e.i(reverseAxis(iArr[0]), Offset.m1606getXimpl(j10));
        } else {
            d10 = kotlin.ranges.e.d(reverseAxis(iArr[0]), Offset.m1606getXimpl(j10));
        }
        if (Offset.m1607getYimpl(j10) >= 0.0f) {
            d11 = kotlin.ranges.e.i(reverseAxis(iArr[1]), Offset.m1607getYimpl(j10));
        } else {
            d11 = kotlin.ranges.e.d(reverseAxis(iArr[1]), Offset.m1607getYimpl(j10));
        }
        return OffsetKt.Offset(d10, d11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toViewType-GyEprt8  reason: not valid java name */
    public static final int m3570toViewTypeGyEprt8(int i10) {
        return !NestedScrollSource.m3104equalsimpl0(i10, NestedScrollSource.Companion.m3109getDragWNlRxjI()) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float toViewVelocity(float f10) {
        return f10 * (-1.0f);
    }
}
