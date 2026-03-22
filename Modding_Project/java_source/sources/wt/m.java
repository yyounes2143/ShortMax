package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Composers.kt */
@Metadata
/* loaded from: classes8.dex */
public class m {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final z f70321a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f70322b;

    public m(@NotNull z writer) {
        Intrinsics.checkNotNullParameter(writer, "writer");
        this.f70321a = writer;
        this.f70322b = true;
    }

    public final boolean a() {
        return this.f70322b;
    }

    public void b() {
        this.f70322b = true;
    }

    public void c() {
        this.f70322b = false;
    }

    public void d() {
        this.f70322b = false;
    }

    public void e(byte b10) {
        this.f70321a.writeLong(b10);
    }

    public final void f(char c10) {
        this.f70321a.a(c10);
    }

    public void g(double d10) {
        this.f70321a.c(String.valueOf(d10));
    }

    public void h(float f10) {
        this.f70321a.c(String.valueOf(f10));
    }

    public void i(int i10) {
        this.f70321a.writeLong(i10);
    }

    public void j(long j10) {
        this.f70321a.writeLong(j10);
    }

    public final void k(@NotNull String v10) {
        Intrinsics.checkNotNullParameter(v10, "v");
        this.f70321a.c(v10);
    }

    public void l(short s10) {
        this.f70321a.writeLong(s10);
    }

    public void m(boolean z10) {
        this.f70321a.c(String.valueOf(z10));
    }

    public void n(@NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f70321a.b(value);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void o(boolean z10) {
        this.f70322b = z10;
    }

    public void p() {
    }

    public void q() {
    }
}
