package com.facebook;

import android.os.Handler;
import com.facebook.GraphRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RequestProgress.kt */
@Metadata
/* loaded from: classes3.dex */
public final class l0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Handler f16388a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final GraphRequest f16389b;

    /* renamed from: c  reason: collision with root package name */
    private final long f16390c;

    /* renamed from: d  reason: collision with root package name */
    private long f16391d;

    /* renamed from: e  reason: collision with root package name */
    private long f16392e;

    /* renamed from: f  reason: collision with root package name */
    private long f16393f;

    public l0(@Nullable Handler handler, @NotNull GraphRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f16388a = handler;
        this.f16389b = request;
        this.f16390c = v.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(GraphRequest.b bVar, long j10, long j11) {
        ((GraphRequest.f) bVar).b(j10, j11);
    }

    public final void b(long j10) {
        long j11 = this.f16391d + j10;
        this.f16391d = j11;
        if (j11 >= this.f16392e + this.f16390c || j11 >= this.f16393f) {
            d();
        }
    }

    public final void c(long j10) {
        this.f16393f += j10;
    }

    public final void d() {
        if (this.f16391d > this.f16392e) {
            final GraphRequest.b o10 = this.f16389b.o();
            final long j10 = this.f16393f;
            if (j10 > 0 && (o10 instanceof GraphRequest.f)) {
                final long j11 = this.f16391d;
                Handler handler = this.f16388a;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.facebook.k0
                        @Override // java.lang.Runnable
                        public final void run() {
                            l0.e(GraphRequest.b.this, j11, j10);
                        }
                    });
                } else {
                    ((GraphRequest.f) o10).b(j11, j10);
                }
                this.f16392e = this.f16391d;
            }
        }
    }
}
