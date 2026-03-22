package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j extends k2<byte[]> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private byte[] f69450a;

    /* renamed from: b  reason: collision with root package name */
    private int f69451b;

    public j(@NotNull byte[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69450a = bufferWithData;
        this.f69451b = bufferWithData.length;
        b(10);
    }

    @Override // vt.k2
    public void b(int i10) {
        byte[] bArr = this.f69450a;
        if (bArr.length < i10) {
            byte[] copyOf = Arrays.copyOf(bArr, kotlin.ranges.e.e(i10, bArr.length * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69450a = copyOf;
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69451b;
    }

    public final void e(byte b10) {
        k2.c(this, 0, 1, null);
        byte[] bArr = this.f69450a;
        int d10 = d();
        this.f69451b = d10 + 1;
        bArr[d10] = b10;
    }

    @Override // vt.k2
    @NotNull
    /* renamed from: f */
    public byte[] a() {
        byte[] copyOf = Arrays.copyOf(this.f69450a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return copyOf;
    }
}
