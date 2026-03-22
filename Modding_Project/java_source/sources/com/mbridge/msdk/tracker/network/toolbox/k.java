package com.mbridge.msdk.tracker.network.toolbox;

import android.os.SystemClock;
import com.mbridge.msdk.tracker.network.a0;
import com.mbridge.msdk.tracker.network.b;
import com.mbridge.msdk.tracker.network.b0;
import com.mbridge.msdk.tracker.network.c0;
import com.mbridge.msdk.tracker.network.p;
import com.mbridge.msdk.tracker.network.q;
import com.mbridge.msdk.tracker.network.r;
import com.mbridge.msdk.tracker.network.t;
import com.mbridge.msdk.tracker.network.x;
import com.mbridge.msdk.tracker.network.y;
import com.mbridge.msdk.tracker.network.z;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.List;
/* compiled from: NetworkUtility.java */
/* loaded from: classes6.dex */
final class k {

    /* compiled from: NetworkUtility.java */
    /* loaded from: classes6.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        final String f30375a;

        /* renamed from: b  reason: collision with root package name */
        final b0 f30376b;

        private b(String str, b0 b0Var) {
            this.f30375a = str;
            this.f30376b = b0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(long j10, t<?> tVar, byte[] bArr, int i10) {
        if (j10 > 3000) {
            c0.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", tVar, Long.valueOf(j10), bArr != null ? Integer.valueOf(bArr.length) : "null", Integer.valueOf(i10), Integer.valueOf(tVar.o().c()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q a(t<?> tVar, long j10, List<com.mbridge.msdk.tracker.network.g> list) {
        b.a d10 = tVar.d();
        if (d10 == null) {
            return new q(304, null, true, j10, list);
        }
        return new q(304, d10.f30252a, true, j10, f.a(list, d10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(InputStream inputStream, int i10, c cVar, p pVar) throws IOException {
        byte[] bArr;
        n nVar = new n(cVar, i10);
        a(pVar);
        try {
            bArr = cVar.a(1024);
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    nVar.write(bArr, 0, read);
                    a(pVar, read);
                } catch (Throwable th2) {
                    th = th2;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                            c0.d("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    cVar.a(bArr);
                    nVar.close();
                    throw th;
                }
            }
            byte[] byteArray = nVar.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                c0.d("Error occurred when closing InputStream", new Object[0]);
            }
            cVar.a(bArr);
            nVar.close();
            return byteArray;
        } catch (Throwable th3) {
            th = th3;
            bArr = null;
        }
    }

    private static void a(p pVar) {
        if (pVar != null) {
            pVar.c(0L);
        }
    }

    private static void a(p pVar, int i10) {
        if (pVar != null) {
            pVar.c(pVar.B() + i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(t<?> tVar, b bVar) throws b0 {
        if (tVar == null) {
            throw new a0("request is null when retrying");
        }
        if (bVar != null) {
            x o10 = tVar.o();
            if (o10 != null) {
                if (!o10.a(bVar.f30376b)) {
                    throw bVar.f30376b;
                }
                return;
            }
            throw bVar.f30376b;
        }
        throw new a0("retry info is null when retrying");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b a(t<?> tVar, IOException iOException, long j10, g gVar, byte[] bArr) throws b0 {
        if (iOException instanceof SocketTimeoutException) {
            return new b("socket", new z());
        }
        if (iOException instanceof MalformedURLException) {
            throw new com.mbridge.msdk.tracker.network.a("Bad URL " + tVar.t());
        } else if (gVar != null) {
            int d10 = gVar.d();
            c0.c("Unexpected response code %d for %s", Integer.valueOf(d10), tVar.t());
            if (bArr != null) {
                q qVar = new q(d10, bArr, false, SystemClock.elapsedRealtime() - j10, gVar.c());
                if (d10 >= 400 && d10 <= 499) {
                    com.mbridge.msdk.tracker.network.d dVar = new com.mbridge.msdk.tracker.network.d(qVar);
                    dVar.a(d10);
                    throw dVar;
                }
                y yVar = new y(qVar);
                yVar.a(d10);
                if (d10 >= 500 && d10 <= 599 && tVar.B()) {
                    return new b("server", yVar);
                }
                throw yVar;
            }
            com.mbridge.msdk.tracker.network.o oVar = new com.mbridge.msdk.tracker.network.o();
            oVar.a(d10);
            return new b("network", oVar);
        } else if (tVar.A()) {
            return new b("connection", new r());
        } else {
            throw new r(iOException);
        }
    }
}
