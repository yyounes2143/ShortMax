package com.applovin.impl;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class c5 {

    /* renamed from: a  reason: collision with root package name */
    private final WeakHashMap f7702a = new WeakHashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Object f7703b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final Handler f7704c = new Handler();

    /* renamed from: d  reason: collision with root package name */
    private boolean f7705d = false;

    /* renamed from: e  reason: collision with root package name */
    private final WeakReference f7706e;

    /* renamed from: f  reason: collision with root package name */
    private final ViewTreeObserver.OnPreDrawListener f7707f;

    /* renamed from: g  reason: collision with root package name */
    private a f7708g;

    /* loaded from: classes2.dex */
    public interface a {
        void a(int i10, int i11);
    }

    public c5(View view) {
        this.f7706e = new WeakReference(view);
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            ViewTreeObserver.OnPreDrawListener onPreDrawListener = new ViewTreeObserver.OnPreDrawListener() { // from class: com.applovin.impl.f9
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    boolean b10;
                    b10 = c5.this.b();
                    return b10;
                }
            };
            this.f7707f = onPreDrawListener;
            viewTreeObserver.addOnPreDrawListener(onPreDrawListener);
            return;
        }
        this.f7707f = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        synchronized (this.f7703b) {
            try {
                this.f7705d = false;
                int i10 = -1;
                int i11 = -1;
                for (Map.Entry entry : this.f7702a.entrySet()) {
                    if (a((View) entry.getKey())) {
                        Integer num = (Integer) entry.getValue();
                        if (i10 == -1 && i11 == -1) {
                            i10 = num.intValue();
                            i11 = num.intValue();
                        } else {
                            i10 = Math.min(i10, ((Integer) entry.getValue()).intValue());
                            i11 = Math.max(i11, ((Integer) entry.getValue()).intValue());
                        }
                    }
                }
                a aVar = this.f7708g;
                if (aVar != null) {
                    aVar.a(i10, i11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void d() {
        if (this.f7705d) {
            return;
        }
        this.f7705d = true;
        this.f7704c.postDelayed(new Runnable() { // from class: com.applovin.impl.e9
            @Override // java.lang.Runnable
            public final void run() {
                c5.this.c();
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b() {
        d();
        return true;
    }

    public void a() {
        ViewTreeObserver.OnPreDrawListener onPreDrawListener;
        this.f7708g = null;
        View view = (View) this.f7706e.get();
        if (view != null) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive() && (onPreDrawListener = this.f7707f) != null) {
                viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            }
            this.f7706e.clear();
        }
    }

    public void b(View view) {
        synchronized (this.f7703b) {
            this.f7702a.remove(view);
        }
    }

    public void a(a aVar) {
        this.f7708g = aVar;
    }

    public void a(View view, int i10) {
        synchronized (this.f7703b) {
            this.f7702a.put(view, Integer.valueOf(i10));
            d();
        }
    }

    private boolean a(View view) {
        return (view == null || view.getVisibility() != 0 || view.getParent() == null) ? false : true;
    }
}
