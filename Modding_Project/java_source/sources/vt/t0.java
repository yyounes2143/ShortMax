package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class t0 extends k2<int[]> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private int[] f69518a;

    /* renamed from: b  reason: collision with root package name */
    private int f69519b;

    public t0(@NotNull int[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69518a = bufferWithData;
        this.f69519b = bufferWithData.length;
        b(10);
    }

    @Override // vt.k2
    public void b(int i10) {
        int[] iArr = this.f69518a;
        if (iArr.length < i10) {
            int[] copyOf = Arrays.copyOf(iArr, kotlin.ranges.e.e(i10, iArr.length * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69518a = copyOf;
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69519b;
    }

    public final void e(int i10) {
        k2.c(this, 0, 1, null);
        int[] iArr = this.f69518a;
        int d10 = d();
        this.f69519b = d10 + 1;
        iArr[d10] = i10;
    }

    @Override // vt.k2
    @NotNull
    /* renamed from: f */
    public int[] a() {
        int[] copyOf = Arrays.copyOf(this.f69518a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return copyOf;
    }
}
