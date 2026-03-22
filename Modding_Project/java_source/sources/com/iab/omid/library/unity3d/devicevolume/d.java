package com.iab.omid.library.unity3d.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f23132a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f23133b;

    /* renamed from: c  reason: collision with root package name */
    private final a f23134c;

    /* renamed from: d  reason: collision with root package name */
    private final c f23135d;

    /* renamed from: e  reason: collision with root package name */
    private float f23136e;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f23132a = context;
        this.f23133b = (AudioManager) context.getSystemService("audio");
        this.f23134c = aVar;
        this.f23135d = cVar;
    }

    private float a() {
        return this.f23134c.a(this.f23133b.getStreamVolume(3), this.f23133b.getStreamMaxVolume(3));
    }

    private void b() {
        this.f23135d.a(this.f23136e);
    }

    public void c() {
        this.f23136e = a();
        b();
        this.f23132a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void d() {
        this.f23132a.getContentResolver().unregisterContentObserver(this);
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        super.onChange(z10);
        float a10 = a();
        if (a(a10)) {
            this.f23136e = a10;
            b();
        }
    }

    private boolean a(float f10) {
        return f10 != this.f23136e;
    }
}
