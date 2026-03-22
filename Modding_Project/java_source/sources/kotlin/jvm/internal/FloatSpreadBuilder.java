package kotlin.jvm.internal;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveSpreadBuilders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class FloatSpreadBuilder extends PrimitiveSpreadBuilder<float[]> {
    @NotNull
    private final float[] values;

    public FloatSpreadBuilder(int i10) {
        super(i10);
        this.values = new float[i10];
    }

    public final void add(float f10) {
        float[] fArr = this.values;
        int position = getPosition();
        setPosition(position + 1);
        fArr[position] = f10;
    }

    @NotNull
    public final float[] toArray() {
        return toArray(this.values, new float[size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.PrimitiveSpreadBuilder
    public int getSize(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<this>");
        return fArr.length;
    }
}
