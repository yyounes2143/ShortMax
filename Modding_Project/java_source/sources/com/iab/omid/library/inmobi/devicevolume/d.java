package com.iab.omid.library.inmobi.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22860a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f22861b;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.inmobi.devicevolume.a f22862c;

    /* renamed from: d  reason: collision with root package name */
    private final c f22863d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicReference<Float> f22864e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            float a10 = d.this.a();
            if (((Float) d.this.f22864e.getAndSet(Float.valueOf(a10))).floatValue() != a10) {
                d.this.f22863d.a(a10);
            }
        }
    }

    public d(Handler handler, Context context, com.iab.omid.library.inmobi.devicevolume.a aVar, c cVar) {
        super(handler);
        this.f22864e = new AtomicReference<>(Float.valueOf(-1.0f));
        this.f22860a = context;
        this.f22861b = (AudioManager) context.getSystemService("audio");
        this.f22862c = aVar;
        this.f22863d = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float a() {
        return this.f22862c.a(this.f22861b.getStreamVolume(3), this.f22861b.getStreamMaxVolume(3));
    }

    private void d() {
        new Thread(new a()).start();
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z10) {
        d();
    }

    public void b() {
        d();
        this.f22860a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void c() {
        this.f22860a.getContentResolver().unregisterContentObserver(this);
    }
}
