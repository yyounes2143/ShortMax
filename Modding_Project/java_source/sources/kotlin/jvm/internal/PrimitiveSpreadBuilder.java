package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class PrimitiveSpreadBuilder<T> {
    private int position;
    private final int size;
    @NotNull
    private final T[] spreads;

    public PrimitiveSpreadBuilder(int i10) {
        this.size = i10;
        this.spreads = (T[]) new Object[i10];
    }

    public final void addSpread(@NotNull T spreadArgument) {
        Intrinsics.checkNotNullParameter(spreadArgument, "spreadArgument");
        T[] tArr = this.spreads;
        int i10 = this.position;
        this.position = i10 + 1;
        tArr[i10] = spreadArgument;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getPosition() {
        return this.position;
    }

    protected abstract int getSize(@NotNull T t10);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void setPosition(int i10) {
        this.position = i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int size() {
        int i10;
        int i11 = this.size - 1;
        int i12 = 0;
        if (i11 >= 0) {
            int i13 = 0;
            while (true) {
                T t10 = this.spreads[i13];
                if (t10 != null) {
                    i10 = getSize(t10);
                } else {
                    i10 = 1;
                }
                i12 += i10;
                if (i13 == i11) {
                    break;
                }
                i13++;
            }
        }
        return i12;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final T toArray(@NotNull T values, @NotNull T result) {
        int i10;
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(result, "result");
        int i11 = this.size - 1;
        int i12 = 0;
        if (i11 >= 0) {
            int i13 = 0;
            int i14 = 0;
            i10 = 0;
            while (true) {
                T t10 = this.spreads[i13];
                if (t10 != null) {
                    if (i14 < i13) {
                        int i15 = i13 - i14;
                        System.arraycopy(values, i14, result, i10, i15);
                        i10 += i15;
                    }
                    int size = getSize(t10);
                    System.arraycopy(t10, 0, result, i10, size);
                    i10 += size;
                    i14 = i13 + 1;
                }
                if (i13 == i11) {
                    break;
                }
                i13++;
            }
            i12 = i14;
        } else {
            i10 = 0;
        }
        int i16 = this.size;
        if (i12 < i16) {
            System.arraycopy(values, i12, result, i10, i16 - i12);
        }
        return result;
    }

    private static /* synthetic */ void getSpreads$annotations() {
    }
}
