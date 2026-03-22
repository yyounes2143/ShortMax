package com.iab.omid.library.bytedance2.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22731a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f22732b;

    /* renamed from: c  reason: collision with root package name */
    private final a f22733c;

    /* renamed from: d  reason: collision with root package name */
    private final c f22734d;

    /* renamed from: e  reason: collision with root package name */
    private float f22735e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f22731a = context;
        this.f22732b = (AudioManager) context.getSystemService("audio");
        this.f22733c = aVar;
        this.f22734d = cVar;
    }

    private float a() {
        return this.f22733c.a(this.f22732b.getStreamVolume(3), this.f22732b.getStreamMaxVolume(3));
    }

    private void b() {
        this.f22734d.a(this.f22735e);
    }

    public void c() {
        this.f22735e = a();
        b();
        this.f22731a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void d() {
        this.f22731a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        super.onChange(z10);
        float a10 = a();
        if (a(a10)) {
            this.f22735e = a10;
            b();
        }
    }

    private boolean a(float f10) {
        return f10 != this.f22735e;
    }
}
