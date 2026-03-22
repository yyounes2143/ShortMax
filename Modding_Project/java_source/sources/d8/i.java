package d8;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import d8.h;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Locale;
/* compiled from: QueueFileLogStore.java */
/* loaded from: classes5.dex */
class i implements d {

    /* renamed from: d  reason: collision with root package name */
    private static final Charset f50240d = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final File f50241a;

    /* renamed from: b  reason: collision with root package name */
    private final int f50242b;

    /* renamed from: c  reason: collision with root package name */
    private h f50243c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: QueueFileLogStore.java */
    /* loaded from: classes5.dex */
    public class a implements h.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ byte[] f50244a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int[] f50245b;

        a(byte[] bArr, int[] iArr) {
            this.f50244a = bArr;
            this.f50245b = iArr;
        }

        @Override // d8.h.d
        public void a(InputStream inputStream, int i10) throws IOException {
            try {
                inputStream.read(this.f50244a, this.f50245b[0], i10);
                int[] iArr = this.f50245b;
                iArr[0] = iArr[0] + i10;
            } finally {
                inputStream.close();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: QueueFileLogStore.java */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final byte[] f50247a;

        /* renamed from: b  reason: collision with root package name */
        public final int f50248b;

        b(byte[] bArr, int i10) {
            this.f50247a = bArr;
            this.f50248b = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(File file, int i10) {
        this.f50241a = file;
        this.f50242b = i10;
    }

    private void f(long j10, String str) {
        int i10;
        if (this.f50243c == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            if (str.length() > this.f50242b / 4) {
                str = "..." + str.substring(str.length() - i10);
            }
            this.f50243c.g(String.format(Locale.US, "%d %s%n", Long.valueOf(j10), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f50240d));
            while (!this.f50243c.p() && this.f50243c.R() > this.f50242b) {
                this.f50243c.w();
            }
        } catch (IOException e10) {
            z7.g.f().e("There was a problem writing to the Crashlytics log.", e10);
        }
    }

    private b g() {
        if (!this.f50241a.exists()) {
            return null;
        }
        h();
        h hVar = this.f50243c;
        if (hVar == null) {
            return null;
        }
        int[] iArr = {0};
        byte[] bArr = new byte[hVar.R()];
        try {
            this.f50243c.m(new a(bArr, iArr));
        } catch (IOException e10) {
            z7.g.f().e("A problem occurred while reading the Crashlytics log file.", e10);
        }
        return new b(bArr, iArr[0]);
    }

    private void h() {
        if (this.f50243c == null) {
            try {
                this.f50243c = new h(this.f50241a);
            } catch (IOException e10) {
                z7.g f10 = z7.g.f();
                f10.e("Could not open log file: " + this.f50241a, e10);
            }
        }
    }

    @Override // d8.d
    public byte[] a() {
        b g10 = g();
        if (g10 == null) {
            return null;
        }
        int i10 = g10.f50248b;
        byte[] bArr = new byte[i10];
        System.arraycopy(g10.f50247a, 0, bArr, 0, i10);
        return bArr;
    }

    @Override // d8.d
    public void b() {
        d();
        this.f50241a.delete();
    }

    @Override // d8.d
    public void c(long j10, String str) {
        h();
        f(j10, str);
    }

    @Override // d8.d
    public void d() {
        CommonUtils.f(this.f50243c, "There was a problem closing the Crashlytics log file.");
        this.f50243c = null;
    }

    @Override // d8.d
    public String e() {
        byte[] a10 = a();
        if (a10 != null) {
            return new String(a10, f50240d);
        }
        return null;
    }
}
