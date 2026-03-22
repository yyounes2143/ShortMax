package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ByteSpreadBuilder extends PrimitiveSpreadBuilder<byte[]> {
    @NotNull
    private final byte[] values;

    public ByteSpreadBuilder(int i10) {
        super(i10);
        this.values = new byte[i10];
    }

    public final void add(byte b10) {
        byte[] bArr = this.values;
        int position = getPosition();
        setPosition(position + 1);
        bArr[position] = b10;
    }

    @NotNull
    public final byte[] toArray() {
        return toArray(this.values, new byte[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.PrimitiveSpreadBuilder
    public int getSize(@NotNull byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return bArr.length;
    }
}
