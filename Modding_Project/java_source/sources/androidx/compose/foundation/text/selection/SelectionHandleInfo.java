package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SelectionHandles.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectionHandleInfo {
    @NotNull
    private final Handle handle;
    private final long position;

    public /* synthetic */ SelectionHandleInfo(Handle handle, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(handle, j10);
    }

    /* renamed from: copy-Uv8p0NA$default  reason: not valid java name */
    public static /* synthetic */ SelectionHandleInfo m828copyUv8p0NA$default(SelectionHandleInfo selectionHandleInfo, Handle handle, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            handle = selectionHandleInfo.handle;
        }
        if ((i10 & 2) != 0) {
            j10 = selectionHandleInfo.position;
        }
        return selectionHandleInfo.m830copyUv8p0NA(handle, j10);
    }

    @NotNull
    public final Handle component1() {
        return this.handle;
    }

    /* renamed from: component2-F1C5BW0  reason: not valid java name */
    public final long m829component2F1C5BW0() {
        return this.position;
    }

    @NotNull
    /* renamed from: copy-Uv8p0NA  reason: not valid java name */
    public final SelectionHandleInfo m830copyUv8p0NA(@NotNull Handle handle, long j10) {
        Intrinsics.checkNotNullParameter(handle, "handle");
        return new SelectionHandleInfo(handle, j10, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SelectionHandleInfo)) {
            return false;
        }
        SelectionHandleInfo selectionHandleInfo = (SelectionHandleInfo) obj;
        if (this.handle == selectionHandleInfo.handle && Offset.m1603equalsimpl0(this.position, selectionHandleInfo.position)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Handle getHandle() {
        return this.handle;
    }

    /* renamed from: getPosition-F1C5BW0  reason: not valid java name */
    public final long m831getPositionF1C5BW0() {
        return this.position;
    }

    public int hashCode() {
        return (this.handle.hashCode() * 31) + Offset.m1608hashCodeimpl(this.position);
    }

    @NotNull
    public String toString() {
        return "SelectionHandleInfo(handle=" + this.handle + ", position=" + ((Object) Offset.m1614toStringimpl(this.position)) + ')';
    }

    private SelectionHandleInfo(Handle handle, long j10) {
        this.handle = handle;
        this.position = j10;
    }
}
