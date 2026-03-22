package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class n3 extends k2<ms.t> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private short[] f69480a;

    /* renamed from: b  reason: collision with root package name */
    private int f69481b;

    public /* synthetic */ n3(short[] sArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(sArr);
    }

    @Override // vt.k2
    public /* bridge */ /* synthetic */ ms.t a() {
        return ms.t.a(f());
    }

    @Override // vt.k2
    public void b(int i10) {
        if (ms.t.m(this.f69480a) < i10) {
            short[] sArr = this.f69480a;
            short[] copyOf = Arrays.copyOf(sArr, kotlin.ranges.e.e(i10, ms.t.m(sArr) * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69480a = ms.t.d(copyOf);
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69481b;
    }

    public final void e(short s10) {
        k2.c(this, 0, 1, null);
        short[] sArr = this.f69480a;
        int d10 = d();
        this.f69481b = d10 + 1;
        ms.t.q(sArr, d10, s10);
    }

    @NotNull
    public short[] f() {
        short[] copyOf = Arrays.copyOf(this.f69480a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return ms.t.d(copyOf);
    }

    private n3(short[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69480a = bufferWithData;
        this.f69481b = ms.t.m(bufferWithData);
        b(10);
    }
}
