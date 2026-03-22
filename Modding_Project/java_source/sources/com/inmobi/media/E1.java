package com.inmobi.media;

import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import com.inmobi.ads.AdMetaInfo;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiAudio;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.media.E1;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class E1 extends AbstractC3230we {

    /* renamed from: o  reason: collision with root package name */
    public C3265z1 f23610o;

    /* renamed from: p  reason: collision with root package name */
    public C3265z1 f23611p;

    /* renamed from: q  reason: collision with root package name */
    public C3265z1 f23612q;

    /* renamed from: r  reason: collision with root package name */
    public C3265z1 f23613r;

    public E1(InMobiAudio.a callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
        b(callbacks);
    }

    @Override // com.inmobi.media.AbstractC3230we
    public final void a(byte[] bArr, PublisherCallbacks callbacks) {
        Intrinsics.checkNotNullParameter(callbacks, "callbacks");
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public final void b(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).c(str, "onAdFetchSuccess " + this);
        }
        C3265z1 c3265z1 = this.f23613r;
        if ((c3265z1 != null ? c3265z1.m() : null) == null) {
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                String str2 = F1.f23628a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) p11).b(str2, "adObject is null, fetch failed");
            }
            a((S0) null, new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            return;
        }
        InterfaceC3269z5 p12 = p();
        if (p12 != null) {
            String str3 = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) p12).a(str3, "Ad fetch successful, calling loadIntoView()");
        }
        super.b(info);
        s().post(new Runnable() { // from class: ub.z
            @Override // java.lang.Runnable
            public final void run() {
                E1.a(E1.this, info);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public final void c(final AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).c(str, "onAdLoadSucceeded " + this);
        }
        super.c(info);
        a((byte) 0);
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            String str2 = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) p11).d(str2, "AdManager state - CREATED");
        }
        InterfaceC3269z5 p12 = p();
        if (p12 != null) {
            String str3 = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) p12).a(str3, "Ad load successful, providing callback");
        }
        s().post(new Runnable() { // from class: ub.w
            @Override // java.lang.Runnable
            public final void run() {
                E1.b(E1.this, info);
            }
        });
    }

    @Override // com.inmobi.media.F0
    public final void d() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).a(str, "onAdShowFailed " + this);
        }
        s().post(new Runnable() { // from class: ub.x
            @Override // java.lang.Runnable
            public final void run() {
                E1.a(E1.this);
            }
        });
    }

    @Override // com.inmobi.media.AbstractC3230we
    public final S0 j() {
        Byte b10;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).c(str, "shouldUseForegroundUnit " + this);
        }
        C3265z1 c3265z1 = this.f23612q;
        if (c3265z1 != null) {
            b10 = Byte.valueOf(c3265z1.Q());
        } else {
            b10 = null;
        }
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            String str2 = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) p11).d(str2, "State - " + b10);
        }
        if ((b10 != null && b10.byteValue() == 4) || ((b10 != null && b10.byteValue() == 7) || (b10 != null && b10.byteValue() == 6))) {
            return this.f23612q;
        }
        return this.f23613r;
    }

    @Override // com.inmobi.media.AbstractC3230we
    public final void w() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).a(str, "submitAdLoadCalled " + this);
        }
        C3265z1 c3265z1 = this.f23613r;
        if (c3265z1 != null) {
            c3265z1.t0();
        }
    }

    public final void x() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).c(str, "registerLifeCycleCallbacks " + this);
        }
        C3265z1 c3265z1 = this.f23610o;
        if (c3265z1 != null) {
            c3265z1.H0();
        }
        C3265z1 c3265z12 = this.f23611p;
        if (c3265z12 != null) {
            c3265z12.H0();
        }
    }

    public final void y() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).a(str, "loadIntoView " + this);
        }
        C3265z1 c3265z1 = this.f23613r;
        if (c3265z1 != null) {
            if (a("InMobi", c3265z1.I().toString())) {
                a((byte) 8);
                InterfaceC3269z5 p11 = p();
                if (p11 != null) {
                    String str2 = F1.f23628a;
                    Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                    ((A5) p11).d(str2, "AdManager state - LOADING_INTO_VIEW");
                }
                c3265z1.j0();
                return;
            }
            return;
        }
        throw new IllegalStateException(AbstractC3230we.f25398m);
    }

    public static final void a(E1 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdFetchSuccessful(info);
        }
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public final void a(S0 s02, InMobiAdRequestStatus status) {
        Intrinsics.checkNotNullParameter(status, "status");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).b(str, "onAdLoadFailed");
        }
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            ((A5) p11).a();
        }
    }

    public static final void a(E1 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        InterfaceC3269z5 p10 = this$0.p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).a(str, "callback - onAdDisplayFailed");
        }
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdDisplayFailed();
        }
        InterfaceC3269z5 p11 = this$0.p();
        if (p11 != null) {
            ((A5) p11).a();
        }
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public final void a(AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).a(str, "onAdDisplayed");
        }
        super.a(info);
        S0 j10 = j();
        if (j10 != null) {
            j10.x0();
        }
    }

    public static final void b(E1 this$0, AdMetaInfo info) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(info, "$info");
        PublisherCallbacks l10 = this$0.l();
        if (l10 != null) {
            l10.onAdLoadSucceeded(info);
        }
    }

    @Override // com.inmobi.media.AbstractC3230we, com.inmobi.media.F0
    public final void b() {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).a(str, "onAdDismissed " + this);
        }
        a((byte) 0);
        InterfaceC3269z5 p11 = p();
        if (p11 != null) {
            String str2 = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) p11).d(str2, "AdManager state - CREATED");
        }
        InterfaceC3269z5 p12 = p();
        if (p12 != null) {
            ((A5) p12).a();
        }
        super.b();
    }

    public final void a(final InMobiAudio audio) {
        Intrinsics.checkNotNullParameter(audio, "audio");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).a(str, "show called");
        }
        try {
            if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                a((RelativeLayout) audio);
            } else {
                s().post(new Runnable() { // from class: ub.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        E1.a(E1.this, audio);
                    }
                });
            }
        } catch (Exception e10) {
            C3265z1 c3265z1 = this.f23613r;
            if (c3265z1 != null) {
                c3265z1.d((short) 26);
            }
            String str2 = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            AbstractC2984h7.a((byte) 1, str2, "Unable to show ad; SDK encountered an unexpected error");
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                ((A5) p11).b(str2, rf.a(e10, H6.a(str2, "access$getTAG$p(...)", "Show failed with unexpected error: ")));
            }
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    public final void b(String adSize) {
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).a(str, "load 1 " + this);
        }
        C3265z1 c3265z1 = this.f23613r;
        if (c3265z1 != null && a("InMobi", c3265z1.I().toString(), l()) && c3265z1.e((byte) 1)) {
            a((byte) 1);
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                String str2 = F1.f23628a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) p11).d(str2, "AdManager state - LOADING");
            }
            d(null);
            c3265z1.e(adSize);
            c3265z1.e(false);
        }
    }

    public static final void a(E1 this$0, RelativeLayout audio) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(audio, "$audio");
        this$0.a(audio);
    }

    public final void a(RelativeLayout relativeLayout) {
        InterfaceC3231x k10;
        Z I;
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).a(str, "showAudioAd");
        }
        C3265z1 c3265z1 = this.f23612q;
        if (c3265z1 != null ? c3265z1.E0() : false) {
            String str2 = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            AbstractC2984h7.a((byte) 1, str2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before showing another ad.");
            InterfaceC3269z5 p11 = p();
            if (p11 != null) {
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) p11).b(str2, "ad is active");
            }
            C3265z1 c3265z12 = this.f23613r;
            if (c3265z12 != null) {
                c3265z12.d((short) 15);
                return;
            }
            return;
        }
        C3265z1 c3265z13 = this.f23613r;
        if (c3265z13 != null) {
            InterfaceC3269z5 interfaceC3269z5 = c3265z13.f24083j;
            if (interfaceC3269z5 != null) {
                String e10 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
                ((A5) interfaceC3269z5).c(e10, "canProceedToShow");
            }
            if (c3265z13.W()) {
                String e11 = S0.e();
                Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                AbstractC2984h7.a((byte) 1, e11, "Ad Show has failed because current ad is expired. Please call load() again.");
                InterfaceC3269z5 interfaceC3269z52 = c3265z13.f24083j;
                if (interfaceC3269z52 != null) {
                    String e12 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e12, "<get-TAG>(...)");
                    ((A5) interfaceC3269z52).b(e12, "ad is expired");
                }
                InterfaceC3269z5 interfaceC3269z53 = c3265z13.f24083j;
                if (interfaceC3269z53 != null) {
                    String e13 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e13, "<get-TAG>(...)");
                    ((A5) interfaceC3269z53).d(e13, "AdUnit " + c3265z13 + " state - CREATED");
                }
                c3265z13.d((byte) 0);
                c3265z13.d((short) 2153);
                return;
            }
            byte Q = c3265z13.Q();
            if (Q == 1 || Q == 2) {
                AbstractC2984h7.a((byte) 1, "InMobi", "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
                InterfaceC3269z5 interfaceC3269z54 = c3265z13.f24083j;
                if (interfaceC3269z54 != null) {
                    String e14 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e14, "<get-TAG>(...)");
                    ((A5) interfaceC3269z54).b(e14, "ad is not ready");
                }
                InterfaceC3269z5 interfaceC3269z55 = c3265z13.f24083j;
                if (interfaceC3269z55 != null) {
                    String e15 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e15, "<get-TAG>(...)");
                    ((A5) interfaceC3269z55).a(e15, "callback - onShowFailure");
                }
                c3265z13.d((short) 2152);
            } else if (Q == 3) {
                AbstractC2984h7.a((byte) 1, "InMobi", "Ad Load has Failed. Please call load() again.");
                c3265z13.d((short) 0);
                InterfaceC3269z5 interfaceC3269z56 = c3265z13.f24083j;
                if (interfaceC3269z56 != null) {
                    String e16 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e16, "<get-TAG>(...)");
                    ((A5) interfaceC3269z56).a(e16, "callback - onShowFailure");
                }
                InterfaceC3269z5 interfaceC3269z57 = c3265z13.f24083j;
                if (interfaceC3269z57 != null) {
                    String e17 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e17, "<get-TAG>(...)");
                    ((A5) interfaceC3269z57).b(e17, "ad is failed");
                }
            } else if (Q == 8) {
                AbstractC2984h7.a((byte) 1, "InMobi", "Ad Load has Failed. Please call load() again.");
                c3265z13.d((short) 0);
                InterfaceC3269z5 interfaceC3269z58 = c3265z13.f24083j;
                if (interfaceC3269z58 != null) {
                    String e18 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e18, "<get-TAG>(...)");
                    ((A5) interfaceC3269z58).a(e18, "callback - onShowFailure");
                }
                InterfaceC3269z5 interfaceC3269z59 = c3265z13.f24083j;
                if (interfaceC3269z59 != null) {
                    String e19 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e19, "<get-TAG>(...)");
                    ((A5) interfaceC3269z59).b(e19, "ad is unloaded");
                }
            } else if (Q == 0) {
                AbstractC2984h7.a((byte) 1, "InMobi", "Ad Show has Failed. Please call load() before calling show().");
                c3265z13.d((short) 0);
                InterfaceC3269z5 interfaceC3269z510 = c3265z13.f24083j;
                if (interfaceC3269z510 != null) {
                    String e20 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e20, "<get-TAG>(...)");
                    ((A5) interfaceC3269z510).a(e20, "callback - onShowFailure");
                }
                InterfaceC3269z5 interfaceC3269z511 = c3265z13.f24083j;
                if (interfaceC3269z511 != null) {
                    String e21 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e21, "<get-TAG>(...)");
                    ((A5) interfaceC3269z511).b(e21, "show called before load");
                }
            } else {
                InterfaceC3269z5 p12 = p();
                if (p12 != null) {
                    String str3 = F1.f23628a;
                    Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                    ((A5) p12).a(str3, "swapAdUnits " + this);
                }
                C3265z1 c3265z14 = this.f23612q;
                if (Intrinsics.areEqual(c3265z14, this.f23610o)) {
                    this.f23612q = this.f23611p;
                    this.f23613r = this.f23610o;
                } else if (Intrinsics.areEqual(c3265z14, this.f23611p) || c3265z14 == null) {
                    this.f23612q = this.f23610o;
                    this.f23613r = this.f23611p;
                }
                InterfaceC3269z5 p13 = p();
                if (p13 != null) {
                    String str4 = F1.f23628a;
                    Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                    ((A5) p13).a(str4, "displayAd " + this);
                }
                C3265z1 c3265z15 = this.f23612q;
                if (c3265z15 == null || (k10 = c3265z15.k()) == null) {
                    return;
                }
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) k10;
                Xe viewableAd = gestureDetector$OnGestureListenerC2941ec.getViewableAd();
                C3265z1 c3265z16 = this.f23612q;
                if (c3265z16 != null && (I = c3265z16.I()) != null && I.p()) {
                    gestureDetector$OnGestureListenerC2941ec.e();
                }
                ViewParent parent = gestureDetector$OnGestureListenerC2941ec.getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                View d10 = viewableAd.d();
                viewableAd.a((Map) null);
                C3265z1 c3265z17 = this.f23613r;
                if (c3265z17 != null) {
                    c3265z17.F0();
                }
                if (viewGroup == null) {
                    relativeLayout.addView(d10, layoutParams);
                } else {
                    viewGroup.removeAllViews();
                    viewGroup.addView(d10, layoutParams);
                }
                C3265z1 c3265z18 = this.f23613r;
                if (c3265z18 != null) {
                    c3265z18.g();
                }
            }
        }
    }

    @Override // com.inmobi.media.AbstractC3230we
    public final void a(short s10) {
        InterfaceC3269z5 p10 = p();
        if (p10 != null) {
            String str = F1.f23628a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) p10).b(str, "submitAdLoadDroppedAtSDK " + this);
        }
        C3265z1 c3265z1 = this.f23613r;
        if (c3265z1 != null) {
            c3265z1.a(s10);
        }
    }
}
