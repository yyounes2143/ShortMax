package com.applovin.impl.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.i;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class i extends BroadcastReceiver implements AppLovinBroadcastManager.Receiver {

    /* renamed from: h  reason: collision with root package name */
    public static int f9694h = -1;

    /* renamed from: i  reason: collision with root package name */
    private static final Float f9695i = Float.valueOf(15.0f);

    /* renamed from: a  reason: collision with root package name */
    private final AudioManager f9696a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f9697b;

    /* renamed from: c  reason: collision with root package name */
    private final k f9698c;

    /* renamed from: d  reason: collision with root package name */
    private final Set f9699d = new HashSet();

    /* renamed from: e  reason: collision with root package name */
    private final Object f9700e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private boolean f9701f;

    /* renamed from: g  reason: collision with root package name */
    private int f9702g;

    /* loaded from: classes2.dex */
    public interface a {
        void a(int i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(k kVar) {
        this.f9698c = kVar;
        Context o10 = k.o();
        this.f9697b = o10;
        this.f9696a = (AudioManager) o10.getSystemService("audio");
    }

    public static boolean a(int i10) {
        return i10 == 0 || i10 == 1;
    }

    private void d() {
        this.f9698c.O();
        if (o.a()) {
            this.f9698c.O().a("AudioSessionManager", "Observing ringer mode...");
        }
        this.f9702g = f9694h;
        this.f9697b.registerReceiver(this, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_PAUSED));
        AppLovinBroadcastManager.registerReceiver(this, new IntentFilter(SessionTracker.ACTION_APPLICATION_RESUMED));
    }

    private void e() {
        this.f9698c.O();
        if (o.a()) {
            this.f9698c.O().a("AudioSessionManager", "Stopping observation of mute switch state...");
        }
        this.f9697b.unregisterReceiver(this);
        AppLovinBroadcastManager.unregisterReceiver(this);
    }

    public int c() {
        return this.f9696a.getRingerMode();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.media.RINGER_MODE_CHANGED".equals(intent.getAction())) {
            b(this.f9696a.getRingerMode());
        }
    }

    private Float a() {
        AudioManager audioManager = this.f9696a;
        if (audioManager == null) {
            return f9695i;
        }
        try {
            return Float.valueOf(audioManager.getStreamMaxVolume(3));
        } catch (Throwable th2) {
            this.f9698c.O();
            if (o.a()) {
                this.f9698c.O().a("AudioSessionManager", "Unable to collect the maximum device volume", th2);
            }
            return f9695i;
        }
    }

    public Float b() {
        AudioManager audioManager = this.f9696a;
        if (audioManager == null) {
            return null;
        }
        try {
            return Float.valueOf(audioManager.getStreamVolume(3) / a().floatValue());
        } catch (Throwable th2) {
            this.f9698c.O();
            if (o.a()) {
                this.f9698c.O().a("AudioSessionManager", "Unable to collect device volume", th2);
            }
            return null;
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Intent intent, Map map) {
        String action = intent.getAction();
        if (SessionTracker.ACTION_APPLICATION_PAUSED.equals(action)) {
            this.f9701f = true;
            this.f9702g = this.f9696a.getRingerMode();
        } else if (SessionTracker.ACTION_APPLICATION_RESUMED.equals(action)) {
            this.f9701f = false;
            if (this.f9702g != this.f9696a.getRingerMode()) {
                this.f9702g = f9694h;
                b(this.f9696a.getRingerMode());
            }
        }
    }

    public void b(a aVar) {
        synchronized (this.f9700e) {
            try {
                if (this.f9699d.contains(aVar)) {
                    this.f9699d.remove(aVar);
                    if (this.f9699d.isEmpty()) {
                        e();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void a(a aVar) {
        synchronized (this.f9700e) {
            try {
                if (this.f9699d.contains(aVar)) {
                    return;
                }
                this.f9699d.add(aVar);
                if (this.f9699d.size() == 1) {
                    d();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void b(final int i10) {
        if (this.f9701f) {
            return;
        }
        this.f9698c.O();
        if (o.a()) {
            o O = this.f9698c.O();
            O.a("AudioSessionManager", "Ringer mode is " + i10);
        }
        synchronized (this.f9700e) {
            try {
                for (final a aVar : this.f9699d) {
                    AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.i0
                        @Override // java.lang.Runnable
                        public final void run() {
                            i.a.this.a(i10);
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
