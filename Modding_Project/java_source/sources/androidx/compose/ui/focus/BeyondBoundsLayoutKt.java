package androidx.compose.ui.focus;

import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BeyondBoundsLayout.kt */
@Metadata
/* loaded from: classes.dex */
public final class BeyondBoundsLayoutKt {
    @Nullable
    /* renamed from: searchBeyondBounds--OM-vw8  reason: not valid java name */
    public static final <T> T m1538searchBeyondBoundsOMvw8(@NotNull FocusModifier searchBeyondBounds, int i10, @NotNull Function1<? super BeyondBoundsLayout.BeyondBoundsScope, ? extends T> block) {
        int m3321getBeforehoxUOeE;
        Intrinsics.checkNotNullParameter(searchBeyondBounds, "$this$searchBeyondBounds");
        Intrinsics.checkNotNullParameter(block, "block");
        BeyondBoundsLayout beyondBoundsLayoutParent = searchBeyondBounds.getBeyondBoundsLayoutParent();
        if (beyondBoundsLayoutParent != null) {
            FocusDirection.Companion companion = FocusDirection.Companion;
            if (FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s())) {
                m3321getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m3319getAbovehoxUOeE();
            } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s())) {
                m3321getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m3322getBelowhoxUOeE();
            } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
                m3321getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m3323getLefthoxUOeE();
            } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s())) {
                m3321getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m3324getRighthoxUOeE();
            } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1551getNextdhqQ8s())) {
                m3321getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m3320getAfterhoxUOeE();
            } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1553getPreviousdhqQ8s())) {
                m3321getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.Companion.m3321getBeforehoxUOeE();
            } else {
                throw new IllegalStateException("Unsupported direction for beyond bounds layout");
            }
            return (T) beyondBoundsLayoutParent.mo557layouto7g1Pn8(m3321getBeforehoxUOeE, block);
        }
        return null;
    }
}
