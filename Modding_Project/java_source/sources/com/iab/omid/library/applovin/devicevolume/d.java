package com.iab.omid.library.applovin.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22460a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f22461b;

    /* renamed from: c  reason: collision with root package name */
    private final a f22462c;

    /* renamed from: d  reason: collision with root package name */
    private final c f22463d;

    /* renamed from: e  reason: collision with root package name */
    private float f22464e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f22460a = context;
        this.f22461b = (AudioManager) context.getSystemService("audio");
        this.f22462c = aVar;
        this.f22463d = cVar;
    }

    private float a() {
        return this.f22462c.a(this.f22461b.getStreamVolume(3), this.f22461b.getStreamMaxVolume(3));
    }

    private void b() {
        this.f22463d.a(this.f22464e);
    }

    public void c() {
        this.f22464e = a();
        b();
        this.f22460a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void d() {
        this.f22460a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        super.onChange(z10);
        float a10 = a();
        if (a(a10)) {
            this.f22464e = a10;
            b();
        }
    }

    private boolean a(float f10) {
        return f10 != this.f22464e;
    }
}
