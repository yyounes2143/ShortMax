package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlotTable.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class Anchor {
    public static final int $stable = 8;
    private int location;

    public Anchor(int i10) {
        this.location = i10;
    }

    public final int getLocation$runtime() {
        return this.location;
    }

    public final boolean getValid() {
        if (this.location != Integer.MIN_VALUE) {
            return true;
        }
        return false;
    }

    public final void setLocation$runtime(int i10) {
        this.location = i10;
    }

    public final int toIndexFor(@NotNull SlotTable slotTable) {
        return slotTable.anchorIndex(this);
    }

    @NotNull
    public String toString() {
        return super.toString() + "{ location = " + this.location + " }";
    }

    public final int toIndexFor(@NotNull SlotWriter slotWriter) {
        return slotWriter.anchorIndex(this);
    }
}
