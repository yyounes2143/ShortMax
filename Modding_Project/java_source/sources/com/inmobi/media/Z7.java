package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Z7 {

    /* renamed from: a  reason: collision with root package name */
    public final byte f24439a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3269z5 f24440b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24441c = Z7.class.getSimpleName();

    /* renamed from: d  reason: collision with root package name */
    public final WeakHashMap f24442d = new WeakHashMap();

    /* renamed from: e  reason: collision with root package name */
    public final WeakHashMap f24443e = new WeakHashMap();

    /* renamed from: f  reason: collision with root package name */
    public final LinkedHashMap f24444f = new LinkedHashMap();

    /* renamed from: g  reason: collision with root package name */
    public final W7 f24445g = new W7();

    /* renamed from: h  reason: collision with root package name */
    public final Y7 f24446h = new Y7(this);

    /* renamed from: i  reason: collision with root package name */
    public final X7 f24447i = new X7();

    public Z7(byte b10, InterfaceC3269z5 interfaceC3269z5) {
        this.f24439a = b10;
        this.f24440b = interfaceC3269z5;
    }

    public final void a(Context context, View view, T7 token, AdConfig.ViewabilityConfig viewabilityConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(viewabilityConfig, "viewabilityConfig");
        C2966g5 c2966g5 = (C2966g5) this.f24442d.get(context);
        if (c2966g5 == null) {
            if (context instanceof Activity) {
                c2966g5 = new C2966g5(viewabilityConfig, new B3(this.f24447i, (Activity) context, this.f24440b), this.f24445g);
            } else {
                c2966g5 = new C2966g5(viewabilityConfig, new Ra(this.f24447i, viewabilityConfig, (byte) 1, this.f24440b), this.f24445g);
            }
            this.f24442d.put(context, c2966g5);
        }
        byte b10 = this.f24439a;
        if (b10 == 0) {
            c2966g5.a(view, token, viewabilityConfig.getVideoImpressionMinPercentageViewed(), viewabilityConfig.getVideoImpressionMinTimeViewed());
        } else if (b10 == 1) {
            c2966g5.a(view, token, viewabilityConfig.getImpressionMinPercentageViewed(), viewabilityConfig.getImpressionMinTimeViewed());
        } else {
            c2966g5.a(view, token, viewabilityConfig.getImpressionMinPercentageViewed(), viewabilityConfig.getImpressionMinTimeViewed());
        }
    }

    public final void a(Context context, T7 token) {
        View view;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(token, "token");
        C2966g5 c2966g5 = (C2966g5) this.f24442d.get(context);
        if (c2966g5 != null) {
            Intrinsics.checkNotNullParameter(token, "token");
            Iterator it = c2966g5.f24758a.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    view = null;
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                if (Intrinsics.areEqual(((C2934e5) entry.getValue()).f24630a, token)) {
                    view = (View) entry.getKey();
                    break;
                }
            }
            if (view != null) {
                Intrinsics.checkNotNullParameter(view, "view");
                c2966g5.f24758a.remove(view);
                c2966g5.f24759b.remove(view);
                c2966g5.f24760c.a(view);
            }
            if (c2966g5.f24758a.isEmpty()) {
                InterfaceC3269z5 interfaceC3269z5 = this.f24440b;
                if (interfaceC3269z5 != null) {
                    String TAG = this.f24441c;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).a(TAG, "Impression tracker is free, removing it");
                }
                C2966g5 c2966g52 = (C2966g5) this.f24442d.remove(context);
                if (c2966g52 != null) {
                    c2966g52.f24758a.clear();
                    c2966g52.f24759b.clear();
                    c2966g52.f24760c.a();
                    c2966g52.f24762e.removeMessages(0);
                    c2966g52.f24760c.b();
                }
                if (context instanceof Activity) {
                    this.f24442d.isEmpty();
                }
            }
        }
    }

    public final void a(Context context, View view, T7 token) {
        View view2;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        lf lfVar = (lf) this.f24443e.get(context);
        if (lfVar != null) {
            if (token != null) {
                Iterator it = lfVar.f25000a.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        view2 = null;
                        break;
                    }
                    Map.Entry entry = (Map.Entry) it.next();
                    if (Intrinsics.areEqual(((Cif) entry.getValue()).f24866d, token)) {
                        view2 = (View) entry.getKey();
                        break;
                    }
                }
                if (view2 != null) {
                    lfVar.a(view2);
                }
            }
            if (lfVar.f25000a.isEmpty()) {
                InterfaceC3269z5 interfaceC3269z5 = this.f24440b;
                if (interfaceC3269z5 != null) {
                    String TAG = this.f24441c;
                    Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                    ((A5) interfaceC3269z5).a(TAG, "Impression tracker is free, removing it");
                }
                lf lfVar2 = (lf) this.f24443e.remove(context);
                if (lfVar2 != null) {
                    lfVar2.b();
                }
                if (context instanceof Activity) {
                    this.f24443e.isEmpty();
                }
            }
        }
        this.f24444f.remove(view);
    }

    public final void a(Context context, View view, T7 token, ef listener, AdConfig.ViewabilityConfig config) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(config, "config");
        lf lfVar = (lf) this.f24443e.get(context);
        if (lfVar == null) {
            if (context instanceof Activity) {
                lfVar = new B3(this.f24447i, (Activity) context, this.f24440b);
            } else {
                lfVar = new Ra(this.f24447i, config, (byte) 1, this.f24440b);
            }
            Y7 y72 = this.f24446h;
            InterfaceC3269z5 interfaceC3269z5 = lfVar.f25004e;
            if (interfaceC3269z5 != null) {
                ((A5) interfaceC3269z5).c("VisibilityTracker", "setVisibilityTrackerListener logger");
            }
            lfVar.f25009j = y72;
            this.f24443e.put(context, lfVar);
        }
        this.f24444f.put(view, listener);
        byte b10 = this.f24439a;
        if (b10 == 0) {
            lfVar.a(view, token, config.getVideoMinPercentagePlay());
        } else if (b10 == 1) {
            lfVar.a(view, token, config.getDisplayMinPercentageAnimate());
        } else {
            lfVar.a(view, token, config.getDisplayMinPercentageAnimate());
        }
    }
}
