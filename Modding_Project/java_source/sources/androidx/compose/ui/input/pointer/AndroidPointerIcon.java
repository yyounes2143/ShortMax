package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PointerIcon.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidPointerIcon implements PointerIcon {
    @NotNull
    private final android.view.PointerIcon pointerIcon;

    public AndroidPointerIcon(@NotNull android.view.PointerIcon pointerIcon) {
        Intrinsics.checkNotNullParameter(pointerIcon, "pointerIcon");
        this.pointerIcon = pointerIcon;
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(AndroidPointerIcon.class, cls)) {
            return false;
        }
        if (obj != null) {
            return Intrinsics.areEqual(this.pointerIcon, ((AndroidPointerIcon) obj).pointerIcon);
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.input.pointer.AndroidPointerIcon");
    }

    @NotNull
    public final android.view.PointerIcon getPointerIcon() {
        return this.pointerIcon;
    }

    public int hashCode() {
        return this.pointerIcon.hashCode();
    }

    @NotNull
    public String toString() {
        return "AndroidPointerIcon(pointerIcon=" + this.pointerIcon + ')';
    }
}
