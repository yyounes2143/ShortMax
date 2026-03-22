package com.facebook;

import android.os.Handler;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProgressNoopOutputStream.kt */
@Metadata
/* loaded from: classes3.dex */
public final class g0 extends OutputStream implements j0 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final Handler f15563a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Map<GraphRequest, l0> f15564b = new HashMap();
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private GraphRequest f15565c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private l0 f15566d;

    /* renamed from: e  reason: collision with root package name */
    private int f15567e;

    public g0(@Nullable Handler handler) {
        this.f15563a = handler;
    }

    @Override // com.facebook.j0
    public void a(@Nullable GraphRequest graphRequest) {
        l0 l0Var;
        this.f15565c = graphRequest;
        if (graphRequest != null) {
            l0Var = this.f15564b.get(graphRequest);
        } else {
            l0Var = null;
        }
        this.f15566d = l0Var;
    }

    public final void g(long j10) {
        GraphRequest graphRequest = this.f15565c;
        if (graphRequest == null) {
            return;
        }
        if (this.f15566d == null) {
            l0 l0Var = new l0(this.f15563a, graphRequest);
            this.f15566d = l0Var;
            this.f15564b.put(graphRequest, l0Var);
        }
        l0 l0Var2 = this.f15566d;
        if (l0Var2 != null) {
            l0Var2.c(j10);
        }
        this.f15567e += (int) j10;
    }

    public final int k() {
        return this.f15567e;
    }

    @NotNull
    public final Map<GraphRequest, l0> l() {
        return this.f15564b;
    }

    @Override // java.io.OutputStream
    public void write(@NotNull byte[] buffer) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        g(buffer.length);
    }

    @Override // java.io.OutputStream
    public void write(@NotNull byte[] buffer, int i10, int i11) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        g(i11);
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        g(1L);
    }
}
