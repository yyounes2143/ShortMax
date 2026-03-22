package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
/* compiled from: FocusManager.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusManagerKt {

    /* compiled from: FocusManager.kt */
    @Metadata
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            iArr[FocusStateImpl.Active.ordinal()] = 1;
            iArr[FocusStateImpl.Captured.ordinal()] = 2;
            iArr[FocusStateImpl.ActiveParent.ordinal()] = 3;
            iArr[FocusStateImpl.DeactivatedParent.ordinal()] = 4;
            iArr[FocusStateImpl.Deactivated.ordinal()] = 5;
            iArr[FocusStateImpl.Inactive.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FocusModifier findActiveItem(FocusModifier focusModifier) {
        FocusModifier findActiveItem;
        switch (WhenMappings.$EnumSwitchMapping$0[focusModifier.getFocusState().ordinal()]) {
            case 1:
            case 2:
                return focusModifier;
            case 3:
            case 4:
                FocusModifier focusedChild = focusModifier.getFocusedChild();
                if (focusedChild == null || (findActiveItem = findActiveItem(focusedChild)) == null) {
                    throw new IllegalStateException("no child");
                }
                return findActiveItem;
            case 5:
            case 6:
                return null;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateProperties(FocusModifier focusModifier) {
        FocusPropertiesKt.refreshFocusProperties(focusModifier);
        MutableVector<FocusModifier> children = focusModifier.getChildren();
        int size = children.getSize();
        if (size > 0) {
            FocusModifier[] content = children.getContent();
            int i10 = 0;
            do {
                updateProperties(content[i10]);
                i10++;
            } while (i10 < size);
        }
    }
}
