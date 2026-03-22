package androidx.compose.ui.focus;

import kotlin.Metadata;
/* compiled from: FocusManager.kt */
@Metadata
/* loaded from: classes.dex */
public interface FocusManager {

    /* compiled from: FocusManager.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    static /* synthetic */ void clearFocus$default(FocusManager focusManager, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            focusManager.clearFocus(z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clearFocus");
    }

    void clearFocus(boolean z10);

    /* renamed from: moveFocus-3ESFkO8  reason: not valid java name */
    boolean mo1556moveFocus3ESFkO8(int i10);
}
