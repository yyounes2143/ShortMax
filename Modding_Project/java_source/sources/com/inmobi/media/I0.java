package com.inmobi.media;

import androidx.core.app.NotificationCompat;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class I0 extends G1 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ S0 f23720d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f23721e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ InterfaceC2897c2 f23722f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ String f23723g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ String f23724h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I0(S0 s02, String str, InterfaceC2897c2 interfaceC2897c2, String str2, String str3) {
        super(s02);
        this.f23720d = s02;
        this.f23721e = str;
        this.f23722f = interfaceC2897c2;
        this.f23723g = str2;
        this.f23724h = str3;
    }

    @Override // com.inmobi.media.G1
    public final void a() {
        S0 s02 = (S0) this.f23669b.get();
        if (s02 != null) {
            try {
                C2976h m10 = s02.m();
                if (m10 != null && Intrinsics.areEqual(m10.s(), this.f23721e)) {
                    String blob = m10.F();
                    InterfaceC2897c2 interfaceC2897c2 = this.f23722f;
                    String jsCallbackNamespace = this.f23723g;
                    String callback = this.f23724h;
                    GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = (GestureDetector$OnGestureListenerC2941ec) interfaceC2897c2;
                    gestureDetector$OnGestureListenerC2941ec.getClass();
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    Intrinsics.checkNotNullParameter(callback, "callback");
                    Intrinsics.checkNotNullParameter(blob, "blob");
                    InterfaceC3269z5 interfaceC3269z5 = gestureDetector$OnGestureListenerC2941ec.f24680i;
                    if (interfaceC3269z5 != null) {
                        String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((A5) interfaceC3269z5).a(TAG, "retrievedBlob");
                    }
                    gestureDetector$OnGestureListenerC2941ec.a(jsCallbackNamespace, callback + '(' + blob + ");");
                    InterfaceC3269z5 interfaceC3269z52 = this.f23720d.f24083j;
                    if (interfaceC3269z52 != null) {
                        String e10 = S0.e();
                        Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
                        ((A5) interfaceC3269z52).c(e10, "Returning blob " + blob);
                        return;
                    }
                    return;
                }
                InterfaceC3269z5 interfaceC3269z53 = this.f23720d.f24083j;
                if (interfaceC3269z53 != null) {
                    String e11 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e11, "<get-TAG>(...)");
                    ((A5) interfaceC3269z53).c(e11, "Returning blob as empty string");
                }
                InterfaceC2897c2 interfaceC2897c22 = this.f23722f;
                String jsCallbackNamespace2 = this.f23723g;
                String callback2 = this.f23724h;
                GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = (GestureDetector$OnGestureListenerC2941ec) interfaceC2897c22;
                gestureDetector$OnGestureListenerC2941ec2.getClass();
                Intrinsics.checkNotNullParameter(jsCallbackNamespace2, "jsCallbackNamespace");
                Intrinsics.checkNotNullParameter(callback2, "callback");
                Intrinsics.checkNotNullParameter("", "blob");
                InterfaceC3269z5 interfaceC3269z54 = gestureDetector$OnGestureListenerC2941ec2.f24680i;
                if (interfaceC3269z54 != null) {
                    String TAG2 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                    ((A5) interfaceC3269z54).a(TAG2, "retrievedBlob");
                }
                gestureDetector$OnGestureListenerC2941ec2.a(jsCallbackNamespace2, callback2 + "();");
            } catch (Exception e12) {
                InterfaceC3269z5 interfaceC3269z55 = this.f23720d.f24083j;
                if (interfaceC3269z55 != null) {
                    String e13 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e13, "<get-TAG>(...)");
                    ((A5) interfaceC3269z55).a(e13, "Exception while getBlob", e12);
                }
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e12, NotificationCompat.CATEGORY_EVENT));
            }
        }
    }
}
