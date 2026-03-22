package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
/* compiled from: AudioBecomingNoisyManager.java */
/* loaded from: classes4.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17424a;

    /* renamed from: b  reason: collision with root package name */
    private final a f17425b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f17426c;

    /* compiled from: AudioBecomingNoisyManager.java */
    /* loaded from: classes4.dex */
    private final class a extends BroadcastReceiver implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final InterfaceC0287b f17427a;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f17428b;

        public a(Handler handler, InterfaceC0287b interfaceC0287b) {
            this.f17428b = handler;
            this.f17427a = interfaceC0287b;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.f17428b.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f17426c) {
                this.f17427a.i();
            }
        }
    }

    /* compiled from: AudioBecomingNoisyManager.java */
    /* renamed from: com.google.android.exoplayer2.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public interface InterfaceC0287b {
        void i();
    }

    public b(Context context, Handler handler, InterfaceC0287b interfaceC0287b) {
        this.f17424a = context.getApplicationContext();
        this.f17425b = new a(handler, interfaceC0287b);
    }

    public void b(boolean z10) {
        if (z10 && !this.f17426c) {
            b7.s0.E0(this.f17424a, this.f17425b, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
            this.f17426c = true;
        } else if (!z10 && this.f17426c) {
            this.f17424a.unregisterReceiver(this.f17425b);
            this.f17426c = false;
        }
    }
}
