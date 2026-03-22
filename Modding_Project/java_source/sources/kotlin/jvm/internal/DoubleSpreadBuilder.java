package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DoubleSpreadBuilder extends PrimitiveSpreadBuilder<double[]> {
    @NotNull
    private final double[] values;

    public DoubleSpreadBuilder(int i10) {
        super(i10);
        this.values = new double[i10];
    }

    public final void add(double d10) {
        double[] dArr = this.values;
        int position = getPosition();
        setPosition(position + 1);
        dArr[position] = d10;
    }

    @NotNull
    public final double[] toArray() {
        return toArray(this.values, new double[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.PrimitiveSpreadBuilder
    public int getSize(@NotNull double[] dArr) {
        Intrinsics.checkNotNullParameter(dArr, "<this>");
        return dArr.length;
    }
}
