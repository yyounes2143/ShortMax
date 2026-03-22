package com.mbridge.msdk.mbsignalcommon.mraid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import java.lang.ref.WeakReference;
/* compiled from: MraidVolumeChangeReceiver.java */
/* loaded from: classes4.dex */
public class d {

    /* renamed from: f  reason: collision with root package name */
    public static double f28206f = -1.0d;

    /* renamed from: a  reason: collision with root package name */
    private Context f28207a;

    /* renamed from: b  reason: collision with root package name */
    private AudioManager f28208b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28209c = false;

    /* renamed from: d  reason: collision with root package name */
    private b f28210d;

    /* renamed from: e  reason: collision with root package name */
    private a f28211e;

    /* compiled from: MraidVolumeChangeReceiver.java */
    /* loaded from: classes4.dex */
    private static class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<d> f28212a;

        public a(d dVar) {
            this.f28212a = new WeakReference<>(dVar);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            d dVar;
            b b10;
            if ("android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction()) && intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) == 3 && (dVar = this.f28212a.get()) != null && (b10 = dVar.b()) != null) {
                double a10 = dVar.a();
                if (a10 >= 0.0d) {
                    b10.a(a10);
                }
            }
        }
    }

    /* compiled from: MraidVolumeChangeReceiver.java */
    /* loaded from: classes4.dex */
    public interface b {
        void a(double d10);
    }

    public d(Context context) {
        this.f28207a = context;
        this.f28208b = (AudioManager) context.getApplicationContext().getSystemService("audio");
    }

    public double a() {
        AudioManager audioManager = this.f28208b;
        int streamMaxVolume = audioManager != null ? audioManager.getStreamMaxVolume(3) : -1;
        AudioManager audioManager2 = this.f28208b;
        double streamVolume = ((audioManager2 != null ? audioManager2.getStreamVolume(3) : -1) * 100.0d) / streamMaxVolume;
        f28206f = streamVolume;
        return streamVolume;
    }

    public b b() {
        return this.f28210d;
    }

    public void c() {
        if (this.f28207a != null) {
            this.f28211e = new a(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            this.f28207a.registerReceiver(this.f28211e, intentFilter);
            this.f28209c = true;
        }
    }

    public void d() {
        Context context;
        if (this.f28209c && (context = this.f28207a) != null) {
            try {
                context.unregisterReceiver(this.f28211e);
                this.f28210d = null;
                this.f28209c = false;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void a(b bVar) {
        this.f28210d = bVar;
    }
}
