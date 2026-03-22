package com.mbridge.msdk.mbnative.controller;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import com.mbridge.msdk.foundation.tools.d1;
import com.mbridge.msdk.foundation.tools.p0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* compiled from: ImpressionTracker.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<ViewTreeObserver> f28030a;

    /* renamed from: b  reason: collision with root package name */
    private List<View> f28031b;

    /* renamed from: c  reason: collision with root package name */
    private ViewTreeObserver.OnPreDrawListener f28032c;

    /* renamed from: d  reason: collision with root package name */
    private d f28033d;

    /* renamed from: e  reason: collision with root package name */
    private Handler f28034e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f28035f;

    /* renamed from: g  reason: collision with root package name */
    private int f28036g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImpressionTracker.java */
    /* loaded from: classes2.dex */
    public class a implements ViewTreeObserver.OnPreDrawListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            c.this.b();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImpressionTracker.java */
    /* loaded from: classes2.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.d();
        }
    }

    /* compiled from: ImpressionTracker.java */
    /* renamed from: com.mbridge.msdk.mbnative.controller.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class RunnableC0391c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f28039a;

        RunnableC0391c(View view) {
            this.f28039a = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewTreeObserver viewTreeObserver = this.f28039a.getViewTreeObserver();
            if (viewTreeObserver != null && !viewTreeObserver.isAlive()) {
                return;
            }
            c.this.f28030a = new WeakReference(viewTreeObserver);
            if (c.this.f28032c != null) {
                viewTreeObserver.addOnPreDrawListener(c.this.f28032c);
            }
        }
    }

    /* compiled from: ImpressionTracker.java */
    /* loaded from: classes2.dex */
    public interface d {
        void a(ArrayList<View> arrayList, ArrayList<View> arrayList2);
    }

    public c(List<View> list, d dVar, Handler handler, int i10) {
        ArrayList arrayList = new ArrayList();
        this.f28031b = arrayList;
        this.f28032c = null;
        this.f28033d = dVar;
        this.f28034e = handler;
        this.f28036g = i10;
        if (list != null) {
            this.f28031b = list;
        } else {
            arrayList.clear();
        }
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        try {
            this.f28035f = false;
            List<View> list = this.f28031b;
            if (list != null && list.size() > 0) {
                ArrayList<View> arrayList = new ArrayList<>();
                ArrayList<View> arrayList2 = new ArrayList<>();
                for (int i10 = 0; i10 < this.f28031b.size(); i10++) {
                    View view = this.f28031b.get(i10);
                    if (b(view)) {
                        arrayList.add(view);
                    } else {
                        arrayList2.add(view);
                    }
                }
                d dVar = this.f28033d;
                if (dVar != null) {
                    dVar.a(arrayList, arrayList2);
                }
                if (arrayList.size() > 0) {
                    a();
                }
                arrayList.clear();
                arrayList2.clear();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.f28035f) {
            return;
        }
        Handler handler = this.f28034e;
        if (handler != null) {
            if (this.f28036g == 1) {
                d();
            } else {
                handler.postDelayed(new b(), 100L);
            }
        }
        this.f28035f = true;
    }

    private void c() {
        try {
            b();
        } catch (Throwable th2) {
            p0.b("ImpressionTracker", th2.getMessage(), th2);
        }
        try {
            this.f28032c = new a();
        } catch (Throwable th3) {
            p0.b("ImpressionTracker", th3.getMessage(), th3);
        }
    }

    public void a(View view) {
        View view2;
        View view3;
        if (view != null) {
            view2 = f.a(view.getContext(), view);
            this.f28031b.add(view);
        } else {
            List<View> list = this.f28031b;
            view2 = null;
            if (list != null && list.size() > 0) {
                for (int i10 = 0; i10 < this.f28031b.size() && ((view3 = this.f28031b.get(i10)) == null || (view2 = f.a(view3.getContext(), view3)) == null); i10++) {
                }
            }
        }
        if (view2 == null) {
            return;
        }
        view2.post(new RunnableC0391c(view2));
    }

    private boolean b(View view) {
        return !d1.a(view, this.f28036g);
    }

    public void a() {
        try {
            this.f28035f = false;
            WeakReference<ViewTreeObserver> weakReference = this.f28030a;
            if (weakReference != null && weakReference.get() != null) {
                ViewTreeObserver viewTreeObserver = this.f28030a.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnPreDrawListener(this.f28032c);
                }
                this.f28030a.clear();
            }
            this.f28033d = null;
            this.f28032c = null;
            List<View> list = this.f28031b;
            if (list != null) {
                list.clear();
            }
            this.f28031b = null;
        } catch (Throwable unused) {
        }
    }
}
