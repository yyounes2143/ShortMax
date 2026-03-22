package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CharSpreadBuilder extends PrimitiveSpreadBuilder<char[]> {
    @NotNull
    private final char[] values;

    public CharSpreadBuilder(int i10) {
        super(i10);
        this.values = new char[i10];
    }

    public final void add(char c10) {
        char[] cArr = this.values;
        int position = getPosition();
        setPosition(position + 1);
        cArr[position] = c10;
    }

    @NotNull
    public final char[] toArray() {
        return toArray(this.values, new char[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.PrimitiveSpreadBuilder
    public int getSize(@NotNull char[] cArr) {
        Intrinsics.checkNotNullParameter(cArr, "<this>");
        return cArr.length;
    }
}
