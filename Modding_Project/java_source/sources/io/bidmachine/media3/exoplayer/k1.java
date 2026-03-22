package io.bidmachine.media3.exoplayer;

import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: LoadingInfo.java */
/* loaded from: classes8.dex */
public final class k1 {

    /* renamed from: a  reason: collision with root package name */
    public final long f56411a;

    /* renamed from: b  reason: collision with root package name */
    public final float f56412b;

    /* renamed from: c  reason: collision with root package name */
    public final long f56413c;

    /* compiled from: LoadingInfo.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private long f56414a;

        /* renamed from: b  reason: collision with root package name */
        private float f56415b;

        /* renamed from: c  reason: collision with root package name */
        private long f56416c;

        public k1 d() {
            return new k1(this);
        }

        public b e(long j10) {
            boolean z10;
            if (j10 < 0 && j10 != -9223372036854775807L) {
                z10 = false;
            } else {
                z10 = true;
            }
            cn.a.a(z10);
            this.f56416c = j10;
            return this;
        }

        public b f(long j10) {
            this.f56414a = j10;
            return this;
        }

        public b g(float f10) {
            boolean z10;
            if (f10 <= 0.0f && f10 != -3.4028235E38f) {
                z10 = false;
            } else {
                z10 = true;
            }
            cn.a.a(z10);
            this.f56415b = f10;
            return this;
        }

        public b() {
            this.f56414a = -9223372036854775807L;
            this.f56415b = -3.4028235E38f;
            this.f56416c = -9223372036854775807L;
        }

        private b(k1 k1Var) {
            this.f56414a = k1Var.f56411a;
            this.f56415b = k1Var.f56412b;
            this.f56416c = k1Var.f56413c;
        }
    }

    public b a() {
        return new b();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k1)) {
            return false;
        }
        k1 k1Var = (k1) obj;
        if (this.f56411a == k1Var.f56411a && this.f56412b == k1Var.f56412b && this.f56413c == k1Var.f56413c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.f56411a), Float.valueOf(this.f56412b), Long.valueOf(this.f56413c));
    }

    private k1(b bVar) {
        this.f56411a = bVar.f56414a;
        this.f56412b = bVar.f56415b;
        this.f56413c = bVar.f56416c;
    }
}
