package androidx.compose.ui.focus;

import androidx.compose.ui.focus.FocusRequester;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FocusProperties.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusPropertiesImpl implements FocusProperties {
    private boolean canFocus = true;
    @NotNull
    private FocusRequester down;
    @NotNull
    private FocusRequester end;
    @NotNull
    private FocusRequester left;
    @NotNull
    private FocusRequester next;
    @NotNull
    private FocusRequester previous;
    @NotNull
    private FocusRequester right;
    @NotNull
    private FocusRequester start;
    @NotNull

    /* renamed from: up  reason: collision with root package name */
    private FocusRequester f1241up;

    public FocusPropertiesImpl() {
        FocusRequester.Companion companion = FocusRequester.Companion;
        this.next = companion.getDefault();
        this.previous = companion.getDefault();
        this.f1241up = companion.getDefault();
        this.down = companion.getDefault();
        this.left = companion.getDefault();
        this.right = companion.getDefault();
        this.start = companion.getDefault();
        this.end = companion.getDefault();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public boolean getCanFocus() {
        return this.canFocus;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getDown() {
        return this.down;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getEnd() {
        return this.end;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getLeft() {
        return this.left;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getNext() {
        return this.next;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getPrevious() {
        return this.previous;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getRight() {
        return this.right;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getStart() {
        return this.start;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    @NotNull
    public FocusRequester getUp() {
        return this.f1241up;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setCanFocus(boolean z10) {
        this.canFocus = z10;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setDown(@NotNull FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.down = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setEnd(@NotNull FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.end = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setLeft(@NotNull FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.left = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setNext(@NotNull FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.next = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setPrevious(@NotNull FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.previous = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setRight(@NotNull FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.right = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setStart(@NotNull FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.start = focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setUp(@NotNull FocusRequester focusRequester) {
        Intrinsics.checkNotNullParameter(focusRequester, "<set-?>");
        this.f1241up = focusRequester;
    }
}
