package io.bidmachine.media3.exoplayer.offline;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import cn.m0;
import cn.z;
import java.util.HashMap;
/* loaded from: classes8.dex */
public abstract class DownloadService extends Service {

    /* renamed from: j  reason: collision with root package name */
    private static final HashMap<Class<? extends DownloadService>, a> f56645j = new HashMap<>();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f56646a;
    @StringRes

    /* renamed from: b  reason: collision with root package name */
    private final int f56647b;
    @StringRes

    /* renamed from: c  reason: collision with root package name */
    private final int f56648c;

    /* renamed from: d  reason: collision with root package name */
    private a f56649d;

    /* renamed from: e  reason: collision with root package name */
    private int f56650e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f56651f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f56652g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f56653h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f56654i;

    /* loaded from: classes8.dex */
    private static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private DownloadService f56655a;

        static /* synthetic */ rn.a a(a aVar) {
            aVar.getClass();
            return null;
        }

        public void b(DownloadService downloadService) {
            boolean z10;
            if (this.f56655a == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            this.f56655a = downloadService;
            throw null;
        }

        public void c(DownloadService downloadService) {
            boolean z10;
            if (this.f56655a == downloadService) {
                z10 = true;
            } else {
                z10 = false;
            }
            cn.a.g(z10);
            this.f56655a = null;
        }
    }

    protected abstract rn.a a();

    @Override // android.app.Service
    @Nullable
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public void onCreate() {
        String str = this.f56646a;
        if (str != null) {
            z.a(this, str, this.f56647b, this.f56648c, 2);
        }
        a aVar = f56645j.get(getClass());
        if (aVar != null) {
            this.f56649d = aVar;
            aVar.b(this);
            return;
        }
        int i10 = m0.f3614a;
        a();
        throw null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f56654i = true;
        ((a) cn.a.e(this.f56649d)).c(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009e, code lost:
        if (r3.equals("io.bidmachine.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS") == false) goto L13;
     */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int onStartCommand(@androidx.annotation.Nullable android.content.Intent r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.media3.exoplayer.offline.DownloadService.onStartCommand(android.content.Intent, int, int):int");
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.f56652g = true;
    }
}
