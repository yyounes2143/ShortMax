package com.iab.omid.library.vungle.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f23259a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f23260b;

    /* renamed from: c  reason: collision with root package name */
    private final a f23261c;

    /* renamed from: d  reason: collision with root package name */
    private final c f23262d;

    /* renamed from: e  reason: collision with root package name */
    private float f23263e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f23259a = context;
        this.f23260b = (AudioManager) context.getSystemService("audio");
        this.f23261c = aVar;
        this.f23262d = cVar;
    }

    private float a() {
        return this.f23261c.a(this.f23260b.getStreamVolume(3), this.f23260b.getStreamMaxVolume(3));
    }

    private void b() {
        this.f23262d.a(this.f23263e);
    }

    public void c() {
        this.f23263e = a();
        b();
        this.f23259a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void d() {
        this.f23259a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        super.onChange(z10);
        float a10 = a();
        if (a(a10)) {
            this.f23263e = a10;
            b();
        }
    }

    private boolean a(float f10) {
        return f10 != this.f23263e;
    }
}
