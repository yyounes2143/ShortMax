package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class LongSpreadBuilder extends PrimitiveSpreadBuilder<long[]> {
    @NotNull
    private final long[] values;

    public LongSpreadBuilder(int i10) {
        super(i10);
        this.values = new long[i10];
    }

    public final void add(long j10) {
        long[] jArr = this.values;
        int position = getPosition();
        setPosition(position + 1);
        jArr[position] = j10;
    }

    @NotNull
    public final long[] toArray() {
        return toArray(this.values, new long[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.PrimitiveSpreadBuilder
    public int getSize(@NotNull long[] jArr) {
        Intrinsics.checkNotNullParameter(jArr, "<this>");
        return jArr.length;
    }
}
