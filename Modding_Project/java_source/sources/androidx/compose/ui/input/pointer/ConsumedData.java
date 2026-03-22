package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ms.c;
/* compiled from: PointerEvent.kt */
@StabilityInferred(parameters = 0)
@c
@Metadata
/* loaded from: classes.dex */
public final class ConsumedData {
    public static final int $stable = 8;
    private boolean downChange;
    private boolean positionChange;

    public ConsumedData() {
        this(false, false, 3, null);
    }

    public final boolean getDownChange() {
        return this.downChange;
    }

    public final boolean getPositionChange() {
        return this.positionChange;
    }

    public final void setDownChange(boolean z10) {
        this.downChange = z10;
    }

    public final void setPositionChange(boolean z10) {
        this.positionChange = z10;
    }

    public ConsumedData(boolean z10, boolean z11) {
        this.positionChange = z10;
        this.downChange = z11;
    }

    public /* synthetic */ ConsumedData(boolean z10, boolean z11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11);
    }

    @c
    public static /* synthetic */ void getDownChange$annotations() {
    }

    @c
    public static /* synthetic */ void getPositionChange$annotations() {
    }
}
