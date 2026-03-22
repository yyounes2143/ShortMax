package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.media.C3005ic;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.ic  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3005ic {

    /* renamed from: a  reason: collision with root package name */
    public GestureDetector$OnGestureListenerC2941ec f24860a;

    /* renamed from: b  reason: collision with root package name */
    public final long f24861b;

    public C3005ic(GestureDetector$OnGestureListenerC2941ec view, long j10) {
        Intrinsics.checkNotNullParameter(view, "view");
        this.f24860a = view;
        this.f24861b = j10;
    }

    public final void a() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: ub.n4
            @Override // java.lang.Runnable
            public final void run() {
                C3005ic.a(C3005ic.this);
            }
        }, this.f24861b);
    }

    public static final void a(C3005ic this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this$0.f24860a;
        if (gestureDetector$OnGestureListenerC2941ec != null) {
            gestureDetector$OnGestureListenerC2941ec.g();
        }
        this$0.f24860a = null;
    }
}
