package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FocusTraversal.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusTraversalKt {
    @NotNull
    private static final String invalidFocusDirection = "Invalid FocusDirection";

    /* compiled from: FocusTraversal.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Rtl.ordinal()] = 1;
            iArr[LayoutDirection.Ltr.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            iArr2[FocusStateImpl.Active.ordinal()] = 1;
            iArr2[FocusStateImpl.Captured.ordinal()] = 2;
            iArr2[FocusStateImpl.ActiveParent.ordinal()] = 3;
            iArr2[FocusStateImpl.DeactivatedParent.ordinal()] = 4;
            iArr2[FocusStateImpl.Inactive.ordinal()] = 5;
            iArr2[FocusStateImpl.Deactivated.ordinal()] = 6;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    @NotNull
    public static final MutableVector<FocusModifier> activatedChildren(@NotNull FocusModifier focusModifier) {
        Intrinsics.checkNotNullParameter(focusModifier, "<this>");
        MutableVector<FocusModifier> children = focusModifier.getChildren();
        int size = children.getSize();
        if (size > 0) {
            FocusModifier[] content = children.getContent();
            int i10 = 0;
            int i11 = 0;
            while (!content[i11].getFocusState().isDeactivated()) {
                i11++;
                if (i11 >= size) {
                    return focusModifier.getChildren();
                }
            }
            MutableVector<FocusModifier> mutableVector = new MutableVector<>(new FocusModifier[16], 0);
            MutableVector<FocusModifier> children2 = focusModifier.getChildren();
            int size2 = children2.getSize();
            if (size2 > 0) {
                FocusModifier[] content2 = children2.getContent();
                do {
                    FocusModifier focusModifier2 = content2[i10];
                    if (!focusModifier2.getFocusState().isDeactivated()) {
                        mutableVector.add(focusModifier2);
                    } else {
                        mutableVector.addAll(mutableVector.getSize(), activatedChildren(focusModifier2));
                    }
                    i10++;
                } while (i10 < size2);
                return mutableVector;
            }
            return mutableVector;
        }
        return focusModifier.getChildren();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Nullable
    public static final FocusModifier findActiveFocusNode(@NotNull FocusModifier focusModifier) {
        Intrinsics.checkNotNullParameter(focusModifier, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$1[focusModifier.getFocusState().ordinal()]) {
            case 1:
            case 2:
                return focusModifier;
            case 3:
            case 4:
                FocusModifier focusedChild = focusModifier.getFocusedChild();
                if (focusedChild != null) {
                    return findActiveFocusNode(focusedChild);
                }
                break;
            case 5:
            case 6:
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return null;
    }

    @Nullable
    public static final FocusModifier findActiveParent(@NotNull FocusModifier focusModifier) {
        Intrinsics.checkNotNullParameter(focusModifier, "<this>");
        FocusModifier parent = focusModifier.getParent();
        if (parent != null) {
            switch (WhenMappings.$EnumSwitchMapping$1[focusModifier.getFocusState().ordinal()]) {
                case 1:
                case 2:
                case 4:
                case 5:
                case 6:
                    return findActiveParent(parent);
                case 3:
                    return focusModifier;
                default:
                    throw new NoWhenBranchMatchedException();
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.input.key.KeyInputModifier findLastKeyInputModifier(@org.jetbrains.annotations.NotNull androidx.compose.ui.focus.FocusModifier r7) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            androidx.compose.ui.node.LayoutNodeWrapper r0 = r7.getLayoutNodeWrapper()
            r1 = 0
            if (r0 == 0) goto L40
            androidx.compose.ui.node.LayoutNode r0 = r0.getLayoutNode$ui_release()
            if (r0 != 0) goto L13
            goto L40
        L13:
            androidx.compose.runtime.collection.MutableVector r2 = r7.getKeyInputChildren()
            int r3 = r2.getSize()
            if (r3 <= 0) goto L38
            java.lang.Object[] r2 = r2.getContent()
            r4 = 0
        L22:
            r5 = r2[r4]
            androidx.compose.ui.input.key.KeyInputModifier r5 = (androidx.compose.ui.input.key.KeyInputModifier) r5
            androidx.compose.ui.node.LayoutNode r6 = r5.getLayoutNode()
            boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r0)
            if (r6 == 0) goto L34
            androidx.compose.ui.input.key.KeyInputModifier r1 = lastOf(r5, r1)
        L34:
            int r4 = r4 + 1
            if (r4 < r3) goto L22
        L38:
            if (r1 == 0) goto L3b
            return r1
        L3b:
            androidx.compose.ui.input.key.KeyInputModifier r7 = r7.getKeyInputModifier()
            return r7
        L40:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusTraversalKt.findLastKeyInputModifier(androidx.compose.ui.focus.FocusModifier):androidx.compose.ui.input.key.KeyInputModifier");
    }

    @NotNull
    public static final Rect focusRect(@NotNull FocusModifier focusModifier) {
        Rect localBoundingBoxOf;
        Intrinsics.checkNotNullParameter(focusModifier, "<this>");
        LayoutNodeWrapper layoutNodeWrapper = focusModifier.getLayoutNodeWrapper();
        if (layoutNodeWrapper == null || (localBoundingBoxOf = LayoutCoordinatesKt.findRoot(layoutNodeWrapper).localBoundingBoxOf(layoutNodeWrapper, false)) == null) {
            return Rect.Companion.getZero();
        }
        return localBoundingBoxOf;
    }

    /* renamed from: focusSearch-sMXa3k8  reason: not valid java name */
    public static final boolean m1559focusSearchsMXa3k8(@NotNull FocusModifier focusSearch, int i10, @NotNull LayoutDirection layoutDirection, @NotNull Function1<? super FocusModifier, Boolean> onFound) {
        boolean m1542equalsimpl0;
        boolean m1542equalsimpl02;
        boolean m1542equalsimpl03;
        boolean m1542equalsimpl04;
        FocusModifier focusModifier;
        int m1550getLeftdhqQ8s;
        Intrinsics.checkNotNullParameter(focusSearch, "$this$focusSearch");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(onFound, "onFound");
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1551getNextdhqQ8s())) {
            m1542equalsimpl0 = true;
        } else {
            m1542equalsimpl0 = FocusDirection.m1542equalsimpl0(i10, companion.m1553getPreviousdhqQ8s());
        }
        if (m1542equalsimpl0) {
            return OneDimensionalFocusSearchKt.m1562oneDimensionalFocusSearchOMvw8(focusSearch, i10, onFound);
        }
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
            m1542equalsimpl02 = true;
        } else {
            m1542equalsimpl02 = FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s());
        }
        if (m1542equalsimpl02) {
            m1542equalsimpl03 = true;
        } else {
            m1542equalsimpl03 = FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s());
        }
        if (m1542equalsimpl03) {
            m1542equalsimpl04 = true;
        } else {
            m1542equalsimpl04 = FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s());
        }
        if (m1542equalsimpl04) {
            return TwoDimensionalFocusSearchKt.m1571twoDimensionalFocusSearchOMvw8(focusSearch, i10, onFound);
        }
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1549getIndhqQ8s())) {
            int i11 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    m1550getLeftdhqQ8s = companion.m1554getRightdhqQ8s();
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                m1550getLeftdhqQ8s = companion.m1550getLeftdhqQ8s();
            }
            FocusModifier findActiveFocusNode = findActiveFocusNode(focusSearch);
            if (findActiveFocusNode != null) {
                return TwoDimensionalFocusSearchKt.m1571twoDimensionalFocusSearchOMvw8(findActiveFocusNode, m1550getLeftdhqQ8s, onFound);
            }
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1552getOutdhqQ8s())) {
            FocusModifier findActiveFocusNode2 = findActiveFocusNode(focusSearch);
            if (findActiveFocusNode2 != null) {
                focusModifier = findActiveParent(findActiveFocusNode2);
            } else {
                focusModifier = null;
            }
            if (!Intrinsics.areEqual(focusModifier, focusSearch) && focusModifier != null) {
                return onFound.invoke(focusModifier).booleanValue();
            }
        } else {
            throw new IllegalStateException(invalidFocusDirection);
        }
        return false;
    }

    public static final boolean isEligibleForFocusSearch(@NotNull FocusModifier focusModifier) {
        LayoutNode layoutNode$ui_release;
        LayoutNodeWrapper layoutNodeWrapper;
        LayoutNode layoutNode$ui_release2;
        Intrinsics.checkNotNullParameter(focusModifier, "<this>");
        LayoutNodeWrapper layoutNodeWrapper2 = focusModifier.getLayoutNodeWrapper();
        if (layoutNodeWrapper2 != null && (layoutNode$ui_release = layoutNodeWrapper2.getLayoutNode$ui_release()) != null && layoutNode$ui_release.isPlaced() && (layoutNodeWrapper = focusModifier.getLayoutNodeWrapper()) != null && (layoutNode$ui_release2 = layoutNodeWrapper.getLayoutNode$ui_release()) != null && layoutNode$ui_release2.isAttached()) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final androidx.compose.ui.input.key.KeyInputModifier lastOf(androidx.compose.ui.input.key.KeyInputModifier r3, androidx.compose.ui.input.key.KeyInputModifier r4) {
        /*
            if (r4 != 0) goto L3
            return r3
        L3:
            androidx.compose.ui.node.LayoutNode r0 = r3.getLayoutNode()
            r1 = r4
        L8:
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r1, r3)
            if (r2 != 0) goto L1f
            androidx.compose.ui.input.key.KeyInputModifier r1 = r1.getParent()
            if (r1 == 0) goto L1e
            androidx.compose.ui.node.LayoutNode r2 = r1.getLayoutNode()
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r0)
            if (r2 != 0) goto L8
        L1e:
            return r3
        L1f:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusTraversalKt.lastOf(androidx.compose.ui.input.key.KeyInputModifier, androidx.compose.ui.input.key.KeyInputModifier):androidx.compose.ui.input.key.KeyInputModifier");
    }
}
