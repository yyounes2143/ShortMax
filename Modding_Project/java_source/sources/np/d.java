package np;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.core.g;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.vast.processor.VastAd;
import java.io.File;
import java.lang.ref.WeakReference;
/* compiled from: DownloadVastVideoTask.java */
/* loaded from: classes8.dex */
public class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f63004a = new a(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<Context> f63005b;

    /* renamed from: c  reason: collision with root package name */
    private b f63006c;

    /* renamed from: d  reason: collision with root package name */
    private String f63007d;

    /* renamed from: e  reason: collision with root package name */
    private File f63008e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f63009f;

    /* compiled from: DownloadVastVideoTask.java */
    /* loaded from: classes8.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (d.this.f63006c != null) {
                int i10 = message.what;
                if (i10 != 0) {
                    if (i10 == 1) {
                        Pair pair = (Pair) message.obj;
                        d.this.f63006c.a(d.this, (Uri) pair.first, (io.bidmachine.iab.vast.a) pair.second);
                        return;
                    }
                    return;
                }
                d.this.f63006c.b(d.this);
            }
        }
    }

    /* compiled from: DownloadVastVideoTask.java */
    /* loaded from: classes8.dex */
    public interface b {
        void a(@NonNull d dVar, Uri uri, io.bidmachine.iab.vast.a aVar);

        void b(@NonNull d dVar);
    }

    public d(@NonNull Context context, @NonNull b bVar, @Nullable String str) {
        if (str != null && g.f()) {
            this.f63005b = new WeakReference<>(context);
            this.f63006c = bVar;
            this.f63007d = str;
            if (g.f()) {
                this.f63008e = g.w(context, "native_video");
                this.f63009f = true;
                return;
            }
            bVar.b(this);
            return;
        }
        bVar.b(this);
    }

    private void c() {
        Handler handler = this.f63004a;
        if (handler != null) {
            handler.sendEmptyMessage(0);
        }
    }

    private void d(@NonNull File file, @NonNull io.bidmachine.iab.vast.a aVar) {
        Handler handler = this.f63004a;
        if (handler != null) {
            this.f63004a.sendMessage(handler.obtainMessage(1, new Pair(Uri.fromFile(file), aVar)));
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        File a10;
        if (!this.f63009f) {
            c();
            return;
        }
        Context context = this.f63005b.get();
        if (context == null) {
            c();
            return;
        }
        try {
            io.bidmachine.iab.vast.a a11 = io.bidmachine.iab.vast.a.V().d(CacheControl.Stream).a();
            a11.U(context, this.f63007d, null);
            VastAd M = a11.M();
            if (M != null && M.x().a0().matches("video/.*(?i)(mp4|3gpp|mp2t|webm|matroska)") && (a10 = np.a.a(M.x().P(), this.f63008e, 20000)) != null) {
                d(a10, a11);
                return;
            }
        } catch (Exception e10) {
            io.bidmachine.core.a.m(e10);
        }
        c();
    }
}
