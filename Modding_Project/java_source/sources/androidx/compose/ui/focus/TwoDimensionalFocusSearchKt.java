package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TwoDimensionalFocusSearch.kt */
@Metadata
/* loaded from: classes.dex */
public final class TwoDimensionalFocusSearchKt {
    @NotNull
    private static final String InvalidFocusDirection = "This function should only be used for 2-D focus search";
    @NotNull
    private static final String NoActiveChild = "ActiveParent must have a focusedChild";

    /* compiled from: TwoDimensionalFocusSearch.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            iArr[FocusStateImpl.ActiveParent.ordinal()] = 1;
            iArr[FocusStateImpl.DeactivatedParent.ordinal()] = 2;
            iArr[FocusStateImpl.Active.ordinal()] = 3;
            iArr[FocusStateImpl.Captured.ordinal()] = 4;
            iArr[FocusStateImpl.Deactivated.ordinal()] = 5;
            iArr[FocusStateImpl.Inactive.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final FocusModifier activeNode(FocusModifier focusModifier) {
        if (focusModifier.getFocusState() != FocusStateImpl.ActiveParent && focusModifier.getFocusState() != FocusStateImpl.DeactivatedParent) {
            throw new IllegalStateException("Check failed.");
        }
        FocusModifier findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(focusModifier);
        if (findActiveFocusNode != null) {
            return findActiveFocusNode;
        }
        throw new IllegalStateException(NoActiveChild);
    }

    /* renamed from: beamBeats-I7lrPNg  reason: not valid java name */
    private static final boolean m1565beamBeatsI7lrPNg(Rect rect, Rect rect2, Rect rect3, int i10) {
        if (beamBeats_I7lrPNg$inSourceBeam(rect3, i10, rect) || !beamBeats_I7lrPNg$inSourceBeam(rect2, i10, rect)) {
            return false;
        }
        if (beamBeats_I7lrPNg$isInDirectionOfSearch(rect3, i10, rect)) {
            FocusDirection.Companion companion = FocusDirection.Companion;
            if (!FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s()) && !FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s()) && m1566beamBeats_I7lrPNg$majorAxisDistance3(rect2, i10, rect) >= beamBeats_I7lrPNg$majorAxisDistanceToFarEdge(rect3, i10, rect)) {
                return false;
            }
        }
        return true;
    }

    private static final boolean beamBeats_I7lrPNg$inSourceBeam(Rect rect, int i10, Rect rect2) {
        boolean m1542equalsimpl0;
        boolean m1542equalsimpl02;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
            m1542equalsimpl0 = true;
        } else {
            m1542equalsimpl0 = FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s());
        }
        if (m1542equalsimpl0) {
            if (rect.getBottom() > rect2.getTop() && rect.getTop() < rect2.getBottom()) {
                return true;
            }
        } else {
            if (FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s())) {
                m1542equalsimpl02 = true;
            } else {
                m1542equalsimpl02 = FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s());
            }
            if (m1542equalsimpl02) {
                if (rect.getRight() > rect2.getLeft() && rect.getLeft() < rect2.getRight()) {
                    return true;
                }
            } else {
                throw new IllegalStateException(InvalidFocusDirection);
            }
        }
        return false;
    }

    private static final boolean beamBeats_I7lrPNg$isInDirectionOfSearch(Rect rect, int i10, Rect rect2) {
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
            if (rect2.getLeft() < rect.getRight()) {
                return false;
            }
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s())) {
            if (rect2.getRight() > rect.getLeft()) {
                return false;
            }
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s())) {
            if (rect2.getTop() < rect.getBottom()) {
                return false;
            }
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s())) {
            if (rect2.getBottom() > rect.getTop()) {
                return false;
            }
        } else {
            throw new IllegalStateException(InvalidFocusDirection);
        }
        return true;
    }

    /* renamed from: beamBeats_I7lrPNg$majorAxisDistance-3  reason: not valid java name */
    private static final float m1566beamBeats_I7lrPNg$majorAxisDistance3(Rect rect, int i10, Rect rect2) {
        float top;
        float bottom;
        float top2;
        float bottom2;
        float f10;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
            top2 = rect2.getLeft();
            bottom2 = rect.getRight();
        } else {
            if (FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s())) {
                top = rect.getLeft();
                bottom = rect2.getRight();
            } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s())) {
                top2 = rect2.getTop();
                bottom2 = rect.getBottom();
            } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s())) {
                top = rect.getTop();
                bottom = rect2.getBottom();
            } else {
                throw new IllegalStateException(InvalidFocusDirection);
            }
            f10 = top - bottom;
            return Math.max(0.0f, f10);
        }
        f10 = top2 - bottom2;
        return Math.max(0.0f, f10);
    }

    private static final float beamBeats_I7lrPNg$majorAxisDistanceToFarEdge(Rect rect, int i10, Rect rect2) {
        float bottom;
        float bottom2;
        float top;
        float top2;
        float f10;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
            top = rect2.getLeft();
            top2 = rect.getLeft();
        } else {
            if (FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s())) {
                bottom = rect.getRight();
                bottom2 = rect2.getRight();
            } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s())) {
                top = rect2.getTop();
                top2 = rect.getTop();
            } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s())) {
                bottom = rect.getBottom();
                bottom2 = rect2.getBottom();
            } else {
                throw new IllegalStateException(InvalidFocusDirection);
            }
            f10 = bottom - bottom2;
            return Math.max(1.0f, f10);
        }
        f10 = top - top2;
        return Math.max(1.0f, f10);
    }

    private static final Rect bottomRight(Rect rect) {
        return new Rect(rect.getRight(), rect.getBottom(), rect.getRight(), rect.getBottom());
    }

    /* renamed from: findBestCandidate-4WY_MpI  reason: not valid java name */
    private static final FocusModifier m1567findBestCandidate4WY_MpI(MutableVector<FocusModifier> mutableVector, Rect rect, int i10) {
        Rect translate;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
            translate = rect.translate(rect.getWidth() + 1, 0.0f);
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s())) {
            translate = rect.translate(-(rect.getWidth() + 1), 0.0f);
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s())) {
            translate = rect.translate(0.0f, rect.getHeight() + 1);
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s())) {
            translate = rect.translate(0.0f, -(rect.getHeight() + 1));
        } else {
            throw new IllegalStateException(InvalidFocusDirection);
        }
        int size = mutableVector.getSize();
        FocusModifier focusModifier = null;
        if (size > 0) {
            FocusModifier[] content = mutableVector.getContent();
            int i11 = 0;
            do {
                FocusModifier focusModifier2 = content[i11];
                if (FocusTraversalKt.isEligibleForFocusSearch(focusModifier2)) {
                    Rect focusRect = FocusTraversalKt.focusRect(focusModifier2);
                    if (m1569isBetterCandidateI7lrPNg(focusRect, translate, rect, i10)) {
                        focusModifier = focusModifier2;
                        translate = focusRect;
                    }
                }
                i11++;
            } while (i11 < size);
            return focusModifier;
        }
        return focusModifier;
    }

    /* renamed from: generateAndSearchChildren-4C6V_qg  reason: not valid java name */
    private static final boolean m1568generateAndSearchChildren4C6V_qg(final FocusModifier focusModifier, final FocusModifier focusModifier2, final int i10, final Function1<? super FocusModifier, Boolean> function1) {
        if (m1570searchChildren4C6V_qg(focusModifier, focusModifier2, i10, function1)) {
            return true;
        }
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.m1538searchBeyondBoundsOMvw8(focusModifier, i10, new Function1<BeyondBoundsLayout.BeyondBoundsScope, Boolean>() { // from class: androidx.compose.ui.focus.TwoDimensionalFocusSearchKt$generateAndSearchChildren$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Boolean invoke(@NotNull BeyondBoundsLayout.BeyondBoundsScope searchBeyondBounds) {
                boolean m1570searchChildren4C6V_qg;
                Intrinsics.checkNotNullParameter(searchBeyondBounds, "$this$searchBeyondBounds");
                m1570searchChildren4C6V_qg = TwoDimensionalFocusSearchKt.m1570searchChildren4C6V_qg(FocusModifier.this, focusModifier2, i10, function1);
                Boolean valueOf = Boolean.valueOf(m1570searchChildren4C6V_qg);
                if (m1570searchChildren4C6V_qg || !searchBeyondBounds.getHasMoreContent()) {
                    return valueOf;
                }
                return null;
            }
        });
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    /* renamed from: isBetterCandidate-I7lrPNg  reason: not valid java name */
    private static final boolean m1569isBetterCandidateI7lrPNg(Rect rect, Rect rect2, Rect rect3, int i10) {
        if (!isBetterCandidate_I7lrPNg$isCandidate(rect, i10, rect3)) {
            return false;
        }
        if (isBetterCandidate_I7lrPNg$isCandidate(rect2, i10, rect3) && !m1565beamBeatsI7lrPNg(rect3, rect, rect2, i10) && (m1565beamBeatsI7lrPNg(rect3, rect2, rect, i10) || isBetterCandidate_I7lrPNg$weightedDistance(i10, rect3, rect) >= isBetterCandidate_I7lrPNg$weightedDistance(i10, rect3, rect2))) {
            return false;
        }
        return true;
    }

    private static final boolean isBetterCandidate_I7lrPNg$isCandidate(Rect rect, int i10, Rect rect2) {
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
            if ((rect2.getRight() <= rect.getRight() && rect2.getLeft() < rect.getRight()) || rect2.getLeft() <= rect.getLeft()) {
                return false;
            }
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s())) {
            if ((rect2.getLeft() >= rect.getLeft() && rect2.getRight() > rect.getLeft()) || rect2.getRight() >= rect.getRight()) {
                return false;
            }
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s())) {
            if ((rect2.getBottom() <= rect.getBottom() && rect2.getTop() < rect.getBottom()) || rect2.getTop() <= rect.getTop()) {
                return false;
            }
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s())) {
            if ((rect2.getTop() >= rect.getTop() && rect2.getBottom() > rect.getTop()) || rect2.getBottom() >= rect.getBottom()) {
                return false;
            }
        } else {
            throw new IllegalStateException(InvalidFocusDirection);
        }
        return true;
    }

    private static final float isBetterCandidate_I7lrPNg$majorAxisDistance(Rect rect, int i10, Rect rect2) {
        float top;
        float bottom;
        float top2;
        float bottom2;
        float f10;
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
            top2 = rect2.getLeft();
            bottom2 = rect.getRight();
        } else {
            if (FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s())) {
                top = rect.getLeft();
                bottom = rect2.getRight();
            } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s())) {
                top2 = rect2.getTop();
                bottom2 = rect.getBottom();
            } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s())) {
                top = rect.getTop();
                bottom = rect2.getBottom();
            } else {
                throw new IllegalStateException(InvalidFocusDirection);
            }
            f10 = top - bottom;
            return Math.max(0.0f, f10);
        }
        f10 = top2 - bottom2;
        return Math.max(0.0f, f10);
    }

    private static final float isBetterCandidate_I7lrPNg$minorAxisDistance(Rect rect, int i10, Rect rect2) {
        boolean m1542equalsimpl0;
        float f10;
        float left;
        float left2;
        float width;
        FocusDirection.Companion companion = FocusDirection.Companion;
        boolean z10 = true;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
            m1542equalsimpl0 = true;
        } else {
            m1542equalsimpl0 = FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s());
        }
        if (m1542equalsimpl0) {
            f10 = 2;
            left = rect2.getTop() + (rect2.getHeight() / f10);
            left2 = rect.getTop();
            width = rect.getHeight();
        } else {
            if (!FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s())) {
                z10 = FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s());
            }
            if (z10) {
                f10 = 2;
                left = rect2.getLeft() + (rect2.getWidth() / f10);
                left2 = rect.getLeft();
                width = rect.getWidth();
            } else {
                throw new IllegalStateException(InvalidFocusDirection);
            }
        }
        return left - (left2 + (width / f10));
    }

    private static final long isBetterCandidate_I7lrPNg$weightedDistance(int i10, Rect rect, Rect rect2) {
        long abs = Math.abs(isBetterCandidate_I7lrPNg$majorAxisDistance(rect2, i10, rect));
        long abs2 = Math.abs(isBetterCandidate_I7lrPNg$minorAxisDistance(rect2, i10, rect));
        return (13 * abs * abs) + (abs2 * abs2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: searchChildren-4C6V_qg  reason: not valid java name */
    public static final boolean m1570searchChildren4C6V_qg(FocusModifier focusModifier, FocusModifier focusModifier2, int i10, Function1<? super FocusModifier, Boolean> function1) {
        FocusModifier m1567findBestCandidate4WY_MpI;
        MutableVector mutableVector = new MutableVector(new FocusModifier[focusModifier.getChildren().getSize()], 0);
        mutableVector.addAll(mutableVector.getSize(), focusModifier.getChildren());
        while (mutableVector.isNotEmpty() && (m1567findBestCandidate4WY_MpI = m1567findBestCandidate4WY_MpI(mutableVector, FocusTraversalKt.focusRect(focusModifier2), i10)) != null) {
            if (!m1567findBestCandidate4WY_MpI.getFocusState().isDeactivated()) {
                return function1.invoke(m1567findBestCandidate4WY_MpI).booleanValue();
            }
            if (m1568generateAndSearchChildren4C6V_qg(m1567findBestCandidate4WY_MpI, focusModifier2, i10, function1)) {
                return true;
            }
            mutableVector.remove(m1567findBestCandidate4WY_MpI);
        }
        return false;
    }

    private static final Rect topLeft(Rect rect) {
        return new Rect(rect.getLeft(), rect.getTop(), rect.getLeft(), rect.getTop());
    }

    /* renamed from: twoDimensionalFocusSearch--OM-vw8  reason: not valid java name */
    public static final boolean m1571twoDimensionalFocusSearchOMvw8(@NotNull FocusModifier twoDimensionalFocusSearch, int i10, @NotNull Function1<? super FocusModifier, Boolean> onFound) {
        boolean m1542equalsimpl0;
        Rect bottomRight;
        FocusModifier focusModifier;
        Intrinsics.checkNotNullParameter(twoDimensionalFocusSearch, "$this$twoDimensionalFocusSearch");
        Intrinsics.checkNotNullParameter(onFound, "onFound");
        FocusStateImpl focusState = twoDimensionalFocusSearch.getFocusState();
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        boolean z10 = true;
        switch (iArr[focusState.ordinal()]) {
            case 1:
            case 2:
                FocusModifier focusedChild = twoDimensionalFocusSearch.getFocusedChild();
                if (focusedChild != null) {
                    switch (iArr[focusedChild.getFocusState().ordinal()]) {
                        case 1:
                        case 2:
                            if (m1571twoDimensionalFocusSearchOMvw8(focusedChild, i10, onFound) || m1568generateAndSearchChildren4C6V_qg(twoDimensionalFocusSearch, activeNode(focusedChild), i10, onFound)) {
                                return true;
                            }
                            return false;
                        case 3:
                        case 4:
                            return m1568generateAndSearchChildren4C6V_qg(twoDimensionalFocusSearch, focusedChild, i10, onFound);
                        case 5:
                        case 6:
                            throw new IllegalStateException(NoActiveChild);
                        default:
                            throw new NoWhenBranchMatchedException();
                    }
                }
                throw new IllegalStateException(NoActiveChild);
            case 3:
            case 4:
                MutableVector<FocusModifier> activatedChildren = FocusTraversalKt.activatedChildren(twoDimensionalFocusSearch);
                if (activatedChildren.getSize() <= 1) {
                    if (activatedChildren.isEmpty()) {
                        focusModifier = null;
                    } else {
                        focusModifier = activatedChildren.getContent()[0];
                    }
                    FocusModifier focusModifier2 = focusModifier;
                    if (focusModifier2 == null) {
                        return false;
                    }
                    return onFound.invoke(focusModifier2).booleanValue();
                }
                FocusDirection.Companion companion = FocusDirection.Companion;
                if (FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s())) {
                    m1542equalsimpl0 = true;
                } else {
                    m1542equalsimpl0 = FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s());
                }
                if (m1542equalsimpl0) {
                    bottomRight = topLeft(FocusTraversalKt.focusRect(twoDimensionalFocusSearch));
                } else {
                    if (!FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
                        z10 = FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s());
                    }
                    if (z10) {
                        bottomRight = bottomRight(FocusTraversalKt.focusRect(twoDimensionalFocusSearch));
                    } else {
                        throw new IllegalStateException(InvalidFocusDirection);
                    }
                }
                FocusModifier m1567findBestCandidate4WY_MpI = m1567findBestCandidate4WY_MpI(activatedChildren, bottomRight, i10);
                if (m1567findBestCandidate4WY_MpI == null) {
                    return false;
                }
                return onFound.invoke(m1567findBestCandidate4WY_MpI).booleanValue();
            case 5:
                return false;
            case 6:
                return onFound.invoke(twoDimensionalFocusSearch).booleanValue();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
