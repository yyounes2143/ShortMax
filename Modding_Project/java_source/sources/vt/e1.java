package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e1 extends k2<long[]> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private long[] f69401a;

    /* renamed from: b  reason: collision with root package name */
    private int f69402b;

    public e1(@NotNull long[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69401a = bufferWithData;
        this.f69402b = bufferWithData.length;
        b(10);
    }

    @Override // vt.k2
    public void b(int i10) {
        long[] jArr = this.f69401a;
        if (jArr.length < i10) {
            long[] copyOf = Arrays.copyOf(jArr, kotlin.ranges.e.e(i10, jArr.length * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69401a = copyOf;
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69402b;
    }

    public final void e(long j10) {
        k2.c(this, 0, 1, null);
        long[] jArr = this.f69401a;
        int d10 = d();
        this.f69402b = d10 + 1;
        jArr[d10] = j10;
    }

    @Override // vt.k2
    @NotNull
    /* renamed from: f */
    public long[] a() {
        long[] copyOf = Arrays.copyOf(this.f69401a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return copyOf;
    }
}
