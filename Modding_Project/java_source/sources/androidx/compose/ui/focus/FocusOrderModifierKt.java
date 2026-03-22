package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: FocusOrderModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusOrderModifierKt {

    /* compiled from: FocusOrderModifier.kt */
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

    @NotNull
    /* renamed from: customFocusSearch--OM-vw8  reason: not valid java name */
    public static final FocusRequester m1558customFocusSearchOMvw8(@NotNull FocusModifier customFocusSearch, int i10, @NotNull LayoutDirection layoutDirection) {
        FocusRequester end;
        Intrinsics.checkNotNullParameter(customFocusSearch, "$this$customFocusSearch");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        FocusDirection.Companion companion = FocusDirection.Companion;
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1551getNextdhqQ8s())) {
            return customFocusSearch.getFocusProperties().getNext();
        }
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1553getPreviousdhqQ8s())) {
            return customFocusSearch.getFocusProperties().getPrevious();
        }
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1555getUpdhqQ8s())) {
            return customFocusSearch.getFocusProperties().getUp();
        }
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1548getDowndhqQ8s())) {
            return customFocusSearch.getFocusProperties().getDown();
        }
        if (FocusDirection.m1542equalsimpl0(i10, companion.m1550getLeftdhqQ8s())) {
            int i11 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i11 != 1) {
                if (i11 == 2) {
                    end = customFocusSearch.getFocusProperties().getEnd();
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                end = customFocusSearch.getFocusProperties().getStart();
            }
            if (Intrinsics.areEqual(end, FocusRequester.Companion.getDefault())) {
                end = null;
            }
            if (end == null) {
                return customFocusSearch.getFocusProperties().getLeft();
            }
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1554getRightdhqQ8s())) {
            int i12 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i12 != 1) {
                if (i12 == 2) {
                    end = customFocusSearch.getFocusProperties().getStart();
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            } else {
                end = customFocusSearch.getFocusProperties().getEnd();
            }
            if (Intrinsics.areEqual(end, FocusRequester.Companion.getDefault())) {
                end = null;
            }
            if (end == null) {
                return customFocusSearch.getFocusProperties().getRight();
            }
        } else if (FocusDirection.m1542equalsimpl0(i10, companion.m1549getIndhqQ8s())) {
            return FocusRequester.Companion.getDefault();
        } else {
            if (FocusDirection.m1542equalsimpl0(i10, companion.m1552getOutdhqQ8s())) {
                return FocusRequester.Companion.getDefault();
            }
            throw new IllegalStateException("invalid FocusDirection");
        }
        return end;
    }

    @c
    @NotNull
    public static final Modifier focusOrder(@NotNull Modifier modifier, @NotNull Function1<? super FocusOrder, Unit> focusOrderReceiver) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(focusOrderReceiver, "focusOrderReceiver");
        return FocusPropertiesKt.focusProperties(modifier, new FocusOrderToProperties(focusOrderReceiver));
    }

    @c
    @NotNull
    public static final Modifier focusOrder(@NotNull Modifier modifier, @NotNull FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(focusRequester, "focusRequester");
        return FocusRequesterModifierKt.focusRequester(modifier, focusRequester);
    }

    @c
    @NotNull
    public static final Modifier focusOrder(@NotNull Modifier modifier, @NotNull FocusRequester focusRequester, @NotNull Function1<? super FocusOrder, Unit> focusOrderReceiver) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(focusRequester, "focusRequester");
        Intrinsics.checkNotNullParameter(focusOrderReceiver, "focusOrderReceiver");
        return FocusPropertiesKt.focusProperties(FocusRequesterModifierKt.focusRequester(modifier, focusRequester), new FocusOrderToProperties(focusOrderReceiver));
    }
}
