package com.google.android.exoplayer2;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StreamVolumeManager.java */
/* loaded from: classes4.dex */
public final class r1 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f18168a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f18169b;

    /* renamed from: c  reason: collision with root package name */
    private final b f18170c;

    /* renamed from: d  reason: collision with root package name */
    private final AudioManager f18171d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private c f18172e;

    /* renamed from: f  reason: collision with root package name */
    private int f18173f;

    /* renamed from: g  reason: collision with root package name */
    private int f18174g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f18175h;

    /* compiled from: StreamVolumeManager.java */
    /* loaded from: classes4.dex */
    public interface b {
        void q(int i10);

        void x(int i10, boolean z10);
    }

    /* compiled from: StreamVolumeManager.java */
    /* loaded from: classes4.dex */
    private final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Handler handler = r1.this.f18169b;
            final r1 r1Var = r1.this;
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.s1
                @Override // java.lang.Runnable
                public final void run() {
                    r1.b(r1.this);
                }
            });
        }
    }

    public r1(Context context, Handler handler, b bVar) {
        Context applicationContext = context.getApplicationContext();
        this.f18168a = applicationContext;
        this.f18169b = handler;
        this.f18170c = bVar;
        AudioManager audioManager = (AudioManager) b7.a.i((AudioManager) applicationContext.getSystemService("audio"));
        this.f18171d = audioManager;
        this.f18173f = 3;
        this.f18174g = f(audioManager, 3);
        this.f18175h = e(audioManager, this.f18173f);
        c cVar = new c();
        try {
            b7.s0.E0(applicationContext, cVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.f18172e = cVar;
        } catch (RuntimeException e10) {
            b7.q.j("StreamVolumeManager", "Error registering stream volume receiver", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(r1 r1Var) {
        r1Var.i();
    }

    private static boolean e(AudioManager audioManager, int i10) {
        if (b7.s0.f2506a >= 23) {
            return audioManager.isStreamMute(i10);
        }
        if (f(audioManager, i10) == 0) {
            return true;
        }
        return false;
    }

    private static int f(AudioManager audioManager, int i10) {
        try {
            return audioManager.getStreamVolume(i10);
        } catch (RuntimeException e10) {
            b7.q.j("StreamVolumeManager", "Could not retrieve stream volume for stream type " + i10, e10);
            return audioManager.getStreamMaxVolume(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        int f10 = f(this.f18171d, this.f18173f);
        boolean e10 = e(this.f18171d, this.f18173f);
        if (this.f18174g != f10 || this.f18175h != e10) {
            this.f18174g = f10;
            this.f18175h = e10;
            this.f18170c.x(f10, e10);
        }
    }

    public int c() {
        return this.f18171d.getStreamMaxVolume(this.f18173f);
    }

    public int d() {
        int streamMinVolume;
        if (b7.s0.f2506a >= 28) {
            streamMinVolume = this.f18171d.getStreamMinVolume(this.f18173f);
            return streamMinVolume;
        }
        return 0;
    }

    public void g() {
        c cVar = this.f18172e;
        if (cVar != null) {
            try {
                this.f18168a.unregisterReceiver(cVar);
            } catch (RuntimeException e10) {
                b7.q.j("StreamVolumeManager", "Error unregistering stream volume receiver", e10);
            }
            this.f18172e = null;
        }
    }

    public void h(int i10) {
        if (this.f18173f == i10) {
            return;
        }
        this.f18173f = i10;
        i();
        this.f18170c.q(i10);
    }
}
