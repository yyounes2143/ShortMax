package d8;

import com.inmobi.commons.core.configs.AdConfig;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: QueueFile.java */
/* loaded from: classes5.dex */
public class h implements Closeable {

    /* renamed from: g  reason: collision with root package name */
    private static final Logger f50224g = Logger.getLogger(h.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final RandomAccessFile f50225a;

    /* renamed from: b  reason: collision with root package name */
    int f50226b;

    /* renamed from: c  reason: collision with root package name */
    private int f50227c;

    /* renamed from: d  reason: collision with root package name */
    private b f50228d;

    /* renamed from: e  reason: collision with root package name */
    private b f50229e;

    /* renamed from: f  reason: collision with root package name */
    private final byte[] f50230f = new byte[16];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: QueueFile.java */
    /* loaded from: classes5.dex */
    public class a implements d {

        /* renamed from: a  reason: collision with root package name */
        boolean f50231a = true;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ StringBuilder f50232b;

        a(StringBuilder sb2) {
            this.f50232b = sb2;
        }

        @Override // d8.h.d
        public void a(InputStream inputStream, int i10) throws IOException {
            if (this.f50231a) {
                this.f50231a = false;
            } else {
                this.f50232b.append(", ");
            }
            this.f50232b.append(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: QueueFile.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: c  reason: collision with root package name */
        static final b f50234c = new b(0, 0);

        /* renamed from: a  reason: collision with root package name */
        final int f50235a;

        /* renamed from: b  reason: collision with root package name */
        final int f50236b;

        b(int i10, int i11) {
            this.f50235a = i10;
            this.f50236b = i11;
        }

        public String toString() {
            return getClass().getSimpleName() + "[position = " + this.f50235a + ", length = " + this.f50236b + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: QueueFile.java */
    /* loaded from: classes5.dex */
    public final class c extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        private int f50237a;

        /* renamed from: b  reason: collision with root package name */
        private int f50238b;

        /* synthetic */ c(h hVar, b bVar, a aVar) {
            this(bVar);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            h.q(bArr, "buffer");
            if ((i10 | i11) >= 0 && i11 <= bArr.length - i10) {
                int i12 = this.f50238b;
                if (i12 > 0) {
                    if (i11 > i12) {
                        i11 = i12;
                    }
                    h.this.x(this.f50237a, bArr, i10, i11);
                    this.f50237a = h.this.T(this.f50237a + i11);
                    this.f50238b -= i11;
                    return i11;
                }
                return -1;
            }
            throw new ArrayIndexOutOfBoundsException();
        }

        private c(b bVar) {
            this.f50237a = h.this.T(bVar.f50235a + 4);
            this.f50238b = bVar.f50236b;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f50238b == 0) {
                return -1;
            }
            h.this.f50225a.seek(this.f50237a);
            int read = h.this.f50225a.read();
            this.f50237a = h.this.T(this.f50237a + 1);
            this.f50238b--;
            return read;
        }
    }

    /* compiled from: QueueFile.java */
    /* loaded from: classes5.dex */
    public interface d {
        void a(InputStream inputStream, int i10) throws IOException;
    }

    public h(File file) throws IOException {
        if (!file.exists()) {
            o(file);
        }
        this.f50225a = r(file);
        t();
    }

    private void F(int i10, byte[] bArr, int i11, int i12) throws IOException {
        int T = T(i10);
        int i13 = T + i12;
        int i14 = this.f50226b;
        if (i13 <= i14) {
            this.f50225a.seek(T);
            this.f50225a.write(bArr, i11, i12);
            return;
        }
        int i15 = i14 - T;
        this.f50225a.seek(T);
        this.f50225a.write(bArr, i11, i15);
        this.f50225a.seek(16L);
        this.f50225a.write(bArr, i11 + i15, i12 - i15);
    }

    private void P(int i10) throws IOException {
        this.f50225a.setLength(i10);
        this.f50225a.getChannel().force(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int T(int i10) {
        int i11 = this.f50226b;
        if (i10 >= i11) {
            return (i10 + 16) - i11;
        }
        return i10;
    }

    private void W(int i10, int i11, int i12, int i13) throws IOException {
        Z(this.f50230f, i10, i11, i12, i13);
        this.f50225a.seek(0L);
        this.f50225a.write(this.f50230f);
    }

    private static void Y(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) (i11 >> 24);
        bArr[i10 + 1] = (byte) (i11 >> 16);
        bArr[i10 + 2] = (byte) (i11 >> 8);
        bArr[i10 + 3] = (byte) i11;
    }

    private static void Z(byte[] bArr, int... iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            Y(bArr, i10, i11);
            i10 += 4;
        }
    }

    private void l(int i10) throws IOException {
        int i11 = i10 + 4;
        int v10 = v();
        if (v10 >= i11) {
            return;
        }
        int i12 = this.f50226b;
        do {
            v10 += i12;
            i12 <<= 1;
        } while (v10 < i11);
        P(i12);
        b bVar = this.f50229e;
        int T = T(bVar.f50235a + 4 + bVar.f50236b);
        if (T < this.f50228d.f50235a) {
            FileChannel channel = this.f50225a.getChannel();
            channel.position(this.f50226b);
            long j10 = T - 4;
            if (channel.transferTo(16L, j10, channel) != j10) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i13 = this.f50229e.f50235a;
        int i14 = this.f50228d.f50235a;
        if (i13 < i14) {
            int i15 = (this.f50226b + i13) - 16;
            W(i12, this.f50227c, i14, i15);
            this.f50229e = new b(i15, this.f50229e.f50236b);
        } else {
            W(i12, this.f50227c, i14, i13);
        }
        this.f50226b = i12;
    }

    private static void o(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile r10 = r(file2);
        try {
            r10.setLength(4096L);
            r10.seek(0L);
            byte[] bArr = new byte[16];
            Z(bArr, 4096, 0, 0, 0);
            r10.write(bArr);
            r10.close();
            if (file2.renameTo(file)) {
                return;
            }
            throw new IOException("Rename failed!");
        } catch (Throwable th2) {
            r10.close();
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T q(T t10, String str) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException(str);
    }

    private static RandomAccessFile r(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    private b s(int i10) throws IOException {
        if (i10 == 0) {
            return b.f50234c;
        }
        this.f50225a.seek(i10);
        return new b(i10, this.f50225a.readInt());
    }

    private void t() throws IOException {
        this.f50225a.seek(0L);
        this.f50225a.readFully(this.f50230f);
        int u10 = u(this.f50230f, 0);
        this.f50226b = u10;
        if (u10 <= this.f50225a.length()) {
            this.f50227c = u(this.f50230f, 4);
            int u11 = u(this.f50230f, 8);
            int u12 = u(this.f50230f, 12);
            this.f50228d = s(u11);
            this.f50229e = s(u12);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f50226b + ", Actual length: " + this.f50225a.length());
    }

    private static int u(byte[] bArr, int i10) {
        return ((bArr[i10] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 24) + ((bArr[i10 + 1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 16) + ((bArr[i10 + 2] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) << 8) + (bArr[i10 + 3] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
    }

    private int v() {
        return this.f50226b - R();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(int i10, byte[] bArr, int i11, int i12) throws IOException {
        int T = T(i10);
        int i13 = T + i12;
        int i14 = this.f50226b;
        if (i13 <= i14) {
            this.f50225a.seek(T);
            this.f50225a.readFully(bArr, i11, i12);
            return;
        }
        int i15 = i14 - T;
        this.f50225a.seek(T);
        this.f50225a.readFully(bArr, i11, i15);
        this.f50225a.seek(16L);
        this.f50225a.readFully(bArr, i11 + i15, i12 - i15);
    }

    public int R() {
        if (this.f50227c == 0) {
            return 16;
        }
        b bVar = this.f50229e;
        int i10 = bVar.f50235a;
        int i11 = this.f50228d.f50235a;
        if (i10 >= i11) {
            return (i10 - i11) + 4 + bVar.f50236b + 16;
        }
        return (((i10 + 4) + bVar.f50236b) + this.f50226b) - i11;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f50225a.close();
    }

    public void g(byte[] bArr) throws IOException {
        i(bArr, 0, bArr.length);
    }

    public synchronized void i(byte[] bArr, int i10, int i11) throws IOException {
        int T;
        int i12;
        try {
            q(bArr, "buffer");
            if ((i10 | i11) >= 0 && i11 <= bArr.length - i10) {
                l(i11);
                boolean p10 = p();
                if (p10) {
                    T = 16;
                } else {
                    b bVar = this.f50229e;
                    T = T(bVar.f50235a + 4 + bVar.f50236b);
                }
                b bVar2 = new b(T, i11);
                Y(this.f50230f, 0, i11);
                F(bVar2.f50235a, this.f50230f, 0, 4);
                F(bVar2.f50235a + 4, bArr, i10, i11);
                if (p10) {
                    i12 = bVar2.f50235a;
                } else {
                    i12 = this.f50228d.f50235a;
                }
                W(this.f50226b, this.f50227c + 1, i12, bVar2.f50235a);
                this.f50229e = bVar2;
                this.f50227c++;
                if (p10) {
                    this.f50228d = bVar2;
                }
            } else {
                throw new IndexOutOfBoundsException();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void k() throws IOException {
        try {
            W(4096, 0, 0, 0);
            this.f50227c = 0;
            b bVar = b.f50234c;
            this.f50228d = bVar;
            this.f50229e = bVar;
            if (this.f50226b > 4096) {
                P(4096);
            }
            this.f50226b = 4096;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void m(d dVar) throws IOException {
        int i10 = this.f50228d.f50235a;
        for (int i11 = 0; i11 < this.f50227c; i11++) {
            b s10 = s(i10);
            dVar.a(new c(this, s10, null), s10.f50236b);
            i10 = T(s10.f50235a + 4 + s10.f50236b);
        }
    }

    public synchronized boolean p() {
        boolean z10;
        if (this.f50227c == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append('[');
        sb2.append("fileLength=");
        sb2.append(this.f50226b);
        sb2.append(", size=");
        sb2.append(this.f50227c);
        sb2.append(", first=");
        sb2.append(this.f50228d);
        sb2.append(", last=");
        sb2.append(this.f50229e);
        sb2.append(", element lengths=[");
        try {
            m(new a(sb2));
        } catch (IOException e10) {
            f50224g.log(Level.WARNING, "read error", (Throwable) e10);
        }
        sb2.append("]]");
        return sb2.toString();
    }

    public synchronized void w() throws IOException {
        try {
            if (!p()) {
                if (this.f50227c == 1) {
                    k();
                } else {
                    b bVar = this.f50228d;
                    int T = T(bVar.f50235a + 4 + bVar.f50236b);
                    x(T, this.f50230f, 0, 4);
                    int u10 = u(this.f50230f, 0);
                    W(this.f50226b, this.f50227c - 1, T, this.f50229e.f50235a);
                    this.f50227c--;
                    this.f50228d = new b(T, u10);
                }
            } else {
                throw new NoSuchElementException();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
