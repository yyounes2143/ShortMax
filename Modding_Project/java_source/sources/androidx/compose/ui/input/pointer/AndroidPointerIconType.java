package androidx.compose.ui.input.pointer;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PointerIcon.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidPointerIconType implements PointerIcon {
    private final int type;

    public AndroidPointerIconType(int i10) {
        this.type = i10;
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
        if (!Intrinsics.areEqual(AndroidPointerIconType.class, cls)) {
            return false;
        }
        if (obj != null) {
            if (this.type == ((AndroidPointerIconType) obj).type) {
                return true;
            }
            return false;
        }
        throw new NullPointerException("null cannot be cast to non-null type androidx.compose.ui.input.pointer.AndroidPointerIconType");
    }

    public final int getType() {
        return this.type;
    }

    public int hashCode() {
        return this.type;
    }

    @NotNull
    public String toString() {
        return "AndroidPointerIcon(type=" + this.type + ')';
    }
}
