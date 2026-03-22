package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class BooleanSpreadBuilder extends PrimitiveSpreadBuilder<boolean[]> {
    @NotNull
    private final boolean[] values;

    public BooleanSpreadBuilder(int i10) {
        super(i10);
        this.values = new boolean[i10];
    }

    public final void add(boolean z10) {
        boolean[] zArr = this.values;
        int position = getPosition();
        setPosition(position + 1);
        zArr[position] = z10;
    }

    @NotNull
    public final boolean[] toArray() {
        return toArray(this.values, new boolean[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.PrimitiveSpreadBuilder
    public int getSize(@NotNull boolean[] zArr) {
        Intrinsics.checkNotNullParameter(zArr, "<this>");
        return zArr.length;
    }
}
