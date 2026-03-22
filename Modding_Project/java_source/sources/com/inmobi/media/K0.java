package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.media.K0;
import com.inmobi.media.S0;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class K0 extends AbstractC2973gc {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ S0 f23767a;

    public K0(S0 s02) {
        this.f23767a = s02;
    }

    public static final void a(S0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), true, (short) 43);
    }

    public static final void b(S0 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f24090q = true;
        this$0.f();
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void f(GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (2 == this.f23767a.Q()) {
            this.f23767a.q0();
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void g(GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Handler handler = new Handler(Looper.getMainLooper());
        final S0 s02 = this.f23767a;
        handler.post(new Runnable() { // from class: ub.p0
            @Override // java.lang.Runnable
            public final void run() {
                K0.a(S0.this);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void h(GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        if (2 == this.f23767a.Q()) {
            Handler handler = new Handler(Looper.getMainLooper());
            final S0 s02 = this.f23767a;
            handler.post(new Runnable() { // from class: ub.q0
                @Override // java.lang.Runnable
                public final void run() {
                    K0.b(S0.this);
                }
            });
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(Yd telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
        this.f23767a.a(telemetryOnAdImpression);
    }
}
