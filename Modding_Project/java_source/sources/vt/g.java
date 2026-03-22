package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g extends k2<boolean[]> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private boolean[] f69413a;

    /* renamed from: b  reason: collision with root package name */
    private int f69414b;

    public g(@NotNull boolean[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69413a = bufferWithData;
        this.f69414b = bufferWithData.length;
        b(10);
    }

    @Override // vt.k2
    public void b(int i10) {
        boolean[] zArr = this.f69413a;
        if (zArr.length < i10) {
            boolean[] copyOf = Arrays.copyOf(zArr, kotlin.ranges.e.e(i10, zArr.length * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69413a = copyOf;
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69414b;
    }

    public final void e(boolean z10) {
        k2.c(this, 0, 1, null);
        boolean[] zArr = this.f69413a;
        int d10 = d();
        this.f69414b = d10 + 1;
        zArr[d10] = z10;
    }

    @Override // vt.k2
    @NotNull
    /* renamed from: f */
    public boolean[] a() {
        boolean[] copyOf = Arrays.copyOf(this.f69413a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return copyOf;
    }
}
