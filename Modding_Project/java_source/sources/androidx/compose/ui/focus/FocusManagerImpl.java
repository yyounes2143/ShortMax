package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FocusManager.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusManagerImpl implements FocusManager {
    @NotNull
    private final FocusModifier focusModifier;
    public LayoutDirection layoutDirection;
    @NotNull
    private final Modifier modifier;

    /* compiled from: FocusManager.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            iArr[FocusStateImpl.Active.ordinal()] = 1;
            iArr[FocusStateImpl.ActiveParent.ordinal()] = 2;
            iArr[FocusStateImpl.Captured.ordinal()] = 3;
            iArr[FocusStateImpl.Deactivated.ordinal()] = 4;
            iArr[FocusStateImpl.DeactivatedParent.ordinal()] = 5;
            iArr[FocusStateImpl.Inactive.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FocusManagerImpl() {
        this(null, 1, null);
    }

    /* renamed from: wrapAroundFocus-3ESFkO8  reason: not valid java name */
    private final boolean m1557wrapAroundFocus3ESFkO8(int i10) {
        boolean m1542equalsimpl0;
        if (this.focusModifier.getFocusState().getHasFocus() && !this.focusModifier.getFocusState().isFocused()) {
            FocusDirection.Companion companion = FocusDirection.Companion;
            if (FocusDirection.m1542equalsimpl0(i10, companion.m1551getNextdhqQ8s())) {
                m1542equalsimpl0 = true;
            } else {
                m1542equalsimpl0 = FocusDirection.m1542equalsimpl0(i10, companion.m1553getPreviousdhqQ8s());
            }
            if (m1542equalsimpl0) {
                clearFocus(false);
                if (!this.focusModifier.getFocusState().isFocused()) {
                    return false;
                }
                return mo1556moveFocus3ESFkO8(i10);
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.focus.FocusManager
    public void clearFocus(boolean z10) {
        FocusStateImpl focusStateImpl;
        FocusStateImpl focusState = this.focusModifier.getFocusState();
        if (FocusTransactionsKt.clearFocus(this.focusModifier, z10)) {
            FocusModifier focusModifier = this.focusModifier;
            switch (WhenMappings.$EnumSwitchMapping$0[focusState.ordinal()]) {
                case 1:
                case 2:
                case 3:
                    focusStateImpl = FocusStateImpl.Active;
                    break;
                case 4:
                case 5:
                    focusStateImpl = FocusStateImpl.Deactivated;
                    break;
                case 6:
                    focusStateImpl = FocusStateImpl.Inactive;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            focusModifier.setFocusState(focusStateImpl);
        }
    }

    public final void fetchUpdatedFocusProperties() {
        FocusManagerKt.updateProperties(this.focusModifier);
    }

    @Nullable
    public final FocusModifier getActiveFocusModifier$ui_release() {
        FocusModifier findActiveItem;
        findActiveItem = FocusManagerKt.findActiveItem(this.focusModifier);
        return findActiveItem;
    }

    @NotNull
    public final LayoutDirection getLayoutDirection() {
        LayoutDirection layoutDirection = this.layoutDirection;
        if (layoutDirection != null) {
            return layoutDirection;
        }
        Intrinsics.throwUninitializedPropertyAccessException("layoutDirection");
        return null;
    }

    @NotNull
    public final Modifier getModifier() {
        return this.modifier;
    }

    @Override // androidx.compose.ui.focus.FocusManager
    /* renamed from: moveFocus-3ESFkO8 */
    public boolean mo1556moveFocus3ESFkO8(int i10) {
        final FocusModifier findActiveFocusNode = FocusTraversalKt.findActiveFocusNode(this.focusModifier);
        if (findActiveFocusNode == null) {
            return false;
        }
        FocusRequester m1558customFocusSearchOMvw8 = FocusOrderModifierKt.m1558customFocusSearchOMvw8(findActiveFocusNode, i10, getLayoutDirection());
        if (!Intrinsics.areEqual(m1558customFocusSearchOMvw8, FocusRequester.Companion.getDefault())) {
            m1558customFocusSearchOMvw8.requestFocus();
            return true;
        } else if (!FocusTraversalKt.m1559focusSearchsMXa3k8(this.focusModifier, i10, getLayoutDirection(), new Function1<FocusModifier, Boolean>() { // from class: androidx.compose.ui.focus.FocusManagerImpl$moveFocus$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull FocusModifier destination) {
                Intrinsics.checkNotNullParameter(destination, "destination");
                if (Intrinsics.areEqual(destination, FocusModifier.this)) {
                    return Boolean.FALSE;
                }
                if (destination.getParent() != null) {
                    FocusTransactionsKt.requestFocus(destination);
                    return Boolean.TRUE;
                }
                throw new IllegalStateException("Move focus landed at the root.");
            }
        }) && !m1557wrapAroundFocus3ESFkO8(i10)) {
            return false;
        } else {
            return true;
        }
    }

    public final void releaseFocus() {
        FocusTransactionsKt.clearFocus(this.focusModifier, true);
    }

    public final void setLayoutDirection(@NotNull LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
        this.layoutDirection = layoutDirection;
    }

    public final void takeFocus() {
        if (this.focusModifier.getFocusState() == FocusStateImpl.Inactive) {
            this.focusModifier.setFocusState(FocusStateImpl.Active);
        }
    }

    public FocusManagerImpl(@NotNull FocusModifier focusModifier) {
        Intrinsics.checkNotNullParameter(focusModifier, "focusModifier");
        this.focusModifier = focusModifier;
        this.modifier = FocusModifierKt.focusTarget(Modifier.Companion, focusModifier);
    }

    public /* synthetic */ FocusManagerImpl(FocusModifier focusModifier, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? new FocusModifier(FocusStateImpl.Inactive, null, 2, null) : focusModifier);
    }
}
