package com.google.android.exoplayer2.offline;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import b7.e0;
import b7.s0;
import java.util.HashMap;
/* loaded from: classes4.dex */
public abstract class DownloadService extends Service {

    /* renamed from: j  reason: collision with root package name */
    private static final HashMap<Class<? extends DownloadService>, a> f18144j = new HashMap<>();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f18145a;
    @StringRes

    /* renamed from: b  reason: collision with root package name */
    private final int f18146b;
    @StringRes

    /* renamed from: c  reason: collision with root package name */
    private final int f18147c;

    /* renamed from: d  reason: collision with root package name */
    private a f18148d;

    /* renamed from: e  reason: collision with root package name */
    private int f18149e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f18150f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f18151g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f18152h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f18153i;

    /* loaded from: classes4.dex */
    private static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private DownloadService f18154a;

        static /* synthetic */ m6.a a(a aVar) {
            aVar.getClass();
            return null;
        }

        public void b(DownloadService downloadService) {
            boolean z10;
            if (this.f18154a == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.g(z10);
            this.f18154a = downloadService;
            throw null;
        }

        public void c(DownloadService downloadService) {
            boolean z10;
            if (this.f18154a == downloadService) {
                z10 = true;
            } else {
                z10 = false;
            }
            b7.a.g(z10);
            this.f18154a = null;
        }
    }

    protected abstract m6.a a();

    @Override // android.app.Service
    @Nullable
    public final IBinder onBind(Intent intent) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public void onCreate() {
        String str = this.f18145a;
        if (str != null) {
            e0.a(this, str, this.f18146b, this.f18147c, 2);
        }
        a aVar = f18144j.get(getClass());
        if (aVar != null) {
            this.f18148d = aVar;
            aVar.b(this);
            return;
        }
        int i10 = s0.f2506a;
        a();
        throw null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f18153i = true;
        ((a) b7.a.e(this.f18148d)).c(this);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009e, code lost:
        if (r3.equals("com.google.android.exoplayer.downloadService.action.RESUME_DOWNLOADS") == false) goto L13;
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.offline.DownloadService.onStartCommand(android.content.Intent, int, int):int");
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        this.f18151g = true;
    }
}
