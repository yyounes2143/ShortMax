package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a0 extends k2<double[]> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private double[] f69375a;

    /* renamed from: b  reason: collision with root package name */
    private int f69376b;

    public a0(@NotNull double[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69375a = bufferWithData;
        this.f69376b = bufferWithData.length;
        b(10);
    }

    @Override // vt.k2
    public void b(int i10) {
        double[] dArr = this.f69375a;
        if (dArr.length < i10) {
            double[] copyOf = Arrays.copyOf(dArr, kotlin.ranges.e.e(i10, dArr.length * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69375a = copyOf;
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69376b;
    }

    public final void e(double d10) {
        k2.c(this, 0, 1, null);
        double[] dArr = this.f69375a;
        int d11 = d();
        this.f69376b = d11 + 1;
        dArr[d11] = d10;
    }

    @Override // vt.k2
    @NotNull
    /* renamed from: f */
    public double[] a() {
        double[] copyOf = Arrays.copyOf(this.f69375a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return copyOf;
    }
}
