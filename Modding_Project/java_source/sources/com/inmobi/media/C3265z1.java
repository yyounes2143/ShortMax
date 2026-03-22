package com.inmobi.media;

import android.content.Context;
import com.inmobi.ads.InMobiAdRequestStatus;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.z1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3265z1 extends M1 {
    public final B1 S;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3265z1(Context context, Z placement, F0 f02) {
        super(context, placement, f02);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placement, "placement");
        this.S = new B1();
    }

    @Override // com.inmobi.media.M1
    public final boolean D0() {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).c(e10, "canProceedToLoad");
        }
        if (f0()) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                ((A5) interfaceC3269z52).b(e11, "Some of the dependency libraries for Banner not found");
            }
            b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES), true, (short) 2007);
            return false;
        } else if (1 != Q() && 2 != Q()) {
            if (7 == Q()) {
                b(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_ACTIVE), false, (short) 15);
                AbstractC2984h7.a((byte) 1, "InMobi", AbstractC3230we.f25395j + I().l());
                InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
                if (interfaceC3269z53 != null) {
                    String e12 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e12, "<get-TAG>(...)");
                    ((A5) interfaceC3269z53).b(e12, "Ad is active. ignore load");
                }
                return false;
            }
            if (Q() == 4) {
                if (W()) {
                    InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
                    if (interfaceC3269z54 != null) {
                        String e13 = S0.e();
                        Intrinsics.checkNotNullExpressionValue(e13, "<get-TAG>(...)");
                        ((A5) interfaceC3269z54).b(e13, "ad is expired, clearing");
                    }
                    g();
                } else {
                    InterfaceC3269z5 interfaceC3269z55 = this.f24083j;
                    if (interfaceC3269z55 != null) {
                        String e14 = S0.e();
                        Intrinsics.checkNotNullExpressionValue(e14, "<get-TAG>(...)");
                        ((A5) interfaceC3269z55).c(e14, "signalCanShowForStateReady");
                    }
                    InterfaceC3269z5 interfaceC3269z56 = this.f24083j;
                    if (interfaceC3269z56 != null) {
                        String e15 = S0.e();
                        Intrinsics.checkNotNullExpressionValue(e15, "<get-TAG>(...)");
                        ((A5) interfaceC3269z56).a(e15, "An ad is ready with the ad unit. Signaling ad load success ...");
                    }
                    F0 r10 = r();
                    if (r10 == null) {
                        AbstractC2984h7.a((byte) 2, "InMobi", "Listener was garbage collected. Unable to give callback");
                        InterfaceC3269z5 interfaceC3269z57 = this.f24083j;
                        if (interfaceC3269z57 != null) {
                            String e16 = S0.e();
                            Intrinsics.checkNotNullExpressionValue(e16, "<get-TAG>(...)");
                            ((A5) interfaceC3269z57).b(e16, "listener is null. load show callback missed");
                        }
                    } else {
                        InterfaceC3269z5 interfaceC3269z58 = this.f24083j;
                        if (interfaceC3269z58 != null) {
                            String e17 = S0.e();
                            Intrinsics.checkNotNullExpressionValue(e17, "<get-TAG>(...)");
                            ((A5) interfaceC3269z58).a(e17, "callback - onLoadSuccess");
                        }
                        f(r10);
                    }
                    return false;
                }
            }
            e0();
            return true;
        } else {
            String e18 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e18, "<get-TAG>(...)");
            AbstractC2984h7.a((byte) 1, e18, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad");
            InterfaceC3269z5 interfaceC3269z59 = this.f24083j;
            if (interfaceC3269z59 != null) {
                String e19 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e19, "<get-TAG>(...)");
                ((A5) interfaceC3269z59).b(e19, "ad load in progress. ignore load");
            }
            a((short) 53);
            return false;
        }
    }

    @Override // com.inmobi.media.M1, com.inmobi.media.AbstractC2973gc
    public final void a(D1 audioStatusInternal) {
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        F0 r10 = r();
        if (r10 != null) {
            r10.a(audioStatusInternal);
        }
        B1 b12 = this.S;
        b12.getClass();
        Intrinsics.checkNotNullParameter(audioStatusInternal, "audioStatusInternal");
        if (!b12.f23502a && audioStatusInternal == D1.f23557e) {
            b12.f23502a = true;
            C3141r5 c3141r5 = C3141r5.f25230c;
            c3141r5.f24100a = System.currentTimeMillis();
            c3141r5.f24101b++;
        }
    }

    public final void d(short s10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).c(e10, "onShowFailure");
        }
        F0 r10 = r();
        if (r10 == null) {
            AbstractC2984h7.a((byte) 2, "InMobi", "Listener was garbage collected. Unable to give callback");
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                ((A5) interfaceC3269z52).b(e11, "listener is null. show fail callback missed. ");
            }
        } else {
            InterfaceC3269z5 interfaceC3269z53 = this.f24083j;
            if (interfaceC3269z53 != null) {
                String e12 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e12, "<get-TAG>(...)");
                ((A5) interfaceC3269z53).b(e12, "callback - onAdShowFailed");
            }
            r10.d();
        }
        if (s10 != 0) {
            InterfaceC3269z5 interfaceC3269z54 = this.f24083j;
            if (interfaceC3269z54 != null) {
                String e13 = S0.e();
                ((A5) interfaceC3269z54).b(e13, X8.a(e13, "<get-TAG>(...)", "show failed - ", s10));
            }
            c(s10);
        }
    }

    @Override // com.inmobi.media.M1, com.inmobi.media.S0, com.inmobi.media.AbstractC2973gc
    public final void i(GestureDetector$OnGestureListenerC2941ec renderView) {
        F0 r10;
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        InterfaceC3269z5 interfaceC3269z5 = this.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).c(e10, "onRenderViewVisible");
        }
        if (Q() == 4 && (r10 = r()) != null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f24083j;
            if (interfaceC3269z52 != null) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                ((A5) interfaceC3269z52).a(e11, "callback - onAdDisplayed");
            }
            d(r10);
        }
        super.i(renderView);
    }

    @Override // com.inmobi.media.M1, com.inmobi.media.S0
    public final String q() {
        return "audio";
    }

    @Override // com.inmobi.media.M1, com.inmobi.media.AbstractC2973gc
    public final void a(boolean z10) {
        Context d10 = Uc.d();
        if (d10 == null) {
            return;
        }
        ConcurrentHashMap concurrentHashMap = C6.f23529b;
        C6 a10 = B6.a(d10, "audio_pref_file");
        Intrinsics.checkNotNullParameter("user_mute_count", "key");
        int i10 = a10.f23530a.getInt("user_mute_count", 0);
        C6.a(a10, "user_mute_count", z10 ? Math.max(0, i10 - 1) : i10 + 1, false, 4, (Object) null);
    }
}
