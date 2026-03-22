package io.bidmachine.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;
import io.bidmachine.media3.exoplayer.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AudioBecomingNoisyManager.java */
/* loaded from: classes8.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f55608a;

    /* renamed from: b  reason: collision with root package name */
    private final a f55609b;

    /* renamed from: c  reason: collision with root package name */
    private final cn.n f55610c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f55611d;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AudioBecomingNoisyManager.java */
    /* loaded from: classes8.dex */
    public final class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private final b f55612a;

        /* renamed from: b  reason: collision with root package name */
        private final cn.n f55613b;

        public a(cn.n nVar, b bVar) {
            this.f55613b = nVar;
            this.f55612a = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            if (d.this.f55611d) {
                this.f55612a.i();
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f55613b.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        d.a.this.b();
                    }
                });
            }
        }
    }

    /* compiled from: AudioBecomingNoisyManager.java */
    /* loaded from: classes8.dex */
    public interface b {
        void i();
    }

    public d(Context context, Looper looper, Looper looper2, b bVar, cn.h hVar) {
        this.f55608a = context.getApplicationContext();
        this.f55610c = hVar.createHandler(looper, null);
        this.f55609b = new a(hVar.createHandler(looper2, null), bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f55608a.registerReceiver(this.f55609b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        this.f55608a.unregisterReceiver(this.f55609b);
    }

    @SuppressLint({"UnprotectedReceiver"})
    public void f(boolean z10) {
        if (z10 == this.f55611d) {
            return;
        }
        if (z10) {
            this.f55610c.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.a
                @Override // java.lang.Runnable
                public final void run() {
                    d.this.d();
                }
            });
            this.f55611d = true;
            return;
        }
        this.f55610c.post(new Runnable() { // from class: io.bidmachine.media3.exoplayer.b
            @Override // java.lang.Runnable
            public final void run() {
                d.this.e();
            }
        });
        this.f55611d = false;
    }
}
