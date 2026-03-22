package com.mbridge.msdk.thrid.okio;

import java.io.IOException;
import java.nio.ByteBuffer;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealBufferedSink.java */
/* loaded from: classes6.dex */
public final class m implements d {

    /* renamed from: a  reason: collision with root package name */
    public final c f30157a = new c();

    /* renamed from: b  reason: collision with root package name */
    public final r f30158b;

    /* renamed from: c  reason: collision with root package name */
    boolean f30159c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(r rVar) {
        if (rVar != null) {
            this.f30158b = rVar;
            return;
        }
        throw new NullPointerException("sink == null");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public c a() {
        return this.f30157a;
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public t b() {
        return this.f30158b.b();
    }

    @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f30159c) {
            return;
        }
        try {
            c cVar = this.f30157a;
            long j10 = cVar.f30132b;
            if (j10 > 0) {
                this.f30158b.a(cVar, j10);
            }
            th = null;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f30158b.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f30159c = true;
        if (th != null) {
            u.a(th);
        }
    }

    public d d() throws IOException {
        if (!this.f30159c) {
            long m10 = this.f30157a.m();
            if (m10 > 0) {
                this.f30158b.a(this.f30157a, m10);
            }
            return this;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d, com.mbridge.msdk.thrid.okio.r, java.io.Flushable
    public void flush() throws IOException {
        if (!this.f30159c) {
            c cVar = this.f30157a;
            long j10 = cVar.f30132b;
            if (j10 > 0) {
                this.f30158b.a(cVar, j10);
            }
            this.f30158b.flush();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f30159c;
    }

    public String toString() {
        return "buffer(" + this.f30158b + ")";
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d write(byte[] bArr) throws IOException {
        if (!this.f30159c) {
            this.f30157a.write(bArr);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d writeByte(int i10) throws IOException {
        if (!this.f30159c) {
            this.f30157a.writeByte(i10);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d writeInt(int i10) throws IOException {
        if (!this.f30159c) {
            this.f30157a.writeInt(i10);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d writeShort(int i10) throws IOException {
        if (!this.f30159c) {
            this.f30157a.writeShort(i10);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.r
    public void a(c cVar, long j10) throws IOException {
        if (!this.f30159c) {
            this.f30157a.a(cVar, j10);
            d();
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d write(byte[] bArr, int i10, int i11) throws IOException {
        if (!this.f30159c) {
            this.f30157a.write(bArr, i10, i11);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d a(String str) throws IOException {
        if (!this.f30159c) {
            this.f30157a.a(str);
            return d();
        }
        throw new IllegalStateException("closed");
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (!this.f30159c) {
            int write = this.f30157a.write(byteBuffer);
            d();
            return write;
        }
        throw new IllegalStateException("closed");
    }

    @Override // com.mbridge.msdk.thrid.okio.d
    public d a(long j10) throws IOException {
        if (!this.f30159c) {
            this.f30157a.a(j10);
            return d();
        }
        throw new IllegalStateException("closed");
    }
}
