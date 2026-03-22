package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* compiled from: Okio.java */
/* loaded from: classes6.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f30151a = Logger.getLogger(l.class.getName());

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Okio.java */
    /* loaded from: classes6.dex */
    public static class a implements r {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ t f30152a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ OutputStream f30153b;

        a(t tVar, OutputStream outputStream) {
            this.f30152a = tVar;
            this.f30153b = outputStream;
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public void a(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            u.a(cVar.f30132b, 0L, j10);
            while (j10 > 0) {
                this.f30152a.e();
                o oVar = cVar.f30131a;
                int min = (int) Math.min(j10, oVar.f30166c - oVar.f30165b);
                this.f30153b.write(oVar.f30164a, oVar.f30165b, min);
                int i10 = oVar.f30165b + min;
                oVar.f30165b = i10;
                long j11 = min;
                j10 -= j11;
                cVar.f30132b -= j11;
                if (i10 == oVar.f30166c) {
                    cVar.f30131a = oVar.b();
                    p.a(oVar);
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.r
        public t b() {
            return this.f30152a;
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f30153b.close();
        }

        @Override // com.mbridge.msdk.thrid.okio.r, java.io.Flushable
        public void flush() throws IOException {
            this.f30153b.flush();
        }

        public String toString() {
            return "sink(" + this.f30153b + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Okio.java */
    /* loaded from: classes6.dex */
    public static class c extends com.mbridge.msdk.thrid.okio.a {

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ Socket f30156k;

        c(Socket socket) {
            this.f30156k = socket;
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        protected IOException b(@Nullable IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // com.mbridge.msdk.thrid.okio.a
        protected void j() {
            try {
                this.f30156k.close();
            } catch (AssertionError e10) {
                if (l.a(e10)) {
                    Logger logger = l.f30151a;
                    Level level = Level.WARNING;
                    logger.log(level, "Failed to close timed out socket " + this.f30156k, (Throwable) e10);
                    return;
                }
                throw e10;
            } catch (Exception e11) {
                Logger logger2 = l.f30151a;
                Level level2 = Level.WARNING;
                logger2.log(level2, "Failed to close timed out socket " + this.f30156k, (Throwable) e11);
            }
        }
    }

    private l() {
    }

    public static e a(s sVar) {
        return new n(sVar);
    }

    public static s b(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getInputStream() != null) {
                com.mbridge.msdk.thrid.okio.a c10 = c(socket);
                return c10.a(a(socket.getInputStream(), c10));
            }
            throw new IOException("socket's input stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    private static com.mbridge.msdk.thrid.okio.a c(Socket socket) {
        return new c(socket);
    }

    public static d a(r rVar) {
        return new m(rVar);
    }

    private static r a(OutputStream outputStream, t tVar) {
        if (outputStream != null) {
            if (tVar != null) {
                return new a(tVar, outputStream);
            }
            throw new IllegalArgumentException("timeout == null");
        }
        throw new IllegalArgumentException("out == null");
    }

    public static r a(Socket socket) throws IOException {
        if (socket != null) {
            if (socket.getOutputStream() != null) {
                com.mbridge.msdk.thrid.okio.a c10 = c(socket);
                return c10.a(a(socket.getOutputStream(), c10));
            }
            throw new IOException("socket's output stream == null");
        }
        throw new IllegalArgumentException("socket == null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Okio.java */
    /* loaded from: classes6.dex */
    public static class b implements s {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ t f30154a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ InputStream f30155b;

        b(t tVar, InputStream inputStream) {
            this.f30154a = tVar;
            this.f30155b = inputStream;
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public long b(com.mbridge.msdk.thrid.okio.c cVar, long j10) throws IOException {
            int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
            if (i10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            } else if (i10 == 0) {
                return 0L;
            } else {
                try {
                    this.f30154a.e();
                    o b10 = cVar.b(1);
                    int read = this.f30155b.read(b10.f30164a, b10.f30166c, (int) Math.min(j10, 8192 - b10.f30166c));
                    if (read == -1) {
                        return -1L;
                    }
                    b10.f30166c += read;
                    long j11 = read;
                    cVar.f30132b += j11;
                    return j11;
                } catch (AssertionError e10) {
                    if (l.a(e10)) {
                        throw new IOException(e10);
                    }
                    throw e10;
                }
            }
        }

        @Override // com.mbridge.msdk.thrid.okio.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f30155b.close();
        }

        public String toString() {
            return "source(" + this.f30155b + ")";
        }

        @Override // com.mbridge.msdk.thrid.okio.s
        public t b() {
            return this.f30154a;
        }
    }

    public static s a(InputStream inputStream) {
        return a(inputStream, new t());
    }

    private static s a(InputStream inputStream, t tVar) {
        if (inputStream != null) {
            if (tVar != null) {
                return new b(tVar, inputStream);
            }
            throw new IllegalArgumentException("timeout == null");
        }
        throw new IllegalArgumentException("in == null");
    }

    static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }
}
