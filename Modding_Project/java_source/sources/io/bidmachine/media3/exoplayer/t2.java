package io.bidmachine.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Looper;
import android.os.PowerManager;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WakeLockManager.java */
/* loaded from: classes8.dex */
public final class t2 {

    /* renamed from: a  reason: collision with root package name */
    private final a f57022a;

    /* renamed from: b  reason: collision with root package name */
    private final cn.n f57023b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f57024c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f57025d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WakeLockManager.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f57026a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private PowerManager.WakeLock f57027b;

        public a(Context context) {
            this.f57026a = context;
        }

        @SuppressLint({"WakelockTimeout"})
        public void a(boolean z10, boolean z11) {
            if (z10 && this.f57027b == null) {
                PowerManager powerManager = (PowerManager) this.f57026a.getSystemService("power");
                if (powerManager == null) {
                    cn.r.h("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                    return;
                }
                PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
                this.f57027b = newWakeLock;
                newWakeLock.setReferenceCounted(false);
            }
            PowerManager.WakeLock wakeLock = this.f57027b;
            if (wakeLock == null) {
                return;
            }
            if (z10 && z11) {
                wakeLock.acquire();
            } else {
                wakeLock.release();
            }
        }
    }

    public t2(Context context, Looper looper, cn.h hVar) {
        this.f57022a = new a(context.getApplicationContext());
        this.f57023b = hVar.createHandler(looper, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(boolean z10, boolean z11) {
        this.f57022a.a(z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(boolean z10) {
        this.f57022a.a(true, z10);
    }

    public void e(final boolean z10) {
        if (this.f57024c == z10) {
            return;
        }
        this.f57024c = z10;
        final boolean z11 = this.f57025d;
        this.f57023b.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.r2
            @Override // java.lang.Runnable
            public final void run() {
                t2.this.c(z10, z11);
            }
        });
    }

    public void f(final boolean z10) {
        if (this.f57025d == z10) {
            return;
        }
        this.f57025d = z10;
        if (this.f57024c) {
            this.f57023b.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.s2
                @Override // java.lang.Runnable
                public final void run() {
                    t2.this.d(z10);
                }
            });
        }
    }
}
