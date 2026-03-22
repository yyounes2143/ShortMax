package com.mbridge.msdk.thrid.okhttp.internal.http2;

import androidx.collection.SieveCacheKt;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.thrid.okhttp.internal.http2.d;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: Http2Writer.java */
/* loaded from: classes6.dex */
final class j implements Closeable {

    /* renamed from: g  reason: collision with root package name */
    private static final Logger f29902g = Logger.getLogger(e.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okio.d f29903a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f29904b;

    /* renamed from: c  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okio.c f29905c;

    /* renamed from: d  reason: collision with root package name */
    private int f29906d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f29907e;

    /* renamed from: f  reason: collision with root package name */
    final d.b f29908f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(com.mbridge.msdk.thrid.okio.d dVar, boolean z10) {
        this.f29903a = dVar;
        this.f29904b = z10;
        com.mbridge.msdk.thrid.okio.c cVar = new com.mbridge.msdk.thrid.okio.c();
        this.f29905c = cVar;
        this.f29908f = new d.b(cVar);
        this.f29906d = 16384;
    }

    public synchronized void a(m mVar) throws IOException {
        try {
            if (!this.f29907e) {
                this.f29906d = mVar.c(this.f29906d);
                if (mVar.b() != -1) {
                    this.f29908f.b(mVar.b());
                }
                a(0, 0, (byte) 4, (byte) 1);
                this.f29903a.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void b(m mVar) throws IOException {
        try {
            if (!this.f29907e) {
                int i10 = 0;
                a(0, mVar.d() * 6, (byte) 4, (byte) 0);
                while (i10 < 10) {
                    if (mVar.d(i10)) {
                        this.f29903a.writeShort(i10 == 4 ? 3 : i10 == 7 ? 4 : i10);
                        this.f29903a.writeInt(mVar.a(i10));
                    }
                    i10++;
                }
                this.f29903a.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f29907e = true;
        this.f29903a.close();
    }

    public synchronized void d() throws IOException {
        try {
            if (!this.f29907e) {
                if (!this.f29904b) {
                    return;
                }
                Logger logger = f29902g;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(com.mbridge.msdk.thrid.okhttp.internal.c.a(">> CONNECTION %s", e.f29782a.b()));
                }
                this.f29903a.write(e.f29782a.g());
                this.f29903a.flush();
                return;
            }
            throw new IOException("closed");
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void flush() throws IOException {
        if (!this.f29907e) {
            this.f29903a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public int h() {
        return this.f29906d;
    }

    public synchronized void a(int i10, int i11, List<c> list) throws IOException {
        if (!this.f29907e) {
            this.f29908f.a(list);
            long size = this.f29905c.size();
            int min = (int) Math.min(this.f29906d - 4, size);
            long j10 = min;
            int i12 = (size > j10 ? 1 : (size == j10 ? 0 : -1));
            a(i10, min + 4, (byte) 5, i12 == 0 ? (byte) 4 : (byte) 0);
            this.f29903a.writeInt(i11 & Integer.MAX_VALUE);
            this.f29903a.a(this.f29905c, j10);
            if (i12 > 0) {
                b(i10, size - j10);
            }
        } else {
            throw new IOException("closed");
        }
    }

    private void b(int i10, long j10) throws IOException {
        while (j10 > 0) {
            int min = (int) Math.min(this.f29906d, j10);
            long j11 = min;
            j10 -= j11;
            a(i10, min, (byte) 9, j10 == 0 ? (byte) 4 : (byte) 0);
            this.f29903a.a(this.f29905c, j11);
        }
    }

    public synchronized void a(boolean z10, int i10, int i11, List<c> list) throws IOException {
        if (!this.f29907e) {
            a(z10, i10, list);
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i10, b bVar) throws IOException {
        if (!this.f29907e) {
            if (bVar.f29752a != -1) {
                a(i10, 4, (byte) 3, (byte) 0);
                this.f29903a.writeInt(bVar.f29752a);
                this.f29903a.flush();
            } else {
                throw new IllegalArgumentException();
            }
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(boolean z10, int i10, com.mbridge.msdk.thrid.okio.c cVar, int i11) throws IOException {
        if (!this.f29907e) {
            a(i10, z10 ? (byte) 1 : (byte) 0, cVar, i11);
        } else {
            throw new IOException("closed");
        }
    }

    void a(int i10, byte b10, com.mbridge.msdk.thrid.okio.c cVar, int i11) throws IOException {
        a(i10, i11, (byte) 0, b10);
        if (i11 > 0) {
            this.f29903a.a(cVar, i11);
        }
    }

    public synchronized void a(boolean z10, int i10, int i11) throws IOException {
        if (!this.f29907e) {
            a(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
            this.f29903a.writeInt(i10);
            this.f29903a.writeInt(i11);
            this.f29903a.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public synchronized void a(int i10, b bVar, byte[] bArr) throws IOException {
        try {
            if (!this.f29907e) {
                if (bVar.f29752a != -1) {
                    a(0, bArr.length + 8, (byte) 7, (byte) 0);
                    this.f29903a.writeInt(i10);
                    this.f29903a.writeInt(bVar.f29752a);
                    if (bArr.length > 0) {
                        this.f29903a.write(bArr);
                    }
                    this.f29903a.flush();
                } else {
                    throw e.a("errorCode.httpCode == -1", new Object[0]);
                }
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void a(int i10, long j10) throws IOException {
        if (this.f29907e) {
            throw new IOException("closed");
        }
        if (j10 != 0 && j10 <= SieveCacheKt.NodeLinkMask) {
            a(i10, 4, (byte) 8, (byte) 0);
            this.f29903a.writeInt((int) j10);
            this.f29903a.flush();
        } else {
            throw e.a("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j10));
        }
    }

    public void a(int i10, int i11, byte b10, byte b11) throws IOException {
        Logger logger = f29902g;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(e.a(false, i10, i11, b10, b11));
        }
        int i12 = this.f29906d;
        if (i11 > i12) {
            throw e.a("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i12), Integer.valueOf(i11));
        }
        if ((Integer.MIN_VALUE & i10) == 0) {
            a(this.f29903a, i11);
            this.f29903a.writeByte(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            this.f29903a.writeByte(b11 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            this.f29903a.writeInt(i10 & Integer.MAX_VALUE);
            return;
        }
        throw e.a("reserved bit set: %s", Integer.valueOf(i10));
    }

    private static void a(com.mbridge.msdk.thrid.okio.d dVar, int i10) throws IOException {
        dVar.writeByte((i10 >>> 16) & 255);
        dVar.writeByte((i10 >>> 8) & 255);
        dVar.writeByte(i10 & 255);
    }

    void a(boolean z10, int i10, List<c> list) throws IOException {
        if (!this.f29907e) {
            this.f29908f.a(list);
            long size = this.f29905c.size();
            int min = (int) Math.min(this.f29906d, size);
            long j10 = min;
            int i11 = (size > j10 ? 1 : (size == j10 ? 0 : -1));
            byte b10 = i11 == 0 ? (byte) 4 : (byte) 0;
            if (z10) {
                b10 = (byte) (b10 | 1);
            }
            a(i10, min, (byte) 1, b10);
            this.f29903a.a(this.f29905c, j10);
            if (i11 > 0) {
                b(i10, size - j10);
                return;
            }
            return;
        }
        throw new IOException("closed");
    }
}
