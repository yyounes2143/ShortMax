package com.iab.omid.library.mmadbridge.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22996a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f22997b;

    /* renamed from: c  reason: collision with root package name */
    private final a f22998c;

    /* renamed from: d  reason: collision with root package name */
    private final c f22999d;

    /* renamed from: e  reason: collision with root package name */
    private float f23000e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f22996a = context;
        this.f22997b = (AudioManager) context.getSystemService("audio");
        this.f22998c = aVar;
        this.f22999d = cVar;
    }

    private float a() {
        return this.f22998c.a(this.f22997b.getStreamVolume(3), this.f22997b.getStreamMaxVolume(3));
    }

    private void b() {
        this.f22999d.a(this.f23000e);
    }

    public void c() {
        this.f23000e = a();
        b();
        this.f22996a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void d() {
        this.f22996a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        super.onChange(z10);
        float a10 = a();
        if (a(a10)) {
            this.f23000e = a10;
            b();
        }
    }

    private boolean a(float f10) {
        return f10 != this.f23000e;
    }
}
