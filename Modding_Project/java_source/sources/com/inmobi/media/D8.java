package com.inmobi.media;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.D8;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class D8 {

    /* renamed from: a  reason: collision with root package name */
    public final AdConfig f23570a;

    /* renamed from: b  reason: collision with root package name */
    public final T7 f23571b;

    /* renamed from: c  reason: collision with root package name */
    public final C3113p8 f23572c;

    /* renamed from: d  reason: collision with root package name */
    public final C3224w8 f23573d;

    /* renamed from: e  reason: collision with root package name */
    public final C3208v8 f23574e;

    /* renamed from: f  reason: collision with root package name */
    public final InterfaceC3269z5 f23575f;

    /* renamed from: g  reason: collision with root package name */
    public final String f23576g;

    /* renamed from: h  reason: collision with root package name */
    public final Handler f23577h;

    /* renamed from: i  reason: collision with root package name */
    public final WeakReference f23578i;

    /* renamed from: j  reason: collision with root package name */
    public L8 f23579j;

    /* renamed from: k  reason: collision with root package name */
    public int f23580k;

    /* renamed from: l  reason: collision with root package name */
    public final C2879b1 f23581l;

    /* renamed from: m  reason: collision with root package name */
    public final D9 f23582m;

    /* renamed from: n  reason: collision with root package name */
    public boolean f23583n;

    /* renamed from: o  reason: collision with root package name */
    public GestureDetector$OnGestureListenerC2941ec f23584o;

    /* renamed from: p  reason: collision with root package name */
    public C3240x8 f23585p;

    public D8(Context context, AdConfig adConfig, T7 nativeAdContainer, C3113p8 dataModel, C3224w8 viewEventListener, C3208v8 clickEventListener, C3240x8 timerFinishListener, InterfaceC3269z5 interfaceC3269z5) {
        D9 d92;
        D9 d93;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(nativeAdContainer, "nativeAdContainer");
        Intrinsics.checkNotNullParameter(dataModel, "dataModel");
        Intrinsics.checkNotNullParameter(viewEventListener, "viewEventListener");
        Intrinsics.checkNotNullParameter(clickEventListener, "clickEventListener");
        Intrinsics.checkNotNullParameter(timerFinishListener, "timerFinishListener");
        this.f23570a = adConfig;
        this.f23571b = nativeAdContainer;
        this.f23572c = dataModel;
        this.f23573d = viewEventListener;
        this.f23574e = clickEventListener;
        this.f23575f = interfaceC3269z5;
        this.f23576g = D8.class.getSimpleName();
        this.f23577h = new Handler(Looper.getMainLooper());
        this.f23578i = new WeakReference(context);
        this.f23581l = new C2879b1();
        HashMap hashMap = D9.f23586c;
        Intrinsics.checkNotNullParameter(context, "context");
        WeakReference weakReference = D9.f23587d;
        if (weakReference != null) {
            d92 = (D9) weakReference.get();
        } else {
            d92 = null;
        }
        if (d92 == null) {
            synchronized (D9.class) {
                try {
                    WeakReference weakReference2 = D9.f23587d;
                    if (weakReference2 != null) {
                        d93 = (D9) weakReference2.get();
                        if (d93 == null) {
                        }
                        Intrinsics.checkNotNull(d93);
                    }
                    d93 = new D9(context);
                    D9.f23587d = new WeakReference(d93);
                    Intrinsics.checkNotNull(d93);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            d92 = d93;
        }
        this.f23582m = d92;
        this.f23585p = timerFinishListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.ViewGroup a(android.view.ViewGroup r4, com.inmobi.media.C2985h8 r5) {
        /*
            r3 = this;
            java.lang.String r0 = "parent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "root"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.ref.WeakReference r0 = r3.f23578i
            java.lang.Object r0 = r0.get()
            android.content.Context r0 = (android.content.Context) r0
            if (r0 == 0) goto L23
            com.inmobi.media.D9 r1 = r3.f23582m
            com.inmobi.commons.core.configs.AdConfig r2 = r3.f23570a
            android.view.View r0 = r1.a(r0, r5, r2)
            boolean r1 = r0 instanceof android.view.ViewGroup
            if (r1 == 0) goto L23
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            goto L24
        L23:
            r0 = 0
        L24:
            if (r0 != 0) goto L27
            goto L30
        L27:
            java.util.HashMap r1 = com.inmobi.media.D9.f23586c
            android.view.ViewGroup$LayoutParams r4 = com.inmobi.media.C3082n9.a(r5, r4)
            r0.setLayoutParams(r4)
        L30:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.D8.a(android.view.ViewGroup, com.inmobi.media.h8):android.view.ViewGroup");
    }

    public final void b(View view, final C2920d8 c2920d8) {
        if (c2920d8.f24583f) {
            view.setOnClickListener(new View.OnClickListener() { // from class: ub.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    D8.a(D8.this, c2920d8, view2);
                }
            });
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x012d, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(com.huawei.hms.framework.network.grs.GrsBaseInfo.CountryCodeSource.UNKNOWN, r0.f23652y) != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x013c, code lost:
        if (r13.f24582e == null) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03a8 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0158  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [byte, int, boolean] */
    /* JADX WARN: Type inference failed for: r10v25 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.ViewGroup b(android.view.ViewGroup r23, com.inmobi.media.C2985h8 r24) {
        /*
            Method dump skipped, instructions count: 955
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.D8.b(android.view.ViewGroup, com.inmobi.media.h8):android.view.ViewGroup");
    }

    public final J8 a(J8 j82, final ViewGroup parent, GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.f23584o = gestureDetector$OnGestureListenerC2941ec;
        final J8 a10 = a(j82, parent);
        this.f23577h.post(new Runnable() { // from class: ub.p
            @Override // java.lang.Runnable
            public final void run() {
                D8.a(D8.this, a10, parent);
            }
        });
        return a10;
    }

    public static final void a(D8 this$0, J8 container, ViewGroup parent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(parent, "$parent");
        if (this$0.f23583n) {
            return;
        }
        C2985h8 root = this$0.f23572c.f25138e;
        if (container == null || root == null) {
            return;
        }
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(root, "root");
        this$0.b((ViewGroup) container, root);
    }

    public final J8 a(J8 j82, ViewGroup viewGroup) {
        J8 viewGroup2;
        C2985h8 c2985h8 = this.f23572c.f25138e;
        if (j82 == null) {
            Context context = (Context) this.f23578i.get();
            if (context != null && c2985h8 != null) {
                View a10 = this.f23582m.a(context, c2985h8, this.f23570a);
                if (a10 instanceof J8) {
                    viewGroup2 = (J8) a10;
                }
            }
            viewGroup2 = null;
        } else {
            viewGroup2 = j82;
        }
        if (viewGroup2 != null && j82 != null) {
            ViewParent parent = viewGroup2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(viewGroup2);
            }
            D9 d92 = this.f23582m;
            d92.getClass();
            Intrinsics.checkNotNullParameter(viewGroup2, "viewGroup");
            for (int childCount = viewGroup2.getChildCount() - 1; -1 < childCount; childCount--) {
                View childAt = viewGroup2.getChildAt(childCount);
                viewGroup2.removeViewAt(childCount);
                Intrinsics.checkNotNull(childAt);
                d92.a(childAt);
            }
            if (c2985h8 != null) {
                HashMap hashMap = D9.f23586c;
                C3082n9.a(viewGroup2, c2985h8.f24581d);
            }
        }
        if (c2985h8 != null) {
            D9 d93 = this.f23582m;
            int i10 = c2985h8.f24581d.f24637a.x;
            d93.getClass();
            D9.f23590g = i10;
        }
        if (viewGroup2 != null && c2985h8 != null) {
            HashMap hashMap2 = D9.f23586c;
            viewGroup2.setLayoutParams(C3082n9.a(c2985h8, viewGroup));
        }
        return viewGroup2;
    }

    public final void a(View view, C2920d8 nativeAsset) {
        boolean z10 = false;
        C2879b1 c2879b1 = this.f23581l;
        c2879b1.getClass();
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(nativeAsset, "nativeAsset");
        ArrayList arrayList = new ArrayList();
        try {
            HashMap hashMap = D9.f23586c;
            float a10 = C3082n9.a(nativeAsset.f24581d.f24639c.x);
            float a11 = C3082n9.a(nativeAsset.f24581d.f24640d.x);
            if (a10 != a11) {
                arrayList.add(C2879b1.a(C2879b1.a(view, a10, a11), nativeAsset));
            }
            float a12 = C3082n9.a(nativeAsset.f24581d.f24639c.y);
            float a13 = C3082n9.a(nativeAsset.f24581d.f24640d.y);
            if (a12 != a13) {
                arrayList.add(C2879b1.a(C2879b1.b(view, a12, a13), nativeAsset));
            }
            float a14 = C3082n9.a(nativeAsset.f24581d.f24637a.x);
            float a15 = C3082n9.a(nativeAsset.f24581d.f24638b.x);
            if (a14 != a15) {
                view.setPivotX(0.0f);
                view.setPivotY(0.0f);
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", a15 / a14);
                Intrinsics.checkNotNullExpressionValue(ofFloat, "ofFloat(...)");
                arrayList.add(C2879b1.a(ofFloat, nativeAsset));
            }
            float a16 = C3082n9.a(nativeAsset.f24581d.f24637a.y);
            float a17 = C3082n9.a(nativeAsset.f24581d.f24638b.y);
            if (a16 != a17) {
                view.setPivotX(0.0f);
                view.setPivotY(0.0f);
                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", a17 / a16);
                Intrinsics.checkNotNullExpressionValue(ofFloat2, "ofFloat(...)");
                arrayList.add(C2879b1.a(ofFloat2, nativeAsset));
            }
        } catch (Exception unused) {
            String TAG = c2879b1.f24514a;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        }
        if (arrayList.isEmpty()) {
            arrayList = null;
        }
        Intrinsics.checkNotNullParameter("creativeView", "eventType");
        Iterator it = nativeAsset.f24596s.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (Intrinsics.areEqual("creativeView", ((U8) it.next()).f24261b)) {
                z10 = true;
                break;
            }
        }
        if (arrayList != null || z10) {
            view.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC3256y8(this, arrayList, nativeAsset));
        }
    }

    public static final void a(WeakReference childViewRef) {
        Intrinsics.checkNotNullParameter(childViewRef, "$childViewRef");
        View view = (View) childViewRef.get();
        if (view != null) {
            view.setVisibility(4);
        }
    }

    public static final void a(D8 this$0, C2920d8 asset, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(asset, "$asset");
        C3208v8 c3208v8 = this$0.f23574e;
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(asset, "asset");
        C3240x8 c3240x8 = c3208v8.f25373a;
        if (c3240x8.f25428a) {
            return;
        }
        c3240x8.f25429b.a(view, asset);
        c3208v8.f25373a.f25429b.a(asset, false);
    }

    public static final void b(WeakReference childViewRef) {
        Intrinsics.checkNotNullParameter(childViewRef, "$childViewRef");
        View view = (View) childViewRef.get();
        if (view != null) {
            view.setVisibility(0);
        }
    }
}
