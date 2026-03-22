package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class h3 extends k2<ms.o> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private int[] f69439a;

    /* renamed from: b  reason: collision with root package name */
    private int f69440b;

    public /* synthetic */ h3(int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(iArr);
    }

    @Override // vt.k2
    public /* bridge */ /* synthetic */ ms.o a() {
        return ms.o.a(f());
    }

    @Override // vt.k2
    public void b(int i10) {
        if (ms.o.m(this.f69439a) < i10) {
            int[] iArr = this.f69439a;
            int[] copyOf = Arrays.copyOf(iArr, kotlin.ranges.e.e(i10, ms.o.m(iArr) * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69439a = ms.o.d(copyOf);
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69440b;
    }

    public final void e(int i10) {
        k2.c(this, 0, 1, null);
        int[] iArr = this.f69439a;
        int d10 = d();
        this.f69440b = d10 + 1;
        ms.o.q(iArr, d10, i10);
    }

    @NotNull
    public int[] f() {
        int[] copyOf = Arrays.copyOf(this.f69439a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return ms.o.d(copyOf);
    }

    private h3(int[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69439a = bufferWithData;
        this.f69440b = ms.o.m(bufferWithData);
        b(10);
    }
}
