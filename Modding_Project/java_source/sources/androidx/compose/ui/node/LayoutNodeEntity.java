package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNodeEntity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LayoutNodeEntity.kt */
@Metadata
/* loaded from: classes.dex */
public class LayoutNodeEntity<T extends LayoutNodeEntity<T, M>, M extends Modifier> {
    private boolean isAttached;
    @NotNull
    private final LayoutNodeWrapper layoutNodeWrapper;
    @NotNull
    private final M modifier;
    @Nullable
    private T next;

    public LayoutNodeEntity(@NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull M modifier) {
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "layoutNodeWrapper");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        this.layoutNodeWrapper = layoutNodeWrapper;
        this.modifier = modifier;
    }

    @NotNull
    public final LayoutNode getLayoutNode() {
        return this.layoutNodeWrapper.getLayoutNode$ui_release();
    }

    @NotNull
    public final LayoutNodeWrapper getLayoutNodeWrapper() {
        return this.layoutNodeWrapper;
    }

    @NotNull
    public final M getModifier() {
        return this.modifier;
    }

    @Nullable
    public final T getNext() {
        return this.next;
    }

    /* renamed from: getSize-YbymL2g  reason: not valid java name */
    public final long m3471getSizeYbymL2g() {
        return this.layoutNodeWrapper.mo3337getSizeYbymL2g();
    }

    public final boolean isAttached() {
        return this.isAttached;
    }

    public void onAttach() {
        this.isAttached = true;
    }

    public void onDetach() {
        this.isAttached = false;
    }

    public final void setNext(@Nullable T t10) {
        this.next = t10;
    }
}
