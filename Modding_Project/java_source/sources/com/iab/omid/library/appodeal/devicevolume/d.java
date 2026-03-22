package com.iab.omid.library.appodeal.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22595a;

    /* renamed from: b  reason: collision with root package name */
    private final AudioManager f22596b;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.appodeal.devicevolume.a f22597c;

    /* renamed from: d  reason: collision with root package name */
    private final c f22598d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicReference<Float> f22599e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            float a10 = d.this.a();
            if (((Float) d.this.f22599e.getAndSet(Float.valueOf(a10))).floatValue() != a10) {
                d.this.f22598d.a(a10);
            }
        }
    }

    public d(Handler handler, Context context, com.iab.omid.library.appodeal.devicevolume.a aVar, c cVar) {
        super(handler);
        this.f22599e = new AtomicReference<>(Float.valueOf(-1.0f));
        this.f22595a = context;
        this.f22596b = (AudioManager) context.getSystemService("audio");
        this.f22597c = aVar;
        this.f22598d = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float a() {
        return this.f22597c.a(this.f22596b.getStreamVolume(3), this.f22596b.getStreamMaxVolume(3));
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
        this.f22595a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public void c() {
        this.f22595a.getContentResolver().unregisterContentObserver(this);
    }
}
