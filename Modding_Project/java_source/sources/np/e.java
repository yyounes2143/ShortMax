package np;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.core.g;
import java.io.File;
/* compiled from: DownloadVideoTask.java */
/* loaded from: classes8.dex */
public class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private b f63011a;

    /* renamed from: b  reason: collision with root package name */
    private String f63012b;

    /* renamed from: c  reason: collision with root package name */
    private File f63013c;

    /* renamed from: d  reason: collision with root package name */
    private final Handler f63014d = new a(Looper.getMainLooper());

    /* renamed from: e  reason: collision with root package name */
    private boolean f63015e;

    /* compiled from: DownloadVideoTask.java */
    /* loaded from: classes8.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (e.this.f63011a != null) {
                int i10 = message.what;
                if (i10 != 0) {
                    if (i10 == 1) {
                        e.this.f63011a.a(e.this, (Uri) message.obj);
                        return;
                    }
                    return;
                }
                e.this.f63011a.b(e.this);
            }
        }
    }

    /* compiled from: DownloadVideoTask.java */
    /* loaded from: classes8.dex */
    public interface b {
        void a(@NonNull e eVar, Uri uri);

        void b(@NonNull e eVar);
    }

    public e(@NonNull Context context, @NonNull b bVar, @Nullable String str) {
        if (str != null && g.f()) {
            this.f63011a = bVar;
            this.f63012b = str;
            if (g.f()) {
                this.f63013c = g.w(context, "native_video");
                this.f63015e = true;
                return;
            }
            bVar.b(this);
            return;
        }
        bVar.b(this);
    }

    private void c() {
        Handler handler = this.f63014d;
        if (handler != null) {
            handler.sendEmptyMessage(0);
        }
    }

    private void d(@NonNull File file) {
        Handler handler = this.f63014d;
        if (handler != null) {
            this.f63014d.sendMessage(handler.obtainMessage(1, Uri.fromFile(file)));
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f63015e) {
            c();
            return;
        }
        File a10 = np.a.a(this.f63012b, this.f63013c, 20000);
        if (a10 != null) {
            d(a10);
        } else {
            c();
        }
    }
}
