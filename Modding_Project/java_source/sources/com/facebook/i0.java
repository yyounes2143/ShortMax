package com.facebook;

import android.os.Handler;
import com.facebook.a0;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProgressOutputStream.kt */
@Metadata
/* loaded from: classes3.dex */
public final class i0 extends FilterOutputStream implements j0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final a0 f15576a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Map<GraphRequest, l0> f15577b;

    /* renamed from: c  reason: collision with root package name */
    private final long f15578c;

    /* renamed from: d  reason: collision with root package name */
    private final long f15579d;

    /* renamed from: e  reason: collision with root package name */
    private long f15580e;

    /* renamed from: f  reason: collision with root package name */
    private long f15581f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private l0 f15582g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(@NotNull OutputStream out, @NotNull a0 requests, @NotNull Map<GraphRequest, l0> progressMap, long j10) {
        super(out);
        Intrinsics.checkNotNullParameter(out, "out");
        Intrinsics.checkNotNullParameter(requests, "requests");
        Intrinsics.checkNotNullParameter(progressMap, "progressMap");
        this.f15576a = requests;
        this.f15577b = progressMap;
        this.f15578c = j10;
        this.f15579d = v.B();
    }

    private final void g(long j10) {
        l0 l0Var = this.f15582g;
        if (l0Var != null) {
            l0Var.b(j10);
        }
        long j11 = this.f15580e + j10;
        this.f15580e = j11;
        if (j11 >= this.f15581f + this.f15579d || j11 >= this.f15578c) {
            k();
        }
    }

    private final void k() {
        if (this.f15580e > this.f15581f) {
            for (final a0.a aVar : this.f15576a.n()) {
                if (aVar instanceof a0.c) {
                    Handler m10 = this.f15576a.m();
                    if (m10 != null) {
                        m10.post(new Runnable() { // from class: com.facebook.h0
                            @Override // java.lang.Runnable
                            public final void run() {
                                i0.l(a0.a.this, this);
                            }
                        });
                    } else {
                        ((a0.c) aVar).b(this.f15576a, this.f15580e, this.f15578c);
                    }
                }
            }
            this.f15581f = this.f15580e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(a0.a callback, i0 this$0) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ((a0.c) callback).b(this$0.f15576a, this$0.f15580e, this$0.f15578c);
    }

    @Override // com.facebook.j0
    public void a(@Nullable GraphRequest graphRequest) {
        l0 l0Var;
        if (graphRequest != null) {
            l0Var = this.f15577b.get(graphRequest);
        } else {
            l0Var = null;
        }
        this.f15582g = l0Var;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        for (l0 l0Var : this.f15577b.values()) {
            l0Var.d();
        }
        k();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(@NotNull byte[] buffer) throws IOException {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        ((FilterOutputStream) this).out.write(buffer);
        g(buffer.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(@NotNull byte[] buffer, int i10, int i11) throws IOException {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        ((FilterOutputStream) this).out.write(buffer, i10, i11);
        g(i11);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i10) throws IOException {
        ((FilterOutputStream) this).out.write(i10);
        g(1L);
    }
}
