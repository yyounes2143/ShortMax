package vt;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveArraysSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class k3 extends k2<ms.q> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private long[] f69465a;

    /* renamed from: b  reason: collision with root package name */
    private int f69466b;

    public /* synthetic */ k3(long[] jArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(jArr);
    }

    @Override // vt.k2
    public /* bridge */ /* synthetic */ ms.q a() {
        return ms.q.a(f());
    }

    @Override // vt.k2
    public void b(int i10) {
        if (ms.q.m(this.f69465a) < i10) {
            long[] jArr = this.f69465a;
            long[] copyOf = Arrays.copyOf(jArr, kotlin.ranges.e.e(i10, ms.q.m(jArr) * 2));
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            this.f69465a = ms.q.d(copyOf);
        }
    }

    @Override // vt.k2
    public int d() {
        return this.f69466b;
    }

    public final void e(long j10) {
        k2.c(this, 0, 1, null);
        long[] jArr = this.f69465a;
        int d10 = d();
        this.f69466b = d10 + 1;
        ms.q.q(jArr, d10, j10);
    }

    @NotNull
    public long[] f() {
        long[] copyOf = Arrays.copyOf(this.f69465a, d());
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        return ms.q.d(copyOf);
    }

    private k3(long[] bufferWithData) {
        Intrinsics.checkNotNullParameter(bufferWithData, "bufferWithData");
        this.f69465a = bufferWithData;
        this.f69466b = ms.q.m(bufferWithData);
        b(10);
    }
}
