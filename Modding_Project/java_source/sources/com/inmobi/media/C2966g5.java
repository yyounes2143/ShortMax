package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.WeakHashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.g5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2966g5 {

    /* renamed from: a  reason: collision with root package name */
    public final WeakHashMap f24758a;

    /* renamed from: b  reason: collision with root package name */
    public final WeakHashMap f24759b;

    /* renamed from: c  reason: collision with root package name */
    public final lf f24760c;

    /* renamed from: d  reason: collision with root package name */
    public final String f24761d;

    /* renamed from: e  reason: collision with root package name */
    public final Handler f24762e;

    /* renamed from: f  reason: collision with root package name */
    public final RunnableC2950f5 f24763f;

    /* renamed from: g  reason: collision with root package name */
    public final long f24764g;

    /* renamed from: h  reason: collision with root package name */
    public final InterfaceC2917d5 f24765h;

    public C2966g5(AdConfig.ViewabilityConfig viewabilityConfig, lf visibilityTracker, InterfaceC2917d5 listener) {
        Intrinsics.checkNotNullParameter(viewabilityConfig, "viewabilityConfig");
        Intrinsics.checkNotNullParameter(visibilityTracker, "visibilityTracker");
        Intrinsics.checkNotNullParameter(listener, "listener");
        WeakHashMap weakHashMap = new WeakHashMap();
        WeakHashMap weakHashMap2 = new WeakHashMap();
        Handler handler = new Handler(Looper.getMainLooper());
        this.f24758a = weakHashMap;
        this.f24759b = weakHashMap2;
        this.f24760c = visibilityTracker;
        this.f24761d = C2966g5.class.getSimpleName();
        this.f24764g = viewabilityConfig.getImpressionPollIntervalMillis();
        C2900c5 c2900c5 = new C2900c5(this);
        InterfaceC3269z5 interfaceC3269z5 = visibilityTracker.f25004e;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("VisibilityTracker", "setVisibilityTrackerListener logger");
        }
        visibilityTracker.f25009j = c2900c5;
        this.f24762e = handler;
        this.f24763f = new RunnableC2950f5(this);
        this.f24765h = listener;
    }

    public final void a(View view, Object token, int i10, int i11) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(token, "token");
        C2934e5 c2934e5 = (C2934e5) this.f24758a.get(view);
        if (Intrinsics.areEqual(c2934e5 != null ? c2934e5.f24630a : null, token)) {
            return;
        }
        a(view);
        this.f24758a.put(view, new C2934e5(token, i10, i11));
        this.f24760c.a(view, token, i10);
    }

    public final void a(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f24758a.remove(view);
        this.f24759b.remove(view);
        this.f24760c.a(view);
    }
}
