package xn;

import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.inmobi.commons.core.configs.AdConfig;
import io.bidmachine.media3.exoplayer.upstream.Loader;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
/* compiled from: SntpClient.java */
/* loaded from: classes8.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f70511a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final Object f70512b = new Object();
    @GuardedBy("valueLock")

    /* renamed from: c  reason: collision with root package name */
    private static boolean f70513c = false;
    @GuardedBy("valueLock")

    /* renamed from: d  reason: collision with root package name */
    private static long f70514d = 0;
    @GuardedBy("valueLock")

    /* renamed from: e  reason: collision with root package name */
    private static String f70515e = "time.android.com";
    @GuardedBy("valueLock")

    /* renamed from: f  reason: collision with root package name */
    private static int f70516f = 1000;
    @GuardedBy("valueLock")

    /* renamed from: g  reason: collision with root package name */
    private static long f70517g = -9223372036854775807L;
    @GuardedBy("valueLock")

    /* renamed from: h  reason: collision with root package name */
    private static long f70518h = -9223372036854775807L;

    /* compiled from: SntpClient.java */
    /* renamed from: xn.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public interface InterfaceC0970b {
        void a(IOException iOException);

        void onInitialized();
    }

    static /* synthetic */ long e() throws IOException {
        return n();
    }

    private static void h(byte b10, byte b11, int i10, long j10) throws IOException {
        if (b10 != 3) {
            if (b11 != 4 && b11 != 5) {
                throw new IOException("SNTP: Untrusted mode: " + ((int) b11));
            } else if (i10 != 0 && i10 <= 15) {
                if (j10 != 0) {
                    return;
                }
                throw new IOException("SNTP: Zero transmitTime");
            } else {
                throw new IOException("SNTP: Untrusted stratum: " + i10);
            }
        }
        throw new IOException("SNTP: Unsynchronized server");
    }

    public static long i() {
        long j10;
        synchronized (f70512b) {
            try {
                if (f70513c) {
                    j10 = f70514d;
                } else {
                    j10 = -9223372036854775807L;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j10;
    }

    public static String j() {
        String str;
        synchronized (f70512b) {
            str = f70515e;
        }
        return str;
    }

    public static int k() {
        int i10;
        synchronized (f70512b) {
            i10 = f70516f;
        }
        return i10;
    }

    public static void l(@Nullable Loader loader, @Nullable InterfaceC0970b interfaceC0970b) {
        if (m()) {
            if (interfaceC0970b != null) {
                interfaceC0970b.onInitialized();
                return;
            }
            return;
        }
        if (loader == null) {
            loader = new Loader("SntpClient");
        }
        loader.m(new d(), new c(interfaceC0970b), 1);
    }

    public static boolean m() {
        boolean z10;
        boolean z11;
        synchronized (f70512b) {
            try {
                if (f70518h != -9223372036854775807L && f70517g != -9223372036854775807L) {
                    long elapsedRealtime = SystemClock.elapsedRealtime() - f70518h;
                    if (f70513c && elapsedRealtime < f70517g) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    f70513c = z11;
                }
                z10 = f70513c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    private static long n() throws IOException {
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(k());
            InetAddress[] allByName = InetAddress.getAllByName(j());
            int length = allByName.length;
            SocketTimeoutException socketTimeoutException = null;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                byte[] bArr = new byte[48];
                DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, allByName[i10], 123);
                bArr[0] = 27;
                long currentTimeMillis = System.currentTimeMillis();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                q(bArr, 40, currentTimeMillis);
                datagramSocket.send(datagramPacket);
                try {
                    datagramSocket.receive(new DatagramPacket(bArr, 48));
                    long elapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j10 = currentTimeMillis + (elapsedRealtime2 - elapsedRealtime);
                    byte b10 = bArr[0];
                    int i12 = bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                    long p10 = p(bArr, 24);
                    long p11 = p(bArr, 32);
                    long p12 = p(bArr, 40);
                    h((byte) ((b10 >> 6) & 3), (byte) (b10 & 7), i12, p12);
                    long j11 = (j10 + (((p11 - p10) + (p12 - j10)) / 2)) - elapsedRealtime2;
                    datagramSocket.close();
                    return j11;
                } catch (SocketTimeoutException e10) {
                    if (socketTimeoutException == null) {
                        socketTimeoutException = e10;
                    } else {
                        socketTimeoutException.addSuppressed(e10);
                    }
                    int i13 = i11 + 1;
                    if (i11 >= 10) {
                        break;
                    }
                    i10++;
                    i11 = i13;
                }
            }
            throw ((SocketTimeoutException) cn.a.e(socketTimeoutException));
        } catch (Throwable th2) {
            try {
                datagramSocket.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static long o(byte[] bArr, int i10) {
        int i11 = bArr[i10];
        int i12 = bArr[i10 + 1];
        int i13 = bArr[i10 + 2];
        int i14 = bArr[i10 + 3];
        if ((i11 & 128) == 128) {
            i11 = (i11 & 127) + 128;
        }
        if ((i12 & 128) == 128) {
            i12 = (i12 & 127) + 128;
        }
        if ((i13 & 128) == 128) {
            i13 = (i13 & 127) + 128;
        }
        if ((i14 & 128) == 128) {
            i14 = (i14 & 127) + 128;
        }
        return (i11 << 24) + (i12 << 16) + (i13 << 8) + i14;
    }

    private static long p(byte[] bArr, int i10) {
        long o10 = o(bArr, i10);
        long o11 = o(bArr, i10 + 4);
        if (o10 == 0 && o11 == 0) {
            return 0L;
        }
        return ((o10 - 2208988800L) * 1000) + ((o11 * 1000) / 4294967296L);
    }

    private static void q(byte[] bArr, int i10, long j10) {
        if (j10 == 0) {
            Arrays.fill(bArr, i10, i10 + 8, (byte) 0);
            return;
        }
        long j11 = j10 / 1000;
        long j12 = j10 - (j11 * 1000);
        long j13 = j11 + 2208988800L;
        bArr[i10] = (byte) (j13 >> 24);
        bArr[i10 + 1] = (byte) (j13 >> 16);
        bArr[i10 + 2] = (byte) (j13 >> 8);
        bArr[i10 + 3] = (byte) j13;
        long j14 = (j12 * 4294967296L) / 1000;
        bArr[i10 + 4] = (byte) (j14 >> 24);
        bArr[i10 + 5] = (byte) (j14 >> 16);
        bArr[i10 + 6] = (byte) (j14 >> 8);
        bArr[i10 + 7] = (byte) (Math.random() * 255.0d);
    }

    /* compiled from: SntpClient.java */
    /* loaded from: classes8.dex */
    private static final class d implements Loader.e {
        private d() {
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
        public void load() throws IOException {
            synchronized (b.f70511a) {
                synchronized (b.f70512b) {
                    if (b.f70513c) {
                        return;
                    }
                    long e10 = b.e();
                    synchronized (b.f70512b) {
                        long unused = b.f70518h = SystemClock.elapsedRealtime();
                        long unused2 = b.f70514d = e10;
                        boolean unused3 = b.f70513c = true;
                    }
                }
            }
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
        public void cancelLoad() {
        }
    }

    /* compiled from: SntpClient.java */
    /* loaded from: classes8.dex */
    private static final class c implements Loader.b<Loader.e> {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC0970b f70519a;

        public c(@Nullable InterfaceC0970b interfaceC0970b) {
            this.f70519a = interfaceC0970b;
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        public void f(Loader.e eVar, long j10, long j11) {
            if (this.f70519a != null) {
                if (!b.m()) {
                    this.f70519a.a(new IOException(new ConcurrentModificationException()));
                } else {
                    this.f70519a.onInitialized();
                }
            }
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        public Loader.c j(Loader.e eVar, long j10, long j11, IOException iOException, int i10) {
            InterfaceC0970b interfaceC0970b = this.f70519a;
            if (interfaceC0970b != null) {
                interfaceC0970b.a(iOException);
            }
            return Loader.f57094f;
        }

        @Override // io.bidmachine.media3.exoplayer.upstream.Loader.b
        public void h(Loader.e eVar, long j10, long j11, boolean z10) {
        }
    }
}
