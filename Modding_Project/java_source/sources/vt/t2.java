package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class t2 extends k2<short[]> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private short[] f69522a;

    /* renamed from: b  reason: collision with root package name */
    private int f69523b;

    public t2(@NotNull short[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69522a = bufferWithData;
        this.f69523b = bufferWithData.length;
        b(10);
    }

    @Override // vt.k2
    public void b(int i10) {
        short[] sArr = this.f69522a;
        if (sArr.length < i10) {
            short[] copyOf = Arrays.copyOf(sArr, kotlin.ranges.e.e(i10, sArr.length * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69522a = copyOf;
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69523b;
    }

    public final void e(short s10) {
        k2.c(this, 0, 1, null);
        short[] sArr = this.f69522a;
        int d10 = d();
        this.f69523b = d10 + 1;
        sArr[d10] = s10;
    }

    @Override // vt.k2
    @NotNull
    /* renamed from: f */
    public short[] a() {
        short[] copyOf = Arrays.copyOf(this.f69522a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return copyOf;
    }
}
