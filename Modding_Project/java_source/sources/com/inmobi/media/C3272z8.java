package com.inmobi.media;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.z8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3272z8 implements InterfaceC2986h9 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ D8 f25501a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C2904c9 f25502b;

    public C3272z8(D8 d82, C2904c9 c2904c9) {
        this.f25501a = d82;
        this.f25502b = c2904c9;
    }

    public final void a(byte b10) {
        T7 t72 = this.f25501a.f23571b;
        if (!t72.f24195t && (t72 instanceof C2870a9)) {
            C2870a9 c2870a9 = (C2870a9) t72;
            C2904c9 videoAsset = this.f25502b;
            Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
            if (!c2870a9.f24195t) {
                Boolean bool = null;
                if (b10 == 0) {
                    videoAsset.a("firstQuartile", c2870a9.j(videoAsset), (L7) null, c2870a9.W);
                    InterfaceC3269z5 interfaceC3269z5 = c2870a9.W;
                    if (interfaceC3269z5 != null) {
                        String TAG = c2870a9.X;
                        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                        ((A5) interfaceC3269z5).c(TAG, "onVideoQuartileEvent(Q1)");
                    }
                    We we2 = c2870a9.f24191p;
                    if (we2 != null) {
                        we2.a((byte) 9);
                    }
                } else if (b10 == 1) {
                    videoAsset.a(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT, c2870a9.j(videoAsset), (L7) null, c2870a9.W);
                    InterfaceC3269z5 interfaceC3269z52 = c2870a9.W;
                    if (interfaceC3269z52 != null) {
                        String TAG2 = c2870a9.X;
                        Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                        ((A5) interfaceC3269z52).c(TAG2, "onVideoQuartileEvent(Q2)");
                    }
                    We we3 = c2870a9.f24191p;
                    if (we3 != null) {
                        we3.a((byte) 10);
                    }
                } else if (b10 == 2) {
                    videoAsset.a("thirdQuartile", c2870a9.j(videoAsset), (L7) null, c2870a9.W);
                    InterfaceC3269z5 interfaceC3269z53 = c2870a9.W;
                    if (interfaceC3269z53 != null) {
                        String TAG3 = c2870a9.X;
                        Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                        ((A5) interfaceC3269z53).c(TAG3, "onVideoQuartileEvent(Q3)");
                    }
                    We we4 = c2870a9.f24191p;
                    if (we4 != null) {
                        we4.a((byte) 11);
                    }
                } else if (b10 == 3) {
                    Object obj = videoAsset.f24597t.get("didQ4Fire");
                    if (obj instanceof Boolean) {
                        bool = (Boolean) obj;
                    }
                    if (Intrinsics.areEqual(bool, Boolean.FALSE)) {
                        c2870a9.d(videoAsset);
                    }
                } else {
                    InterfaceC3269z5 interfaceC3269z54 = c2870a9.W;
                    if (interfaceC3269z54 != null) {
                        String TAG4 = c2870a9.X;
                        Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                        ((A5) interfaceC3269z54).b(TAG4, "Unhandled quartileEvent ( " + ((int) b10) + " ) for Native Video");
                    }
                }
            }
            if (3 == b10) {
                try {
                    ((C2870a9) this.f25501a.f23571b).c(this.f25502b);
                } catch (Exception e10) {
                    D8 d82 = this.f25501a;
                    InterfaceC3269z5 interfaceC3269z55 = d82.f23575f;
                    if (interfaceC3269z55 != null) {
                        String str = d82.f23576g;
                        ((A5) interfaceC3269z55).b(str, rf.a(e10, H6.a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in handling the onVideoCompleted event; ")));
                    }
                }
            }
        }
    }
}
