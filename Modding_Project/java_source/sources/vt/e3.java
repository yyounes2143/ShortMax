package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e3 extends k2<ms.m> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private byte[] f69404a;

    /* renamed from: b  reason: collision with root package name */
    private int f69405b;

    public /* synthetic */ e3(byte[] bArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(bArr);
    }

    @Override // vt.k2
    public /* bridge */ /* synthetic */ ms.m a() {
        return ms.m.a(f());
    }

    @Override // vt.k2
    public void b(int i10) {
        if (ms.m.m(this.f69404a) < i10) {
            byte[] bArr = this.f69404a;
            byte[] copyOf = Arrays.copyOf(bArr, kotlin.ranges.e.e(i10, ms.m.m(bArr) * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69404a = ms.m.d(copyOf);
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69405b;
    }

    public final void e(byte b10) {
        k2.c(this, 0, 1, null);
        byte[] bArr = this.f69404a;
        int d10 = d();
        this.f69405b = d10 + 1;
        ms.m.q(bArr, d10, b10);
    }

    @NotNull
    public byte[] f() {
        byte[] copyOf = Arrays.copyOf(this.f69404a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return ms.m.d(copyOf);
    }

    private e3(byte[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69404a = bufferWithData;
        this.f69405b = ms.m.m(bufferWithData);
        b(10);
    }
}
