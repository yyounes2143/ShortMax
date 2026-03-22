package com.mbridge.msdk.thrid.okhttp.internal.http2;

import androidx.collection.SieveCacheKt;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.thrid.okhttp.internal.http2.d;
import com.mbridge.msdk.thrid.okio.s;
import com.mbridge.msdk.thrid.okio.t;
import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Http2Reader.java */
/* loaded from: classes6.dex */
public final class h implements Closeable {

    /* renamed from: e  reason: collision with root package name */
    static final Logger f29866e = Logger.getLogger(e.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final com.mbridge.msdk.thrid.okio.e f29867a;

    /* renamed from: b  reason: collision with root package name */
    private final a f29868b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f29869c;

    /* renamed from: d  reason: collision with root package name */
    final d.a f29870d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Reader.java */
    /* loaded from: classes6.dex */
    public interface b {
        void a();

        void a(int i10, int i11, int i12, boolean z10);

        void a(int i10, int i11, List<c> list) throws IOException;

        void a(int i10, long j10);

        void a(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar);

        void a(int i10, com.mbridge.msdk.thrid.okhttp.internal.http2.b bVar, com.mbridge.msdk.thrid.okio.f fVar);

        void a(boolean z10, int i10, int i11);

        void a(boolean z10, int i10, int i11, List<c> list);

        void a(boolean z10, int i10, com.mbridge.msdk.thrid.okio.e eVar, int i11) throws IOException;

        void a(boolean z10, m mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(com.mbridge.msdk.thrid.okio.e eVar, boolean z10) {
        this.f29867a = eVar;
        this.f29869c = z10;
        a aVar = new a(eVar);
        this.f29868b = aVar;
        this.f29870d = new d.a(4096, aVar);
    }

    private void b(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 >= 8) {
            if (i11 == 0) {
                int readInt = this.f29867a.readInt();
                int readInt2 = this.f29867a.readInt();
                int i12 = i10 - 8;
                com.mbridge.msdk.thrid.okhttp.internal.http2.b a10 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.a(readInt2);
                if (a10 != null) {
                    com.mbridge.msdk.thrid.okio.f fVar = com.mbridge.msdk.thrid.okio.f.f30135e;
                    if (i12 > 0) {
                        fVar = this.f29867a.b(i12);
                    }
                    bVar.a(readInt, a10, fVar);
                    return;
                }
                throw e.b("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            }
            throw e.b("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        throw e.b("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i10));
    }

    private void c(b bVar, int i10, byte b10, int i11) throws IOException {
        boolean z10;
        short s10 = 0;
        if (i11 != 0) {
            if ((b10 & 1) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if ((b10 & 8) != 0) {
                s10 = (short) (this.f29867a.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            }
            if ((b10 & 32) != 0) {
                a(bVar, i11);
                i10 -= 5;
            }
            bVar.a(z10, i11, -1, a(a(i10, b10, s10), s10, b10, i11));
            return;
        }
        throw e.b("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
    }

    private void d(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 == 8) {
            boolean z10 = false;
            if (i11 == 0) {
                int readInt = this.f29867a.readInt();
                int readInt2 = this.f29867a.readInt();
                if ((b10 & 1) != 0) {
                    z10 = true;
                }
                bVar.a(z10, readInt, readInt2);
                return;
            }
            throw e.b("TYPE_PING streamId != 0", new Object[0]);
        }
        throw e.b("TYPE_PING length != 8: %s", Integer.valueOf(i10));
    }

    private void e(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 == 5) {
            if (i11 != 0) {
                a(bVar, i11);
                return;
            }
            throw e.b("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        throw e.b("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i10));
    }

    private void f(b bVar, int i10, byte b10, int i11) throws IOException {
        short s10 = 0;
        if (i11 != 0) {
            if ((b10 & 8) != 0) {
                s10 = (short) (this.f29867a.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            }
            bVar.a(i11, this.f29867a.readInt() & Integer.MAX_VALUE, a(a(i10 - 4, b10, s10), s10, b10, i11));
            return;
        }
        throw e.b("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
    }

    private void g(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 == 4) {
            if (i11 != 0) {
                int readInt = this.f29867a.readInt();
                com.mbridge.msdk.thrid.okhttp.internal.http2.b a10 = com.mbridge.msdk.thrid.okhttp.internal.http2.b.a(readInt);
                if (a10 != null) {
                    bVar.a(i11, a10);
                    return;
                }
                throw e.b("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
            }
            throw e.b("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        throw e.b("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i10));
    }

    private void h(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            if ((b10 & 1) != 0) {
                if (i10 == 0) {
                    bVar.a();
                    return;
                }
                throw e.b("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            } else if (i10 % 6 == 0) {
                m mVar = new m();
                for (int i12 = 0; i12 < i10; i12 += 6) {
                    int readShort = this.f29867a.readShort() & 65535;
                    int readInt = this.f29867a.readInt();
                    if (readShort != 2) {
                        if (readShort != 3) {
                            if (readShort != 4) {
                                if (readShort == 5 && (readInt < 16384 || readInt > 16777215)) {
                                    throw e.b("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                                }
                            } else if (readInt >= 0) {
                                readShort = 7;
                            } else {
                                throw e.b("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                            }
                        } else {
                            readShort = 4;
                        }
                    } else if (readInt != 0 && readInt != 1) {
                        throw e.b("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                    }
                    mVar.a(readShort, readInt);
                }
                bVar.a(false, mVar);
                return;
            } else {
                throw e.b("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i10));
            }
        }
        throw e.b("TYPE_SETTINGS streamId != 0", new Object[0]);
    }

    private void i(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 == 4) {
            long readInt = this.f29867a.readInt() & SieveCacheKt.NodeLinkMask;
            if (readInt != 0) {
                bVar.a(i11, readInt);
                return;
            }
            throw e.b("windowSizeIncrement was 0", Long.valueOf(readInt));
        }
        throw e.b("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i10));
    }

    public void a(b bVar) throws IOException {
        if (this.f29869c) {
            if (!a(true, bVar)) {
                throw e.b("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        com.mbridge.msdk.thrid.okio.e eVar = this.f29867a;
        com.mbridge.msdk.thrid.okio.f fVar = e.f29782a;
        com.mbridge.msdk.thrid.okio.f b10 = eVar.b(fVar.e());
        Logger logger = f29866e;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(com.mbridge.msdk.thrid.okhttp.internal.c.a("<< CONNECTION %s", b10.b()));
        }
        if (!fVar.equals(b10)) {
            throw e.b("Expected a connection header but was %s", b10.h());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f29867a.close();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Http2Reader.java */
    /* loaded from: classes6.dex */
    public static final class a implements s {

        /* renamed from: a  reason: collision with root package name */
        private final com.mbridge.msdk.thrid.okio.e f29871a;

        /* renamed from: b  reason: collision with root package name */
        int f29872b;

        /* renamed from: c  reason: collision with root package name */
        byte f29873c;

        /* renamed from: d  reason: collision with root package name */
        int f29874d;

        /* renamed from: e  reason: collision with root package name */
        int f29875e;

        /* renamed from: f  reason: collision with root package name */
        short f29876f;

        a(com.mbridge.msdk.thrid.okio.e eVar) {
            this.f29871a = eVar;
        }

        private void d() throws IOException {
            int i10 = this.f29874d;
            int a10 = h.a(this.f29871a);
            this.f29875e = a10;
            this.f29872b = a10;
            byte readByte = (byte) (this.f29871a.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            this.f29873c = (byte) (this.f29871a.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
            Logger logger = h.f29866e;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(e.a(true, this.f29874d, this.f29872b, readByte, this.f29873c));
            }
            int readInt = this.f29871a.readInt() & Integer.MAX_VALUE;
            this.f29874d = readInt;
            if (readByte == 9) {
                if (readInt == i10) {
                    return;
                }
                throw e.b("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
            throw e.b("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            while (true) {
                int i10 = this.f29875e;
                if (i10 == 0) {
                    this.f29871a.skip(this.f29876f);
                    this.f29876f = (short) 0;
                    if ((this.f29873c & 4) != 0) {
                        return -1L;
                    }
                    d();
                } else {
                    long b10 = this.f29871a.b(cVar, Math.min(j10, i10));
                    if (b10 == -1) {
                        return -1L;
                    }
                    this.f29875e = (int) (this.f29875e - b10);
                    return b10;
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public t b() {
            return this.f29871a.b();
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }
    }

    public boolean a(boolean z10, b bVar) throws IOException {
        try {
            this.f29867a.e(9L);
            int a10 = a(this.f29867a);
            if (a10 >= 0 && a10 <= 16384) {
                byte readByte = (byte) (this.f29867a.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                if (z10 && readByte != 4) {
                    throw e.b("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
                }
                byte readByte2 = (byte) (this.f29867a.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
                int readInt = this.f29867a.readInt() & Integer.MAX_VALUE;
                Logger logger = f29866e;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(e.a(true, readInt, a10, readByte, readByte2));
                }
                switch (readByte) {
                    case 0:
                        a(bVar, a10, readByte2, readInt);
                        break;
                    case 1:
                        c(bVar, a10, readByte2, readInt);
                        break;
                    case 2:
                        e(bVar, a10, readByte2, readInt);
                        break;
                    case 3:
                        g(bVar, a10, readByte2, readInt);
                        break;
                    case 4:
                        h(bVar, a10, readByte2, readInt);
                        break;
                    case 5:
                        f(bVar, a10, readByte2, readInt);
                        break;
                    case 6:
                        d(bVar, a10, readByte2, readInt);
                        break;
                    case 7:
                        b(bVar, a10, readByte2, readInt);
                        break;
                    case 8:
                        i(bVar, a10, readByte2, readInt);
                        break;
                    default:
                        this.f29867a.skip(a10);
                        break;
                }
                return true;
            }
            throw e.b("FRAME_SIZE_ERROR: %s", Integer.valueOf(a10));
        } catch (IOException unused) {
            return false;
        }
    }

    private List<c> a(int i10, short s10, byte b10, int i11) throws IOException {
        a aVar = this.f29868b;
        aVar.f29875e = i10;
        aVar.f29872b = i10;
        aVar.f29876f = s10;
        aVar.f29873c = b10;
        aVar.f29874d = i11;
        this.f29870d.f();
        return this.f29870d.c();
    }

    private void a(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw e.b("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z10 = (b10 & 1) != 0;
        if ((b10 & 32) == 0) {
            short readByte = (b10 & 8) != 0 ? (short) (this.f29867a.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) : (short) 0;
            bVar.a(z10, i11, this.f29867a, a(i10, b10, readByte));
            this.f29867a.skip(readByte);
            return;
        }
        throw e.b("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
    }

    private void a(b bVar, int i10) throws IOException {
        int readInt = this.f29867a.readInt();
        bVar.a(i10, readInt & Integer.MAX_VALUE, (this.f29867a.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) + 1, (Integer.MIN_VALUE & readInt) != 0);
    }

    static int a(com.mbridge.msdk.thrid.okio.e eVar) throws IOException {
        return (eVar.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | ((eVar.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) | ((eVar.readByte() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8);
    }

    static int a(int i10, byte b10, short s10) throws IOException {
        if ((b10 & 8) != 0) {
            i10--;
        }
        if (s10 <= i10) {
            return (short) (i10 - s10);
        }
        throw e.b("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s10), Integer.valueOf(i10));
    }
}
