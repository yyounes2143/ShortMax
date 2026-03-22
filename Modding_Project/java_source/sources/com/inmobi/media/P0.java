package com.inmobi.media;

import android.os.Handler;
import com.inmobi.media.P0;
import com.inmobi.media.S0;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class P0 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ S0 f23966a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ WeakReference f23967b;

    public P0(S0 s02, WeakReference weakReference) {
        this.f23966a = s02;
        this.f23967b = weakReference;
    }

    public static final void b(S0 this$0, WeakReference listenerWeakReference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(listenerWeakReference, "$listenerWeakReference");
        InterfaceC3269z5 interfaceC3269z5 = this$0.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).a(e10, "callback- onAdDisplayed");
        }
        this$0.b((F0) listenerWeakReference.get());
    }

    public final void a() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23966a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            StringBuilder a10 = H6.a(e10, "<get-TAG>(...)", "Ad interaction for placement id: ");
            a10.append(this.f23966a.I());
            ((A5) interfaceC3269z5).a(e10, a10.toString());
        }
        if (this.f23966a.Z()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23966a.f24083j;
            if (interfaceC3269z52 != null) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                ((A5) interfaceC3269z52).b(e11, "ad unit is destroyed");
                return;
            }
            return;
        }
        F0 f02 = (F0) this.f23967b.get();
        if (f02 != null) {
            InterfaceC3269z5 interfaceC3269z53 = this.f23966a.f24083j;
            if (interfaceC3269z53 != null) {
                String e12 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e12, "<get-TAG>(...)");
                ((A5) interfaceC3269z53).a(e12, "callback - onAdInteraction");
            }
            f02.a(new HashMap());
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f23966a.f24083j;
        if (interfaceC3269z54 != null) {
            String e13 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e13, "<get-TAG>(...)");
            ((A5) interfaceC3269z54).b(e13, "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void c() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23966a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).a(e10, "onAdDisplayFailed native interaction callback");
        }
        if (this.f23966a.Z()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23966a.f24083j;
            if (interfaceC3269z52 != null) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                ((A5) interfaceC3269z52).b(e11, "callback onAdDisplayFailed failed. already destroyed.");
                return;
            }
            return;
        }
        F0 f02 = (F0) this.f23967b.get();
        if (f02 != null) {
            InterfaceC3269z5 interfaceC3269z53 = this.f23966a.f24083j;
            if (interfaceC3269z53 != null) {
                String e12 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e12, "<get-TAG>(...)");
                ((A5) interfaceC3269z53).a(e12, "callback - onAdShowFailed");
            }
            this.f23966a.a(f02, (short) 91);
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f23966a.f24083j;
        if (interfaceC3269z54 != null) {
            String e13 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e13, "<get-TAG>(...)");
            ((A5) interfaceC3269z54).b(e13, "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void d() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23966a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).c(e10, "onAdDisplay ");
        }
        this.f23966a.b((byte) 4);
        if (this.f23966a.Z()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23966a.f24083j;
            if (interfaceC3269z52 != null) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                ((A5) interfaceC3269z52).b(e11, "onAdDisplay callback failed. adunit destroyed.");
                return;
            }
            return;
        }
        Handler D = this.f23966a.D();
        if (D != null) {
            final S0 s02 = this.f23966a;
            final WeakReference weakReference = this.f23967b;
            D.post(new Runnable() { // from class: ub.o1
                @Override // java.lang.Runnable
                public final void run() {
                    P0.b(S0.this, weakReference);
                }
            });
        }
    }

    public final void e() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23966a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).c(e10, "onAdFullScreenWillDisplay");
        }
        if (this.f23966a.Z()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23966a.f24083j;
            if (interfaceC3269z52 != null) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                ((A5) interfaceC3269z52).a(e11, "onAdFullScreenWillDisplay callback failed. adunit destroyed");
                return;
            }
            return;
        }
        F0 f02 = (F0) this.f23967b.get();
        if (f02 != null) {
            InterfaceC3269z5 interfaceC3269z53 = this.f23966a.f24083j;
            if (interfaceC3269z53 != null) {
                String e12 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e12, "<get-TAG>(...)");
                ((A5) interfaceC3269z53).a(e12, "callback - onAdScreenWillDisplay");
            }
            f02.e();
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f23966a.f24083j;
        if (interfaceC3269z54 != null) {
            String e13 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e13, "<get-TAG>(...)");
            ((A5) interfaceC3269z54).b(e13, "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void f() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23966a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            StringBuilder a10 = H6.a(e10, "<get-TAG>(...)", "Successfully impressed ad for placement id: ");
            a10.append(this.f23966a.I());
            ((A5) interfaceC3269z5).a(e10, a10.toString());
        }
        if (this.f23966a.Z()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23966a.f24083j;
            if (interfaceC3269z52 != null) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                ((A5) interfaceC3269z52).b(e11, "ad unit is destroyed");
                return;
            }
            return;
        }
        F0 f02 = (F0) this.f23967b.get();
        if (f02 != null) {
            InterfaceC3269z5 interfaceC3269z53 = this.f23966a.f24083j;
            if (interfaceC3269z53 != null) {
                String e12 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e12, "<get-TAG>(...)");
                ((A5) interfaceC3269z53).a(e12, "callback - onAdImpressed");
            }
            f02.c();
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = this.f23966a.f24083j;
        if (interfaceC3269z54 != null) {
            String e13 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e13, "<get-TAG>(...)");
            ((A5) interfaceC3269z54).b(e13, "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void g() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23966a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).a(e10, "onUserLeftApplication");
        }
        if (this.f23966a.Z()) {
            return;
        }
        F0 f02 = (F0) this.f23967b.get();
        if (f02 != null) {
            f02.h();
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f23966a.f24083j;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).b("InMobi", "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void h() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23966a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).a(e10, "onUserSkippedMedia");
        }
        if (this.f23966a.Z()) {
            return;
        }
        F0 f02 = (F0) this.f23967b.get();
        if (f02 != null) {
            f02.i();
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f23966a.f24083j;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).b("InMobi", "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void b() {
        InterfaceC3269z5 interfaceC3269z5 = this.f23966a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).a(e10, "onAdDismissed");
        }
        if (this.f23966a.Z()) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f23966a.f24083j;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).a("InMobi", "Ad dismissed for placement id: " + this.f23966a.I());
        }
        Handler D = this.f23966a.D();
        if (D != null) {
            final S0 s02 = this.f23966a;
            final WeakReference weakReference = this.f23967b;
            D.post(new Runnable() { // from class: ub.n1
                @Override // java.lang.Runnable
                public final void run() {
                    P0.a(S0.this, weakReference);
                }
            });
        }
    }

    public static final void a(S0 this$0, WeakReference listenerWeakReference) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(listenerWeakReference, "$listenerWeakReference");
        this$0.a((F0) listenerWeakReference.get());
    }
}
