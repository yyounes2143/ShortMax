package androidx.compose.runtime.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: IntRef.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class IntRef {
    public static final int $stable = 8;
    private int element;

    public IntRef() {
        this(0, 1, null);
    }

    public final int getElement() {
        return this.element;
    }

    public final void setElement(int i10) {
        this.element = i10;
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("IntRef(element = ");
        sb2.append(this.element);
        sb2.append(")@");
        String num = Integer.toString(hashCode(), CharsKt.checkRadix(16));
        Intrinsics.checkNotNullExpressionValue(num, "toString(...)");
        sb2.append(num);
        return sb2.toString();
    }

    public IntRef(int i10) {
        this.element = i10;
    }

    public /* synthetic */ IntRef(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
