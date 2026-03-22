package qn;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import cn.m0;
import gn.c0;
import io.bidmachine.media3.exoplayer.h;
import io.bidmachine.media3.exoplayer.i2;
import io.bidmachine.media3.exoplayer.source.r;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import zm.t;
/* compiled from: MetadataRenderer.java */
/* loaded from: classes8.dex */
public final class c extends h implements Handler.Callback {
    @Nullable
    private t A;
    private long B;

    /* renamed from: r  reason: collision with root package name */
    private final a f65377r;

    /* renamed from: s  reason: collision with root package name */
    private final b f65378s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private final Handler f65379t;

    /* renamed from: u  reason: collision with root package name */
    private final ko.b f65380u;

    /* renamed from: v  reason: collision with root package name */
    private final boolean f65381v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private ko.a f65382w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f65383x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f65384y;

    /* renamed from: z  reason: collision with root package name */
    private long f65385z;

    public c(b bVar, @Nullable Looper looper) {
        this(bVar, looper, a.f65376a);
    }

    private void b0(t tVar, List<t.a> list) {
        for (int i10 = 0; i10 < tVar.e(); i10++) {
            io.bidmachine.media3.common.a r10 = tVar.d(i10).r();
            if (r10 != null && this.f65377r.a(r10)) {
                ko.a b10 = this.f65377r.b(r10);
                byte[] bArr = (byte[]) cn.a.e(tVar.d(i10).q());
                this.f65380u.b();
                this.f65380u.m(bArr.length);
                ((ByteBuffer) m0.i(this.f65380u.f55345d)).put(bArr);
                this.f65380u.n();
                t a10 = b10.a(this.f65380u);
                if (a10 != null) {
                    b0(a10, list);
                }
            } else {
                list.add(tVar.d(i10));
            }
        }
    }

    private long c0(long j10) {
        boolean z10;
        boolean z11 = false;
        if (j10 != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        cn.a.g(z10);
        if (this.B != -9223372036854775807L) {
            z11 = true;
        }
        cn.a.g(z11);
        return j10 - this.B;
    }

    private void d0(t tVar) {
        Handler handler = this.f65379t;
        if (handler != null) {
            handler.obtainMessage(1, tVar).sendToTarget();
        } else {
            e0(tVar);
        }
    }

    private void e0(t tVar) {
        this.f65378s.v(tVar);
    }

    private boolean f0(long j10) {
        boolean z10;
        t tVar = this.A;
        if (tVar != null && (this.f65381v || tVar.f72197b <= c0(j10))) {
            d0(this.A);
            this.A = null;
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f65383x && this.A == null) {
            this.f65384y = true;
        }
        return z10;
    }

    private void g0() {
        if (!this.f65383x && this.A == null) {
            this.f65380u.b();
            c0 F = F();
            int Y = Y(F, this.f65380u, 0);
            if (Y == -4) {
                if (this.f65380u.f()) {
                    this.f65383x = true;
                } else if (this.f65380u.f55347f >= H()) {
                    ko.b bVar = this.f65380u;
                    bVar.f60897j = this.f65385z;
                    bVar.n();
                    t a10 = ((ko.a) m0.i(this.f65382w)).a(this.f65380u);
                    if (a10 != null) {
                        ArrayList arrayList = new ArrayList(a10.e());
                        b0(a10, arrayList);
                        if (!arrayList.isEmpty()) {
                            this.A = new t(c0(this.f65380u.f55347f), arrayList);
                        }
                    }
                }
            } else if (Y == -5) {
                this.f65385z = ((io.bidmachine.media3.common.a) cn.a.e(F.f52440b)).f55179t;
            }
        }
    }

    @Override // io.bidmachine.media3.exoplayer.h
    protected void N() {
        this.A = null;
        this.f65382w = null;
        this.B = -9223372036854775807L;
    }

    @Override // io.bidmachine.media3.exoplayer.h
    protected void Q(long j10, boolean z10) {
        this.A = null;
        this.f65383x = false;
        this.f65384y = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.media3.exoplayer.h
    public void W(io.bidmachine.media3.common.a[] aVarArr, long j10, long j11, r.b bVar) {
        this.f65382w = this.f65377r.b(aVarArr[0]);
        t tVar = this.A;
        if (tVar != null) {
            this.A = tVar.c((tVar.f72197b + this.B) - j11);
        }
        this.B = j11;
    }

    @Override // io.bidmachine.media3.exoplayer.i2
    public int a(io.bidmachine.media3.common.a aVar) {
        int i10;
        if (this.f65377r.a(aVar)) {
            if (aVar.N == 0) {
                i10 = 4;
            } else {
                i10 = 2;
            }
            return i2.k(i10);
        }
        return i2.k(0);
    }

    @Override // io.bidmachine.media3.exoplayer.h2, io.bidmachine.media3.exoplayer.i2
    public String getName() {
        return "MetadataRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 1) {
            e0((t) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public boolean isEnded() {
        return this.f65384y;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public boolean isReady() {
        return true;
    }

    @Override // io.bidmachine.media3.exoplayer.h2
    public void render(long j10, long j11) {
        boolean z10 = true;
        while (z10) {
            g0();
            z10 = f0(j10);
        }
    }

    public c(b bVar, @Nullable Looper looper, a aVar) {
        this(bVar, looper, aVar, false);
    }

    public c(b bVar, @Nullable Looper looper, a aVar, boolean z10) {
        super(5);
        this.f65378s = (b) cn.a.e(bVar);
        this.f65379t = looper == null ? null : m0.z(looper, this);
        this.f65377r = (a) cn.a.e(aVar);
        this.f65381v = z10;
        this.f65380u = new ko.b();
        this.B = -9223372036854775807L;
    }
}
