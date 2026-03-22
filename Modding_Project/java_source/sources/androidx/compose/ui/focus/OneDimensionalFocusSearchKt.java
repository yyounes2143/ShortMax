package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ps.a;
/* compiled from: OneDimensionalFocusSearch.kt */
@Metadata
/* loaded from: classes.dex */
public final class OneDimensionalFocusSearchKt {
    @NotNull
    private static final String InvalidFocusDirection = "This function should only be used for 1-D focus search";
    @NotNull
    private static final String NoActiveChild = "ActiveParent must have a focusedChild";

    /* compiled from: OneDimensionalFocusSearch.kt */
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

    private static final boolean backwardFocusSearch(FocusModifier focusModifier, Function1<? super FocusModifier, Boolean> function1) {
        FocusStateImpl focusState = focusModifier.getFocusState();
        int[] iArr = WhenMappings.$EnumSwitchMapping$0;
        switch (iArr[focusState.ordinal()]) {
            case 1:
            case 2:
                FocusModifier focusedChild = focusModifier.getFocusedChild();
                if (focusedChild != null) {
                    switch (iArr[focusedChild.getFocusState().ordinal()]) {
                        case 1:
                            if (backwardFocusSearch(focusedChild, function1) || function1.invoke(focusedChild).booleanValue()) {
                                return true;
                            }
                            break;
                        case 2:
                            if (backwardFocusSearch(focusedChild, function1) || m1561generateAndSearchChildren4C6V_qg(focusModifier, focusedChild, FocusDirection.Companion.m1553getPreviousdhqQ8s(), function1)) {
                                return true;
                            }
                            break;
                        case 3:
                        case 4:
                            return m1561generateAndSearchChildren4C6V_qg(focusModifier, focusedChild, FocusDirection.Companion.m1553getPreviousdhqQ8s(), function1);
                        case 5:
                        case 6:
                            throw new IllegalStateException(NoActiveChild);
                        default:
                            throw new NoWhenBranchMatchedException();
                    }
                } else {
                    throw new IllegalStateException(NoActiveChild);
                }
            case 3:
            case 4:
            case 5:
                return pickChildForBackwardSearch(focusModifier, function1);
            case 6:
                if (pickChildForBackwardSearch(focusModifier, function1) || function1.invoke(focusModifier).booleanValue()) {
                    return true;
                }
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return false;
    }

    private static final <T> void forEachItemAfter(MutableVector<T> mutableVector, T t10, Function1<? super T, Unit> function1) {
        boolean z10 = false;
        IntRange intRange = new IntRange(0, mutableVector.getSize() - 1);
        int c10 = intRange.c();
        int d10 = intRange.d();
        if (c10 > d10) {
            return;
        }
        while (true) {
            if (z10) {
                function1.invoke(mutableVector.getContent()[c10]);
            }
            if (Intrinsics.areEqual(mutableVector.getContent()[c10], t10)) {
                z10 = true;
            }
            if (c10 != d10) {
                c10++;
            } else {
                return;
            }
        }
    }

    private static final <T> void forEachItemBefore(MutableVector<T> mutableVector, T t10, Function1<? super T, Unit> function1) {
        boolean z10 = false;
        IntRange intRange = new IntRange(0, mutableVector.getSize() - 1);
        int c10 = intRange.c();
        int d10 = intRange.d();
        if (c10 > d10) {
            return;
        }
        while (true) {
            if (z10) {
                function1.invoke(mutableVector.getContent()[d10]);
            }
            if (Intrinsics.areEqual(mutableVector.getContent()[d10], t10)) {
                z10 = true;
            }
            if (d10 != c10) {
                d10--;
            } else {
                return;
            }
        }
    }

    private static final boolean forwardFocusSearch(FocusModifier focusModifier, Function1<? super FocusModifier, Boolean> function1) {
        switch (WhenMappings.$EnumSwitchMapping$0[focusModifier.getFocusState().ordinal()]) {
            case 1:
            case 2:
                FocusModifier focusedChild = focusModifier.getFocusedChild();
                if (focusedChild != null) {
                    if (!forwardFocusSearch(focusedChild, function1) && !m1561generateAndSearchChildren4C6V_qg(focusModifier, focusedChild, FocusDirection.Companion.m1551getNextdhqQ8s(), function1)) {
                        return false;
                    }
                    return true;
                }
                throw new IllegalStateException(NoActiveChild);
            case 3:
            case 4:
            case 5:
                return pickChildForForwardSearch(focusModifier, function1);
            case 6:
                return function1.invoke(focusModifier).booleanValue();
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* renamed from: generateAndSearchChildren-4C6V_qg  reason: not valid java name */
    private static final boolean m1561generateAndSearchChildren4C6V_qg(final FocusModifier focusModifier, final FocusModifier focusModifier2, final int i10, final Function1<? super FocusModifier, Boolean> function1) {
        if (m1563searchChildren4C6V_qg(focusModifier, focusModifier2, i10, function1)) {
            return true;
        }
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.m1538searchBeyondBoundsOMvw8(focusModifier, i10, new Function1<BeyondBoundsLayout.BeyondBoundsScope, Boolean>() { // from class: androidx.compose.ui.focus.OneDimensionalFocusSearchKt$generateAndSearchChildren$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final Boolean invoke(@NotNull BeyondBoundsLayout.BeyondBoundsScope searchBeyondBounds) {
                boolean m1563searchChildren4C6V_qg;
                Intrinsics.checkNotNullParameter(searchBeyondBounds, "$this$searchBeyondBounds");
                m1563searchChildren4C6V_qg = OneDimensionalFocusSearchKt.m1563searchChildren4C6V_qg(FocusModifier.this, focusModifier2, i10, function1);
                Boolean valueOf = Boolean.valueOf(m1563searchChildren4C6V_qg);
                if (m1563searchChildren4C6V_qg || !searchBeyondBounds.getHasMoreContent()) {
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

    private static final boolean isRoot(FocusModifier focusModifier) {
        if (focusModifier.getParent() == null) {
            return true;
        }
        return false;
    }

    /* renamed from: oneDimensionalFocusSearch--OM-vw8  reason: not valid java name */
    public static final boolean m1562oneDimensionalFocusSearchOMvw8(@NotNull FocusModifier oneDimensionalFocusSearch, int i10, @NotNull Function1<? super FocusModifier, Boolean> onFound) {
        Intrinsics.checkNotNullParameter(oneDimensionalFocusSearch, "$this$oneDimensionalFocusSearch");
        Intrinsics.checkNotNullParameter(onFound, "onFound");
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1551getNextdhqQ8s())) {
            return forwardFocusSearch(oneDimensionalFocusSearch, onFound);
        }
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1553getPreviousdhqQ8s())) {
            return backwardFocusSearch(oneDimensionalFocusSearch, onFound);
        }
        throw new IllegalStateException(InvalidFocusDirection);
    }

    private static final boolean pickChildForBackwardSearch(FocusModifier focusModifier, Function1<? super FocusModifier, Boolean> function1) {
        sort(focusModifier.getChildren());
        MutableVector<FocusModifier> children = focusModifier.getChildren();
        int size = children.getSize();
        if (size > 0) {
            int i10 = size - 1;
            FocusModifier[] content = children.getContent();
            do {
                FocusModifier focusModifier2 = content[i10];
                if (FocusTraversalKt.isEligibleForFocusSearch(focusModifier2) && backwardFocusSearch(focusModifier2, function1)) {
                    return true;
                }
                i10--;
            } while (i10 >= 0);
            return false;
        }
        return false;
    }

    private static final boolean pickChildForForwardSearch(FocusModifier focusModifier, Function1<? super FocusModifier, Boolean> function1) {
        sort(focusModifier.getChildren());
        MutableVector<FocusModifier> children = focusModifier.getChildren();
        int size = children.getSize();
        if (size <= 0) {
            return false;
        }
        FocusModifier[] content = children.getContent();
        int i10 = 0;
        do {
            FocusModifier focusModifier2 = content[i10];
            if (FocusTraversalKt.isEligibleForFocusSearch(focusModifier2) && forwardFocusSearch(focusModifier2, function1)) {
                return true;
            }
            i10++;
        } while (i10 < size);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: searchChildren-4C6V_qg  reason: not valid java name */
    public static final boolean m1563searchChildren4C6V_qg(FocusModifier focusModifier, FocusModifier focusModifier2, int i10, Function1<? super FocusModifier, Boolean> function1) {
        if (focusModifier.getFocusState() != FocusStateImpl.ActiveParent && focusModifier.getFocusState() != FocusStateImpl.DeactivatedParent) {
            throw new IllegalStateException("This function should only be used within a parent that has focus.");
        }
        sort(focusModifier.getChildren());
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1551getNextdhqQ8s())) {
            MutableVector<FocusModifier> children = focusModifier.getChildren();
            IntRange intRange = new IntRange(0, children.getSize() - 1);
            int c10 = intRange.c();
            int d10 = intRange.d();
            if (c10 <= d10) {
                boolean z10 = false;
                while (true) {
                    if (z10) {
                        FocusModifier focusModifier3 = children.getContent()[c10];
                        if (FocusTraversalKt.isEligibleForFocusSearch(focusModifier3) && forwardFocusSearch(focusModifier3, function1)) {
                            return true;
                        }
                    }
                    if (Intrinsics.areEqual(children.getContent()[c10], focusModifier2)) {
                        z10 = true;
                    }
                    if (c10 == d10) {
                        break;
                    }
                    c10++;
                }
            }
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1553getPreviousdhqQ8s())) {
            MutableVector<FocusModifier> children2 = focusModifier.getChildren();
            IntRange intRange2 = new IntRange(0, children2.getSize() - 1);
            int c11 = intRange2.c();
            int d11 = intRange2.d();
            if (c11 <= d11) {
                boolean z11 = false;
                while (true) {
                    if (z11) {
                        FocusModifier focusModifier4 = children2.getContent()[d11];
                        if (FocusTraversalKt.isEligibleForFocusSearch(focusModifier4) && backwardFocusSearch(focusModifier4, function1)) {
                            return true;
                        }
                    }
                    if (Intrinsics.areEqual(children2.getContent()[d11], focusModifier2)) {
                        z11 = true;
                    }
                    if (d11 == c11) {
                        break;
                    }
                    d11--;
                }
            }
        } else {
            throw new IllegalStateException(InvalidFocusDirection);
        }
        if (FocusDirection.m1542equalsimpl0(i10, FocusDirection.Companion.m1551getNextdhqQ8s()) || focusModifier.getFocusState() == FocusStateImpl.DeactivatedParent || isRoot(focusModifier)) {
            return false;
        }
        return function1.invoke(focusModifier).booleanValue();
    }

    private static final void sort(MutableVector<FocusModifier> mutableVector) {
        mutableVector.sortWith(new Comparator() { // from class: androidx.compose.ui.focus.OneDimensionalFocusSearchKt$sort$$inlined$compareBy$1
            @Override // java.util.Comparator
            public final int compare(T t10, T t11) {
                Integer num;
                LayoutNode layoutNode$ui_release;
                LayoutNode layoutNode$ui_release2;
                LayoutNodeWrapper layoutNodeWrapper = ((FocusModifier) t10).getLayoutNodeWrapper();
                Integer num2 = null;
                if (layoutNodeWrapper != null && (layoutNode$ui_release2 = layoutNodeWrapper.getLayoutNode$ui_release()) != null) {
                    num = Integer.valueOf(layoutNode$ui_release2.getPlaceOrder$ui_release());
                } else {
                    num = null;
                }
                LayoutNodeWrapper layoutNodeWrapper2 = ((FocusModifier) t11).getLayoutNodeWrapper();
                if (layoutNodeWrapper2 != null && (layoutNode$ui_release = layoutNodeWrapper2.getLayoutNode$ui_release()) != null) {
                    num2 = Integer.valueOf(layoutNode$ui_release.getPlaceOrder$ui_release());
                }
                return a.a(num, num2);
            }
        });
    }
}
