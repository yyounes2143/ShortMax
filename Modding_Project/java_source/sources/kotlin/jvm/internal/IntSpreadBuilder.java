package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class IntSpreadBuilder extends PrimitiveSpreadBuilder<int[]> {
    @NotNull
    private final int[] values;

    public IntSpreadBuilder(int i10) {
        super(i10);
        this.values = new int[i10];
    }

    public final void add(int i10) {
        int[] iArr = this.values;
        int position = getPosition();
        setPosition(position + 1);
        iArr[position] = i10;
    }

    @NotNull
    public final int[] toArray() {
        return toArray(this.values, new int[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.PrimitiveSpreadBuilder
    public int getSize(@NotNull int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<this>");
        return iArr.length;
    }
}
