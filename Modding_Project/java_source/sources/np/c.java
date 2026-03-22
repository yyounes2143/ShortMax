package np;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.core.g;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
/* compiled from: DownloadImageTask.java */
/* loaded from: classes8.dex */
public class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f62997a = new a(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private Context f62998b;

    /* renamed from: c  reason: collision with root package name */
    private String f62999c;

    /* renamed from: d  reason: collision with root package name */
    private File f63000d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private InterfaceC0879c f63001e;

    /* compiled from: DownloadImageTask.java */
    /* loaded from: classes8.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (c.this.f63001e != null) {
                int i10 = message.what;
                if (i10 != 0) {
                    if (i10 != 1) {
                        if (i10 == 2) {
                            c.this.f63001e.c(c.this, (Bitmap) message.obj);
                            return;
                        }
                        return;
                    }
                    c.this.f63001e.b(c.this, (Uri) message.obj);
                    return;
                }
                c.this.f63001e.a(c.this);
            }
        }
    }

    /* compiled from: DownloadImageTask.java */
    /* loaded from: classes8.dex */
    public class b {
        public b(@NonNull Context context, @NonNull String str) {
            c.this.f62998b = context;
            c.this.f62999c = str;
        }

        public c a() {
            try {
                c cVar = c.this;
                if (cVar.f62998b == null) {
                    if (c.this.f63001e != null) {
                        c.this.f63001e.a(c.this);
                    }
                } else if (g.f()) {
                    c cVar2 = c.this;
                    cVar2.f63000d = g.w(cVar2.f62998b, "native_cache_image");
                }
                return cVar;
            } catch (Throwable th2) {
                if (c.this.f62998b == null) {
                    if (c.this.f63001e != null) {
                        c.this.f63001e.a(c.this);
                    }
                } else if (g.f()) {
                    c cVar3 = c.this;
                    cVar3.f63000d = g.w(cVar3.f62998b, "native_cache_image");
                }
                throw th2;
            }
        }

        public b b(@Nullable InterfaceC0879c interfaceC0879c) {
            c.this.f63001e = interfaceC0879c;
            return this;
        }
    }

    /* compiled from: DownloadImageTask.java */
    /* renamed from: np.c$c  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public interface InterfaceC0879c {
        void a(@NonNull c cVar);

        void b(@NonNull c cVar, Uri uri);

        void c(@NonNull c cVar, Bitmap bitmap);
    }

    private c() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0022: MOVE  (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:8:0x0022 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.Closeable, java.io.Flushable] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r3v0, types: [np.c] */
    @Nullable
    private Bitmap h(byte[] bArr, @NonNull BitmapFactory.Options options) {
        ByteArrayOutputStream byteArrayOutputStream;
        Object obj;
        options.inJustDecodeBounds = false;
        ?? r02 = 0;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
                try {
                    o(bArr, options, byteArrayOutputStream);
                    Bitmap decodeStream = BitmapFactory.decodeStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
                    g.p(byteArrayOutputStream);
                    g.j(byteArrayOutputStream);
                    return decodeStream;
                } catch (Exception e10) {
                    e = e10;
                    io.bidmachine.core.a.m(e);
                    g.p(byteArrayOutputStream);
                    g.j(byteArrayOutputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                r02 = obj;
                g.p(r02);
                g.j(r02);
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            g.p(r02);
            g.j(r02);
            throw th;
        }
    }

    private void i(@NonNull Context context, @NonNull String str) {
        File file;
        ByteArrayOutputStream byteArrayOutputStream;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inJustDecodeBounds = true;
        InputStream inputStream = null;
        if (this.f63000d != null) {
            file = new File(this.f63000d, g.q(str));
            if (file.exists() && file.length() > 0) {
                n(Uri.fromFile(file));
                return;
            }
        } else {
            file = null;
        }
        try {
            InputStream a10 = np.b.a(str, 20000);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream(a10.available());
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
            }
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = a10.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
                if (file != null) {
                    k(file, byteArray, options);
                    n(Uri.fromFile(file));
                } else {
                    int c10 = op.a.c(context);
                    options.inSampleSize = op.a.a(options, c10, op.a.b(c10));
                    Bitmap h10 = h(byteArray, options);
                    if (h10 != null) {
                        m(h10);
                    } else {
                        l();
                    }
                }
                g.p(byteArrayOutputStream);
                g.j(byteArrayOutputStream);
                g.j(a10);
            } catch (Throwable th3) {
                th = th3;
                inputStream = a10;
                try {
                    io.bidmachine.core.a.m(th);
                    l();
                } finally {
                    g.p(byteArrayOutputStream);
                    g.j(byteArrayOutputStream);
                    g.j(inputStream);
                }
            }
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
        }
    }

    public static b j(@NonNull Context context, @NonNull String str) {
        return new b(context, str);
    }

    private void k(@NonNull File file, byte[] bArr, @NonNull BitmapFactory.Options options) {
        FileOutputStream fileOutputStream;
        options.inJustDecodeBounds = false;
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            o(bArr, options, fileOutputStream);
            g.p(fileOutputStream);
            g.j(fileOutputStream);
        } catch (Exception e11) {
            e = e11;
            fileOutputStream2 = fileOutputStream;
            io.bidmachine.core.a.m(e);
            g.p(fileOutputStream2);
            g.j(fileOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            g.p(fileOutputStream2);
            g.j(fileOutputStream2);
            throw th;
        }
    }

    private void l() {
        Handler handler = this.f62997a;
        if (handler != null) {
            handler.sendEmptyMessage(0);
        }
    }

    private void m(@NonNull Bitmap bitmap) {
        Handler handler = this.f62997a;
        if (handler != null) {
            this.f62997a.sendMessage(handler.obtainMessage(2, bitmap));
        }
    }

    private void n(@NonNull Uri uri) {
        Handler handler = this.f62997a;
        if (handler != null) {
            this.f62997a.sendMessage(handler.obtainMessage(1, uri));
        }
    }

    private void o(byte[] bArr, @NonNull BitmapFactory.Options options, @NonNull OutputStream outputStream) {
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        decodeByteArray.compress(Bitmap.CompressFormat.PNG, 85, outputStream);
        decodeByteArray.recycle();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!TextUtils.isEmpty(this.f62999c) && g.K(this.f62999c)) {
            String replace = this.f62999c.replace(" ", "%20");
            this.f62999c = replace;
            i(this.f62998b, replace);
            return;
        }
        l();
    }
}
