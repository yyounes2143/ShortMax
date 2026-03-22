package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j0 extends k2<float[]> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private float[] f69452a;

    /* renamed from: b  reason: collision with root package name */
    private int f69453b;

    public j0(@NotNull float[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69452a = bufferWithData;
        this.f69453b = bufferWithData.length;
        b(10);
    }

    @Override // vt.k2
    public void b(int i10) {
        float[] fArr = this.f69452a;
        if (fArr.length < i10) {
            float[] copyOf = Arrays.copyOf(fArr, kotlin.ranges.e.e(i10, fArr.length * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69452a = copyOf;
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69453b;
    }

    public final void e(float f10) {
        k2.c(this, 0, 1, null);
        float[] fArr = this.f69452a;
        int d10 = d();
        this.f69453b = d10 + 1;
        fArr[d10] = f10;
    }

    @Override // vt.k2
    @NotNull
    /* renamed from: f */
    public float[] a() {
        float[] copyOf = Arrays.copyOf(this.f69452a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return copyOf;
    }
}
