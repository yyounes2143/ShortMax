package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.layout.BeyondBoundsLayoutKt;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyBeyondBoundsModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class LazyListBeyondBoundsModifierLocal implements ModifierLocalProvider<BeyondBoundsLayout>, BeyondBoundsLayout {
    @NotNull
    private final LazyListBeyondBoundsInfo beyondBoundsInfo;
    @NotNull
    private final LayoutDirection layoutDirection;
    private final boolean reverseLayout;
    @NotNull
    private final LazyListState state;

    /* compiled from: LazyBeyondBoundsModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Ltr.ordinal()] = 1;
            iArr[LayoutDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public LazyListBeyondBoundsModifierLocal(@NotNull LazyListState state, @NotNull LazyListBeyondBoundsInfo beyondBoundsInfo, boolean z10, @NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(beyondBoundsInfo, "beyondBoundsInfo");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        this.state = state;
        this.beyondBoundsInfo = beyondBoundsInfo;
        this.reverseLayout = z10;
        this.layoutDirection = layoutDirection;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (r5.reverseLayout != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
        if (r5.reverseLayout != false) goto L3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
        if (r5.reverseLayout != false) goto L3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0066, code lost:
        if (r5.reverseLayout != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0084, code lost:
        if (r5.reverseLayout != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0089, code lost:
        if (r5.reverseLayout != false) goto L3;
     */
    /* renamed from: addNextInterval-FR3nfPY  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo.Interval m555addNextIntervalFR3nfPY(androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo.Interval r6, int r7) {
        /*
            r5 = this;
            int r0 = r6.getStart()
            int r6 = r6.getEnd()
            androidx.compose.ui.layout.BeyondBoundsLayout$LayoutDirection$Companion r1 = androidx.compose.ui.layout.BeyondBoundsLayout.LayoutDirection.Companion
            int r2 = r1.m3321getBeforehoxUOeE()
            boolean r2 = androidx.compose.ui.layout.BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(r7, r2)
            if (r2 == 0) goto L18
        L14:
            int r0 = r0 + (-1)
            goto L8c
        L18:
            int r2 = r1.m3320getAfterhoxUOeE()
            boolean r2 = androidx.compose.ui.layout.BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(r7, r2)
            if (r2 == 0) goto L26
        L22:
            int r6 = r6 + 1
            goto L8c
        L26:
            int r2 = r1.m3319getAbovehoxUOeE()
            boolean r2 = androidx.compose.ui.layout.BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(r7, r2)
            if (r2 == 0) goto L35
            boolean r7 = r5.reverseLayout
            if (r7 == 0) goto L14
            goto L22
        L35:
            int r2 = r1.m3322getBelowhoxUOeE()
            boolean r2 = androidx.compose.ui.layout.BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(r7, r2)
            if (r2 == 0) goto L44
            boolean r7 = r5.reverseLayout
            if (r7 == 0) goto L22
            goto L14
        L44:
            int r2 = r1.m3323getLefthoxUOeE()
            boolean r2 = androidx.compose.ui.layout.BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(r7, r2)
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L69
            androidx.compose.ui.unit.LayoutDirection r7 = r5.layoutDirection
            int[] r1 = androidx.compose.foundation.lazy.LazyListBeyondBoundsModifierLocal.WhenMappings.$EnumSwitchMapping$0
            int r7 = r7.ordinal()
            r7 = r1[r7]
            if (r7 == r4) goto L64
            if (r7 == r3) goto L5f
            goto L8c
        L5f:
            boolean r7 = r5.reverseLayout
            if (r7 == 0) goto L22
            goto L14
        L64:
            boolean r7 = r5.reverseLayout
            if (r7 == 0) goto L14
            goto L22
        L69:
            int r1 = r1.m3324getRighthoxUOeE()
            boolean r7 = androidx.compose.ui.layout.BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(r7, r1)
            if (r7 == 0) goto L93
            androidx.compose.ui.unit.LayoutDirection r7 = r5.layoutDirection
            int[] r1 = androidx.compose.foundation.lazy.LazyListBeyondBoundsModifierLocal.WhenMappings.$EnumSwitchMapping$0
            int r7 = r7.ordinal()
            r7 = r1[r7]
            if (r7 == r4) goto L87
            if (r7 == r3) goto L82
            goto L8c
        L82:
            boolean r7 = r5.reverseLayout
            if (r7 == 0) goto L14
            goto L22
        L87:
            boolean r7 = r5.reverseLayout
            if (r7 == 0) goto L22
            goto L14
        L8c:
            androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo r7 = r5.beyondBoundsInfo
            androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo$Interval r6 = r7.addInterval(r0, r6)
            return r6
        L93:
            androidx.compose.foundation.lazy.LazyBeyondBoundsModifierKt.access$unsupportedDirection()
            kotlin.KotlinNothingValueException r6 = new kotlin.KotlinNothingValueException
            r6.<init>()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.lazy.LazyListBeyondBoundsModifierLocal.m555addNextIntervalFR3nfPY(androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo$Interval, int):androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo$Interval");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hasMoreContent-FR3nfPY  reason: not valid java name */
    public final boolean m556hasMoreContentFR3nfPY(LazyListBeyondBoundsInfo.Interval interval, int i10) {
        BeyondBoundsLayout.LayoutDirection.Companion companion = BeyondBoundsLayout.LayoutDirection.Companion;
        if (BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(i10, companion.m3321getBeforehoxUOeE())) {
            return hasMoreContent_FR3nfPY$hasMoreItemsBefore(interval);
        }
        if (BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(i10, companion.m3320getAfterhoxUOeE())) {
            return hasMoreContent_FR3nfPY$hasMoreItemsAfter(interval, this);
        }
        if (BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(i10, companion.m3319getAbovehoxUOeE())) {
            if (this.reverseLayout) {
                return hasMoreContent_FR3nfPY$hasMoreItemsAfter(interval, this);
            }
            return hasMoreContent_FR3nfPY$hasMoreItemsBefore(interval);
        } else if (BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(i10, companion.m3322getBelowhoxUOeE())) {
            if (this.reverseLayout) {
                return hasMoreContent_FR3nfPY$hasMoreItemsBefore(interval);
            }
            return hasMoreContent_FR3nfPY$hasMoreItemsAfter(interval, this);
        } else if (BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(i10, companion.m3323getLefthoxUOeE())) {
            int i11 = WhenMappings.$EnumSwitchMapping$0[this.layoutDirection.ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    if (this.reverseLayout) {
                        return hasMoreContent_FR3nfPY$hasMoreItemsBefore(interval);
                    }
                    return hasMoreContent_FR3nfPY$hasMoreItemsAfter(interval, this);
                }
                throw new NoWhenBranchMatchedException();
            } else if (this.reverseLayout) {
                return hasMoreContent_FR3nfPY$hasMoreItemsAfter(interval, this);
            } else {
                return hasMoreContent_FR3nfPY$hasMoreItemsBefore(interval);
            }
        } else if (!BeyondBoundsLayout.LayoutDirection.m3315equalsimpl0(i10, companion.m3324getRighthoxUOeE())) {
            LazyBeyondBoundsModifierKt.unsupportedDirection();
            throw new KotlinNothingValueException();
        } else {
            int i12 = WhenMappings.$EnumSwitchMapping$0[this.layoutDirection.ordinal()];
            if (i12 != 1) {
                if (i12 == 2) {
                    if (this.reverseLayout) {
                        return hasMoreContent_FR3nfPY$hasMoreItemsAfter(interval, this);
                    }
                    return hasMoreContent_FR3nfPY$hasMoreItemsBefore(interval);
                }
                throw new NoWhenBranchMatchedException();
            } else if (this.reverseLayout) {
                return hasMoreContent_FR3nfPY$hasMoreItemsBefore(interval);
            } else {
                return hasMoreContent_FR3nfPY$hasMoreItemsAfter(interval, this);
            }
        }
    }

    private static final boolean hasMoreContent_FR3nfPY$hasMoreItemsAfter(LazyListBeyondBoundsInfo.Interval interval, LazyListBeyondBoundsModifierLocal lazyListBeyondBoundsModifierLocal) {
        if (interval.getEnd() < lazyListBeyondBoundsModifierLocal.state.getLayoutInfo().getTotalItemsCount() - 1) {
            return true;
        }
        return false;
    }

    private static final boolean hasMoreContent_FR3nfPY$hasMoreItemsBefore(LazyListBeyondBoundsInfo.Interval interval) {
        if (interval.getStart() > 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<BeyondBoundsLayout> getKey() {
        return BeyondBoundsLayoutKt.getModifierLocalBeyondBoundsLayout();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public BeyondBoundsLayout getValue() {
        return this;
    }

    @Override // androidx.compose.ui.layout.BeyondBoundsLayout
    @Nullable
    /* renamed from: layout-o7g1Pn8  reason: not valid java name */
    public <T> T mo557layouto7g1Pn8(final int i10, @NotNull Function1<? super BeyondBoundsLayout.BeyondBoundsScope, ? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = (T) this.beyondBoundsInfo.addInterval(this.state.getFirstVisibleItemIndex(), ((LazyListItemInfo) CollectionsKt.C0(this.state.getLayoutInfo().getVisibleItemsInfo())).getIndex());
        T t10 = null;
        while (t10 == null && m556hasMoreContentFR3nfPY((LazyListBeyondBoundsInfo.Interval) objectRef.element, i10)) {
            this.beyondBoundsInfo.removeInterval((LazyListBeyondBoundsInfo.Interval) objectRef.element);
            objectRef.element = (T) m555addNextIntervalFR3nfPY((LazyListBeyondBoundsInfo.Interval) objectRef.element, i10);
            Remeasurement remeasurement$foundation_release = this.state.getRemeasurement$foundation_release();
            if (remeasurement$foundation_release != null) {
                remeasurement$foundation_release.forceRemeasure();
            }
            t10 = block.invoke(new BeyondBoundsLayout.BeyondBoundsScope() { // from class: androidx.compose.foundation.lazy.LazyListBeyondBoundsModifierLocal$layout$2
                @Override // androidx.compose.ui.layout.BeyondBoundsLayout.BeyondBoundsScope
                public boolean getHasMoreContent() {
                    boolean m556hasMoreContentFR3nfPY;
                    m556hasMoreContentFR3nfPY = LazyListBeyondBoundsModifierLocal.this.m556hasMoreContentFR3nfPY(objectRef.element, i10);
                    return m556hasMoreContentFR3nfPY;
                }
            });
        }
        this.beyondBoundsInfo.removeInterval((LazyListBeyondBoundsInfo.Interval) objectRef.element);
        Remeasurement remeasurement$foundation_release2 = this.state.getRemeasurement$foundation_release();
        if (remeasurement$foundation_release2 != null) {
            remeasurement$foundation_release2.forceRemeasure();
        }
        return t10;
    }
}
