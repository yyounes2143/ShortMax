package androidx.compose.runtime;

import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Stack.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class IntStack {
    public static final int $stable = 8;
    @NotNull
    public int[] slots = new int[10];
    public int tos;

    private final int[] resize() {
        int[] iArr = this.slots;
        int[] copyOf = Arrays.copyOf(iArr, iArr.length * 2);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        this.slots = copyOf;
        return copyOf;
    }

    public final void clear() {
        this.tos = 0;
    }

    public final int getSize() {
        return this.tos;
    }

    public final int indexOf(int i10) {
        int[] iArr = this.slots;
        int min = Math.min(iArr.length, this.tos);
        for (int i11 = 0; i11 < min; i11++) {
            if (iArr[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    public final boolean isEmpty() {
        if (this.tos == 0) {
            return true;
        }
        return false;
    }

    public final boolean isNotEmpty() {
        if (this.tos != 0) {
            return true;
        }
        return false;
    }

    public final int peek() {
        return this.slots[this.tos - 1];
    }

    public final int peek2() {
        return this.slots[this.tos - 2];
    }

    public final int peekOr(int i10) {
        int i11 = this.tos - 1;
        if (i11 >= 0) {
            return this.slots[i11];
        }
        return i10;
    }

    public final int pop() {
        int[] iArr = this.slots;
        int i10 = this.tos - 1;
        this.tos = i10;
        return iArr[i10];
    }

    public final void push(int i10) {
        int[] iArr = this.slots;
        if (this.tos >= iArr.length) {
            iArr = resize();
        }
        int i11 = this.tos;
        this.tos = i11 + 1;
        iArr[i11] = i10;
    }

    public final int peek(int i10) {
        return this.slots[i10];
    }
}
