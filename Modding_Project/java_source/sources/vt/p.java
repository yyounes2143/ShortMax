package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class p extends k2<char[]> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private char[] f69486a;

    /* renamed from: b  reason: collision with root package name */
    private int f69487b;

    public p(@NotNull char[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69486a = bufferWithData;
        this.f69487b = bufferWithData.length;
        b(10);
    }

    @Override // vt.k2
    public void b(int i10) {
        char[] cArr = this.f69486a;
        if (cArr.length < i10) {
            char[] copyOf = Arrays.copyOf(cArr, kotlin.ranges.e.e(i10, cArr.length * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69486a = copyOf;
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69487b;
    }

    public final void e(char c10) {
        k2.c(this, 0, 1, null);
        char[] cArr = this.f69486a;
        int d10 = d();
        this.f69487b = d10 + 1;
        cArr[d10] = c10;
    }

    @Override // vt.k2
    @NotNull
    /* renamed from: f */
    public char[] a() {
        char[] copyOf = Arrays.copyOf(this.f69486a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return copyOf;
    }
}
