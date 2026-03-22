package com.inmobi.media;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
/* loaded from: classes5.dex */
public final class I {

    /* renamed from: a  reason: collision with root package name */
    public final GestureDetector$OnGestureListenerC2941ec f23707a;

    /* renamed from: b  reason: collision with root package name */
    public final Set f23708b;

    /* renamed from: c  reason: collision with root package name */
    public final long f23709c;

    /* renamed from: d  reason: collision with root package name */
    public final Sb f23710d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC3269z5 f23711e;

    /* renamed from: f  reason: collision with root package name */
    public final Context f23712f;

    /* renamed from: g  reason: collision with root package name */
    public B f23713g;

    /* renamed from: h  reason: collision with root package name */
    public A4 f23714h;

    /* renamed from: i  reason: collision with root package name */
    public final ScheduledThreadPoolExecutor f23715i;

    /* renamed from: j  reason: collision with root package name */
    public final AtomicBoolean f23716j;

    /* renamed from: k  reason: collision with root package name */
    public ScheduledFuture f23717k;

    /* renamed from: l  reason: collision with root package name */
    public Df f23718l;

    /* renamed from: m  reason: collision with root package name */
    public final H f23719m;

    public I(GestureDetector$OnGestureListenerC2941ec adView, Set set, long j10, Sb listener, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f23707a = adView;
        this.f23708b = set;
        this.f23709c = j10;
        this.f23710d = listener;
        this.f23711e = interfaceC3269z5;
        this.f23712f = adView.getContext();
        this.f23715i = (ScheduledThreadPoolExecutor) AbstractC3268z4.f25481c.getValue();
        this.f23716j = new AtomicBoolean(false);
        this.f23719m = new H(this);
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02f5 A[Catch: all -> 0x01c5, TryCatch #1 {, blocks: (B:102:0x01bc, B:107:0x01c8, B:109:0x01d0, B:112:0x01d9, B:114:0x01eb, B:118:0x01f5, B:119:0x022f, B:121:0x0235, B:122:0x0250, B:129:0x0276, B:134:0x0290, B:136:0x0297, B:144:0x036c, B:139:0x02f5, B:140:0x0304, B:142:0x030a, B:143:0x035e, B:125:0x025a, B:126:0x025f, B:128:0x0265), top: B:153:0x01ba }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void a(com.inmobi.media.I r16) {
        /*
            Method dump skipped, instructions count: 889
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.I.a(com.inmobi.media.I):void");
    }

    public final void a(A4 metrics) {
        if (Intrinsics.areEqual(metrics, this.f23714h)) {
            return;
        }
        Sb sb2 = this.f23710d;
        sb2.getClass();
        Intrinsics.checkNotNullParameter(metrics, "metrics");
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = sb2.f24147a;
        StringBuilder sb3 = new StringBuilder("window.mraidview.broadcastEvent('exposureChange', ");
        sb3.append(metrics.f23456a);
        sb3.append(", ");
        B4 b42 = metrics.f23457b;
        Object obj = "null";
        sb3.append(b42 != null ? C4.a(b42) : "null");
        sb3.append(", ");
        ArrayList<B4> arrayList = metrics.f23458c;
        if (arrayList != null) {
            ArrayList arrayList2 = new ArrayList(CollectionsKt.z(arrayList, 10));
            for (B4 b43 : arrayList) {
                arrayList2.add(C4.a(b43));
            }
            obj = new JSONArray((Collection) arrayList2);
        }
        sb3.append(obj);
        sb3.append(");");
        gestureDetector$OnGestureListenerC2941ec.c(sb3.toString());
        this.f23714h = metrics;
    }

    public static final void a(Rect rect, ArrayList arrayList, RectF rectF) {
        if (rectF.intersect(new RectF(rect))) {
            arrayList.add(new Rect(B2.b(rectF.left), B2.b(rectF.top), B2.b(rectF.right), B2.b(rectF.bottom)));
        }
    }
}
