package com.google.android.exoplayer2.metadata;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.Nullable;
import b7.s0;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.v0;
import g6.b;
import g6.c;
import g6.d;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import o5.b0;
import o5.o0;
/* compiled from: MetadataRenderer.java */
/* loaded from: classes4.dex */
public final class a extends f implements Handler.Callback {

    /* renamed from: n  reason: collision with root package name */
    private final b f17992n;

    /* renamed from: o  reason: collision with root package name */
    private final d f17993o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private final Handler f17994p;

    /* renamed from: q  reason: collision with root package name */
    private final c f17995q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f17996r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private g6.a f17997s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f17998t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f17999u;

    /* renamed from: v  reason: collision with root package name */
    private long f18000v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private Metadata f18001w;

    /* renamed from: x  reason: collision with root package name */
    private long f18002x;

    public a(d dVar, @Nullable Looper looper) {
        this(dVar, looper, b.f52213a);
    }

    private void H(Metadata metadata, List<Metadata.Entry> list) {
        for (int i10 = 0; i10 < metadata.e(); i10++) {
            v0 r10 = metadata.d(i10).r();
            if (r10 != null && this.f17992n.a(r10)) {
                g6.a b10 = this.f17992n.b(r10);
                byte[] bArr = (byte[]) b7.a.e(metadata.d(i10).q());
                this.f17995q.b();
                this.f17995q.m(bArr.length);
                ((ByteBuffer) s0.j(this.f17995q.f17473c)).put(bArr);
                this.f17995q.n();
                Metadata a10 = b10.a(this.f17995q);
                if (a10 != null) {
                    H(a10, list);
                }
            } else {
                list.add(metadata.d(i10));
            }
        }
    }

    private long I(long j10) {
        boolean z10;
        boolean z11 = false;
        if (j10 != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        b7.a.g(z10);
        if (this.f18002x != -9223372036854775807L) {
            z11 = true;
        }
        b7.a.g(z11);
        return j10 - this.f18002x;
    }

    private void J(Metadata metadata) {
        Handler handler = this.f17994p;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            K(metadata);
        }
    }

    private void K(Metadata metadata) {
        this.f17993o.C(metadata);
    }

    private boolean L(long j10) {
        boolean z10;
        Metadata metadata = this.f18001w;
        if (metadata != null && (this.f17996r || metadata.f17991b <= I(j10))) {
            J(this.f18001w);
            this.f18001w = null;
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f17998t && this.f18001w == null) {
            this.f17999u = true;
        }
        return z10;
    }

    private void M() {
        if (!this.f17998t && this.f18001w == null) {
            this.f17995q.b();
            b0 s10 = s();
            int E = E(s10, this.f17995q, 0);
            if (E == -4) {
                if (this.f17995q.h()) {
                    this.f17998t = true;
                    return;
                }
                c cVar = this.f17995q;
                cVar.f52214i = this.f18000v;
                cVar.n();
                Metadata a10 = ((g6.a) s0.j(this.f17997s)).a(this.f17995q);
                if (a10 != null) {
                    ArrayList arrayList = new ArrayList(a10.e());
                    H(a10, arrayList);
                    if (!arrayList.isEmpty()) {
                        this.f18001w = new Metadata(I(this.f17995q.f17475e), arrayList);
                    }
                }
            } else if (E == -5) {
                this.f18000v = ((v0) b7.a.e(s10.f63093b)).f19161p;
            }
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void D(v0[] v0VarArr, long j10, long j11) {
        this.f17997s = this.f17992n.b(v0VarArr[0]);
        Metadata metadata = this.f18001w;
        if (metadata != null) {
            this.f18001w = metadata.c((metadata.f17991b + this.f18002x) - j11);
        }
        this.f18002x = j11;
    }

    @Override // o5.o0
    public int a(v0 v0Var) {
        int i10;
        if (this.f17992n.a(v0Var)) {
            if (v0Var.E == 0) {
                i10 = 4;
            } else {
                i10 = 2;
            }
            return o0.k(i10);
        }
        return o0.k(0);
    }

    @Override // com.google.android.exoplayer2.p1, o5.o0
    public String getName() {
        return "MetadataRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            K((Metadata) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.p1
    public boolean isEnded() {
        return this.f17999u;
    }

    @Override // com.google.android.exoplayer2.p1
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.p1
    public void render(long j10, long j11) {
        boolean z10 = true;
        while (z10) {
            M();
            z10 = L(j10);
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void x() {
        this.f18001w = null;
        this.f17997s = null;
        this.f18002x = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.f
    protected void z(long j10, boolean z10) {
        this.f18001w = null;
        this.f17998t = false;
        this.f17999u = false;
    }

    public a(d dVar, @Nullable Looper looper, b bVar) {
        this(dVar, looper, bVar, false);
    }

    public a(d dVar, @Nullable Looper looper, b bVar, boolean z10) {
        super(5);
        this.f17993o = (d) b7.a.e(dVar);
        this.f17994p = looper == null ? null : s0.t(looper, this);
        this.f17992n = (b) b7.a.e(bVar);
        this.f17996r = z10;
        this.f17995q = new c();
        this.f18002x = -9223372036854775807L;
    }
}
