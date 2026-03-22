package io.bidmachine.media3.exoplayer.audio;

import androidx.annotation.Nullable;
/* compiled from: AudioOffloadSupport.java */
/* loaded from: classes8.dex */
public final class d {

    /* renamed from: d  reason: collision with root package name */
    public static final d f55521d = new b().d();

    /* renamed from: a  reason: collision with root package name */
    public final boolean f55522a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f55523b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f55524c;

    /* compiled from: AudioOffloadSupport.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private boolean f55525a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f55526b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f55527c;

        public d d() {
            if (!this.f55525a && (this.f55526b || this.f55527c)) {
                throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupported is false");
            }
            return new d(this);
        }

        public b e(boolean z10) {
            this.f55525a = z10;
            return this;
        }

        public b f(boolean z10) {
            this.f55526b = z10;
            return this;
        }

        public b g(boolean z10) {
            this.f55527c = z10;
            return this;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f55522a == dVar.f55522a && this.f55523b == dVar.f55523b && this.f55524c == dVar.f55524c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f55522a ? 1 : 0) << 2) + ((this.f55523b ? 1 : 0) << 1) + (this.f55524c ? 1 : 0);
    }

    private d(b bVar) {
        this.f55522a = bVar.f55525a;
        this.f55523b = bVar.f55526b;
        this.f55524c = bVar.f55527c;
    }
}
