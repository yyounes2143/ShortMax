package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ShortSpreadBuilder extends PrimitiveSpreadBuilder<short[]> {
    @NotNull
    private final short[] values;

    public ShortSpreadBuilder(int i10) {
        super(i10);
        this.values = new short[i10];
    }

    public final void add(short s10) {
        short[] sArr = this.values;
        int position = getPosition();
        setPosition(position + 1);
        sArr[position] = s10;
    }

    @NotNull
    public final short[] toArray() {
        return toArray(this.values, new short[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.PrimitiveSpreadBuilder
    public int getSize(@NotNull short[] sArr) {
        Intrinsics.checkNotNullParameter(sArr, "<this>");
        return sArr.length;
    }
}
