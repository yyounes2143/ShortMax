package io.bidmachine.media3.exoplayer;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Looper;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WifiLockManager.java */
/* loaded from: classes8.dex */
public final class w2 {

    /* renamed from: a  reason: collision with root package name */
    private final a f57407a;

    /* renamed from: b  reason: collision with root package name */
    private final cn.n f57408b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f57409c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f57410d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WifiLockManager.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f57411a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private WifiManager.WifiLock f57412b;

        public a(Context context) {
            this.f57411a = context;
        }

        public void a(boolean z10, boolean z11) {
            if (z10 && this.f57412b == null) {
                WifiManager wifiManager = (WifiManager) this.f57411a.getApplicationContext().getSystemService("wifi");
                if (wifiManager == null) {
                    cn.r.h("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                    return;
                }
                WifiManager.WifiLock createWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
                this.f57412b = createWifiLock;
                createWifiLock.setReferenceCounted(false);
            }
            WifiManager.WifiLock wifiLock = this.f57412b;
            if (wifiLock == null) {
                return;
            }
            if (z10 && z11) {
                wifiLock.acquire();
            } else {
                wifiLock.release();
            }
        }
    }

    public w2(Context context, Looper looper, cn.h hVar) {
        this.f57407a = new a(context.getApplicationContext());
        this.f57408b = hVar.createHandler(looper, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z10, boolean z11) {
        this.f57407a.a(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(boolean z10) {
        this.f57407a.a(true, z10);
    }

    public void e(final boolean z10) {
        if (this.f57409c == z10) {
            return;
        }
        this.f57409c = z10;
        final boolean z11 = this.f57410d;
        this.f57408b.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.u2
            @Override // java.lang.Runnable
            public final void run() {
                w2.this.c(z10, z11);
            }
        });
    }

    public void f(final boolean z10) {
        if (this.f57410d == z10) {
            return;
        }
        this.f57410d = z10;
        if (this.f57409c) {
            this.f57408b.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.v2
                @Override // java.lang.Runnable
                public final void run() {
                    w2.this.d(z10);
                }
            });
        }
    }
}
