package com.inmobi.media;

import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class S7 extends AbstractC2973gc {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ T7 f24145a;

    public S7(T7 t72) {
        this.f24145a = t72;
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(HashMap params) {
        Intrinsics.checkNotNullParameter(params, "params");
        P0 p02 = this.f24145a.f24198w;
        if (p02 != null) {
            p02.a();
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void c() {
        P0 p02 = this.f24145a.f24198w;
        if (p02 != null) {
            p02.c();
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void d(GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        P0 p02 = this.f24145a.f24198w;
        if (p02 != null) {
            p02.b();
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void e(GestureDetector$OnGestureListenerC2941ec renderView) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        P0 p02 = this.f24145a.f24198w;
        if (p02 != null) {
            p02.d();
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc, com.inmobi.media.Fe
    public final void a() {
        P0 p02 = this.f24145a.f24198w;
        if (p02 != null) {
            p02.g();
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void d() {
        P0 p02;
        T7 t72 = this.f24145a;
        if (t72.f24176a != 0 || (p02 = t72.f24198w) == null) {
            return;
        }
        p02.e();
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(Yd telemetryOnAdImpression) {
        Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
        P0 p02 = this.f24145a.f24198w;
        if (p02 != null) {
            Intrinsics.checkNotNullParameter(telemetryOnAdImpression, "telemetryOnAdImpression");
            telemetryOnAdImpression.getClass();
            Intrinsics.checkNotNullParameter("nativeBeacon", "<set-?>");
            telemetryOnAdImpression.f24415e = "nativeBeacon";
            if (p02.f23966a.Z()) {
                telemetryOnAdImpression.b();
            } else {
                p02.f23966a.D.a(telemetryOnAdImpression);
            }
        }
    }

    @Override // com.inmobi.media.AbstractC2973gc
    public final void a(String log) {
        Intrinsics.checkNotNullParameter(log, "log");
        P0 p02 = this.f24145a.f24198w;
        if (p02 != null) {
            Intrinsics.checkNotNullParameter(log, "log");
            InterfaceC3269z5 interfaceC3269z5 = p02.f23966a.f24083j;
            if (interfaceC3269z5 != null) {
                String e10 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
                ((A5) interfaceC3269z5).a(e10, "onImraidLog");
            }
            if (p02.f23966a.Z()) {
                return;
            }
            F0 f02 = (F0) p02.f23967b.get();
            if (f02 != null) {
                f02.a(log);
                return;
            }
            InterfaceC3269z5 interfaceC3269z52 = p02.f23966a.f24083j;
            if (interfaceC3269z52 != null) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                ((A5) interfaceC3269z52).b(e11, "listener is null");
            }
        }
    }
}
