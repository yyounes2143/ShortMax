package io.bidmachine.media3.exoplayer.video;

import android.content.Context;
import android.view.Surface;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import cn.m0;
import com.unity3d.services.core.di.ServiceProvider;
import io.bidmachine.media3.exoplayer.ExoPlaybackException;
/* compiled from: VideoFrameReleaseControl.java */
/* loaded from: classes8.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final b f57291a;

    /* renamed from: b  reason: collision with root package name */
    private final yn.g f57292b;

    /* renamed from: c  reason: collision with root package name */
    private final long f57293c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f57294d;

    /* renamed from: g  reason: collision with root package name */
    private long f57297g;

    /* renamed from: j  reason: collision with root package name */
    private boolean f57300j;

    /* renamed from: m  reason: collision with root package name */
    private boolean f57303m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f57304n;

    /* renamed from: e  reason: collision with root package name */
    private int f57295e = 0;

    /* renamed from: f  reason: collision with root package name */
    private long f57296f = -9223372036854775807L;

    /* renamed from: h  reason: collision with root package name */
    private long f57298h = -9223372036854775807L;

    /* renamed from: i  reason: collision with root package name */
    private long f57299i = -9223372036854775807L;

    /* renamed from: k  reason: collision with root package name */
    private float f57301k = 1.0f;

    /* renamed from: l  reason: collision with root package name */
    private cn.h f57302l = cn.h.f3594a;

    /* compiled from: VideoFrameReleaseControl.java */
    /* loaded from: classes8.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f57305a = -9223372036854775807L;

        /* renamed from: b  reason: collision with root package name */
        private long f57306b = -9223372036854775807L;

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            this.f57305a = -9223372036854775807L;
            this.f57306b = -9223372036854775807L;
        }

        public long f() {
            return this.f57305a;
        }

        public long g() {
            return this.f57306b;
        }
    }

    /* compiled from: VideoFrameReleaseControl.java */
    /* loaded from: classes8.dex */
    public interface b {
        boolean p(long j10, long j11);

        boolean s(long j10, long j11, boolean z10);

        boolean y(long j10, long j11, long j12, boolean z10, boolean z11) throws ExoPlaybackException;
    }

    public n(Context context, b bVar, long j10) {
        this.f57291a = bVar;
        this.f57293c = j10;
        this.f57292b = new yn.g(context);
    }

    private long b(long j10, long j11, long j12) {
        long j13 = (long) ((j12 - j10) / this.f57301k);
        if (this.f57294d) {
            return j13 - (m0.S0(this.f57302l.elapsedRealtime()) - j11);
        }
        return j13;
    }

    private void f(int i10) {
        this.f57295e = Math.min(this.f57295e, i10);
    }

    private boolean s(long j10, long j11, long j12) {
        if (this.f57299i != -9223372036854775807L && !this.f57300j) {
            return false;
        }
        int i10 = this.f57295e;
        if (i10 != 0) {
            if (i10 == 1) {
                return true;
            }
            if (i10 != 2) {
                if (i10 == 3) {
                    long S0 = m0.S0(this.f57302l.elapsedRealtime()) - this.f57297g;
                    if (!this.f57294d || !this.f57291a.p(j11, S0)) {
                        return false;
                    }
                    return true;
                }
                throw new IllegalStateException();
            } else if (j10 < j12) {
                return false;
            } else {
                return true;
            }
        }
        return this.f57294d;
    }

    public void a() {
        if (this.f57295e == 0) {
            this.f57295e = 1;
        }
    }

    public int c(long j10, long j11, long j12, long j13, boolean z10, boolean z11, a aVar) throws ExoPlaybackException {
        aVar.h();
        if (this.f57296f == -9223372036854775807L) {
            this.f57296f = j11;
        }
        if (this.f57298h != j10) {
            this.f57292b.h(j10);
            this.f57298h = j10;
        }
        aVar.f57305a = b(j11, j12, j10);
        if (z10 && !z11) {
            return 3;
        }
        if (!this.f57303m) {
            this.f57304n = true;
            if (this.f57291a.y(aVar.f57305a, j11, j12, z11, true)) {
                return 4;
            }
            if (this.f57294d && aVar.f57305a < 30000) {
                return 3;
            }
            return 5;
        }
        boolean z12 = false;
        if (s(j11, aVar.f57305a, j13)) {
            return 0;
        }
        if (!this.f57294d || j11 == this.f57296f) {
            return 5;
        }
        long nanoTime = this.f57302l.nanoTime();
        aVar.f57306b = this.f57292b.b((aVar.f57305a * 1000) + nanoTime);
        aVar.f57305a = (aVar.f57306b - nanoTime) / 1000;
        if (this.f57299i != -9223372036854775807L && !this.f57300j) {
            z12 = true;
        }
        if (this.f57291a.y(aVar.f57305a, j11, j12, z11, z12)) {
            return 4;
        }
        if (this.f57291a.s(aVar.f57305a, j12, z11)) {
            if (z12) {
                return 3;
            }
            return 2;
        } else if (aVar.f57305a > ServiceProvider.SCAR_SIGNALS_FETCH_TIMEOUT) {
            return 5;
        } else {
            return 1;
        }
    }

    public boolean d(boolean z10) {
        if (z10 && (this.f57295e == 3 || (!this.f57303m && this.f57304n))) {
            this.f57299i = -9223372036854775807L;
            return true;
        } else if (this.f57299i == -9223372036854775807L) {
            return false;
        } else {
            if (this.f57302l.elapsedRealtime() < this.f57299i) {
                return true;
            }
            this.f57299i = -9223372036854775807L;
            return false;
        }
    }

    public void e(boolean z10) {
        long j10;
        this.f57300j = z10;
        if (this.f57293c > 0) {
            j10 = this.f57302l.elapsedRealtime() + this.f57293c;
        } else {
            j10 = -9223372036854775807L;
        }
        this.f57299i = j10;
    }

    public void g() {
        f(0);
    }

    public void h(boolean z10) {
        this.f57295e = z10 ? 1 : 0;
    }

    public boolean i() {
        boolean z10;
        if (this.f57295e != 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f57295e = 3;
        this.f57297g = m0.S0(this.f57302l.elapsedRealtime());
        return z10;
    }

    public void j() {
        f(2);
    }

    public void k() {
        this.f57294d = true;
        this.f57297g = m0.S0(this.f57302l.elapsedRealtime());
        this.f57292b.k();
    }

    public void l() {
        this.f57294d = false;
        this.f57299i = -9223372036854775807L;
        this.f57292b.l();
    }

    public void m() {
        this.f57292b.j();
        this.f57298h = -9223372036854775807L;
        this.f57296f = -9223372036854775807L;
        f(1);
        this.f57299i = -9223372036854775807L;
    }

    public void n(int i10) {
        this.f57292b.o(i10);
    }

    public void o(cn.h hVar) {
        this.f57302l = hVar;
    }

    public void p(float f10) {
        this.f57292b.g(f10);
    }

    public void q(@Nullable Surface surface) {
        boolean z10;
        if (surface != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f57303m = z10;
        this.f57304n = false;
        this.f57292b.m(surface);
        f(1);
    }

    public void r(@FloatRange(from = 0.0d, fromInclusive = false) float f10) {
        boolean z10;
        if (f10 > 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.a(z10);
        if (f10 == this.f57301k) {
            return;
        }
        this.f57301k = f10;
        this.f57292b.i(f10);
    }
}
