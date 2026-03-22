package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ViewCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NestedScrollInteropConnection.kt */
@Metadata
/* loaded from: classes.dex */
public final class NestedScrollInteropConnection implements NestedScrollConnection {
    @NotNull
    private final int[] consumedScrollCache;
    @NotNull
    private final NestedScrollingChildHelper nestedScrollChildHelper;
    @NotNull
    private final View view;

    public NestedScrollInteropConnection(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.view = view;
        NestedScrollingChildHelper nestedScrollingChildHelper = new NestedScrollingChildHelper(view);
        nestedScrollingChildHelper.setNestedScrollingEnabled(true);
        this.nestedScrollChildHelper = nestedScrollingChildHelper;
        this.consumedScrollCache = new int[2];
        ViewCompat.setNestedScrollingEnabled(view, true);
    }

    private final void interruptOngoingScrolls() {
        if (this.nestedScrollChildHelper.hasNestedScrollingParent(0)) {
            this.nestedScrollChildHelper.stopNestedScroll(0);
        }
        if (this.nestedScrollChildHelper.hasNestedScrollingParent(1)) {
            this.nestedScrollChildHelper.stopNestedScroll(1);
        }
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @Nullable
    /* renamed from: onPostFling-RZ2iAVY */
    public Object mo347onPostFlingRZ2iAVY(long j10, long j11, @NotNull rs.c<? super Velocity> cVar) {
        float viewVelocity;
        float viewVelocity2;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        viewVelocity = NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m4274getXimpl(j11));
        viewVelocity2 = NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m4275getYimpl(j11));
        if (!nestedScrollingChildHelper.dispatchNestedFling(viewVelocity, viewVelocity2, true)) {
            j11 = Velocity.Companion.m4285getZero9UxMQ8M();
        }
        interruptOngoingScrolls();
        return Velocity.m4265boximpl(j11);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public long mo348onPostScrollDzOQY0M(long j10, long j11, int i10) {
        int m3568getScrollAxesk4lQ0M;
        int m3570toViewTypeGyEprt8;
        int m3570toViewTypeGyEprt82;
        long m3569toOffsetUv8p0NA;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        m3568getScrollAxesk4lQ0M = NestedScrollInteropConnectionKt.m3568getScrollAxesk4lQ0M(j11);
        m3570toViewTypeGyEprt8 = NestedScrollInteropConnectionKt.m3570toViewTypeGyEprt8(i10);
        if (nestedScrollingChildHelper.startNestedScroll(m3568getScrollAxesk4lQ0M, m3570toViewTypeGyEprt8)) {
            kotlin.collections.n.F(this.consumedScrollCache, 0, 0, 0, 6, null);
            NestedScrollingChildHelper nestedScrollingChildHelper2 = this.nestedScrollChildHelper;
            int composeToViewOffset = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m1606getXimpl(j10));
            int composeToViewOffset2 = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m1607getYimpl(j10));
            int composeToViewOffset3 = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m1606getXimpl(j11));
            int composeToViewOffset4 = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m1607getYimpl(j11));
            m3570toViewTypeGyEprt82 = NestedScrollInteropConnectionKt.m3570toViewTypeGyEprt8(i10);
            nestedScrollingChildHelper2.dispatchNestedScroll(composeToViewOffset, composeToViewOffset2, composeToViewOffset3, composeToViewOffset4, null, m3570toViewTypeGyEprt82, this.consumedScrollCache);
            m3569toOffsetUv8p0NA = NestedScrollInteropConnectionKt.m3569toOffsetUv8p0NA(this.consumedScrollCache, j11);
            return m3569toOffsetUv8p0NA;
        }
        return Offset.Companion.m1622getZeroF1C5BW0();
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    @Nullable
    /* renamed from: onPreFling-QWom1Mo */
    public Object mo509onPreFlingQWom1Mo(long j10, @NotNull rs.c<? super Velocity> cVar) {
        float viewVelocity;
        float viewVelocity2;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        viewVelocity = NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m4274getXimpl(j10));
        viewVelocity2 = NestedScrollInteropConnectionKt.toViewVelocity(Velocity.m4275getYimpl(j10));
        if (!nestedScrollingChildHelper.dispatchNestedPreFling(viewVelocity, viewVelocity2)) {
            j10 = Velocity.Companion.m4285getZero9UxMQ8M();
        }
        interruptOngoingScrolls();
        return Velocity.m4265boximpl(j10);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public long mo510onPreScrollOzD1aCk(long j10, int i10) {
        int m3568getScrollAxesk4lQ0M;
        int m3570toViewTypeGyEprt8;
        int m3570toViewTypeGyEprt82;
        long m3569toOffsetUv8p0NA;
        NestedScrollingChildHelper nestedScrollingChildHelper = this.nestedScrollChildHelper;
        m3568getScrollAxesk4lQ0M = NestedScrollInteropConnectionKt.m3568getScrollAxesk4lQ0M(j10);
        m3570toViewTypeGyEprt8 = NestedScrollInteropConnectionKt.m3570toViewTypeGyEprt8(i10);
        if (nestedScrollingChildHelper.startNestedScroll(m3568getScrollAxesk4lQ0M, m3570toViewTypeGyEprt8)) {
            kotlin.collections.n.F(this.consumedScrollCache, 0, 0, 0, 6, null);
            NestedScrollingChildHelper nestedScrollingChildHelper2 = this.nestedScrollChildHelper;
            int composeToViewOffset = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m1606getXimpl(j10));
            int composeToViewOffset2 = NestedScrollInteropConnectionKt.composeToViewOffset(Offset.m1607getYimpl(j10));
            int[] iArr = this.consumedScrollCache;
            m3570toViewTypeGyEprt82 = NestedScrollInteropConnectionKt.m3570toViewTypeGyEprt8(i10);
            nestedScrollingChildHelper2.dispatchNestedPreScroll(composeToViewOffset, composeToViewOffset2, iArr, null, m3570toViewTypeGyEprt82);
            m3569toOffsetUv8p0NA = NestedScrollInteropConnectionKt.m3569toOffsetUv8p0NA(this.consumedScrollCache, j10);
            return m3569toOffsetUv8p0NA;
        }
        return Offset.Companion.m1622getZeroF1C5BW0();
    }
}
