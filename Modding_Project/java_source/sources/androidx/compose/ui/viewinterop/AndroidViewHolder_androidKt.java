package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Metadata;
/* compiled from: AndroidViewHolder.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidViewHolder_androidKt {
    private static final int Unmeasured = Integer.MIN_VALUE;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void layoutAccordingTo(View view, LayoutNode layoutNode) {
        long positionInRoot = LayoutCoordinatesKt.positionInRoot(layoutNode.getCoordinates());
        int c10 = bt.a.c(Offset.m1606getXimpl(positionInRoot));
        int c11 = bt.a.c(Offset.m1607getYimpl(positionInRoot));
        view.layout(c10, c11, view.getMeasuredWidth() + c10, view.getMeasuredHeight() + c11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float toComposeOffset(int i10) {
        return i10 * (-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float toComposeVelocity(float f10) {
        return f10 * (-1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int toNestedScrollSource(int i10) {
        if (i10 == 0) {
            return NestedScrollSource.Companion.m3109getDragWNlRxjI();
        }
        return NestedScrollSource.Companion.m3110getFlingWNlRxjI();
    }
}
