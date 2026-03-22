package com.inmobi.media;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.app.NotificationCompat;
import androidx.webkit.ProxyConfig;
import com.iab.omid.library.inmobi.adsession.media.Position;
import com.iab.omid.library.inmobi.adsession.media.VastProperties;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.C2870a9;
import com.inmobi.media.C2904c9;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.lang.ref.WeakReference;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
/* renamed from: com.inmobi.media.a9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2870a9 extends T7 {
    public final String U;
    public final String V;
    public final InterfaceC3269z5 W;
    public final String X;
    public final String Y;
    public WeakReference Z;

    /* renamed from: a0  reason: collision with root package name */
    public final Z8 f24486a0;

    /* renamed from: b0  reason: collision with root package name */
    public final Y8 f24487b0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2870a9(Context context, byte b10, C3113p8 dataModel, String impressionId, Set set, AdConfig adConfig, long j10, boolean z10, String creativeId, C2932e3 c2932e3, S6 s62, InterfaceC3269z5 interfaceC3269z5) {
        super(context, b10, dataModel, impressionId, set, adConfig, j10, z10, creativeId, c2932e3, s62, interfaceC3269z5);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dataModel, "dataModel");
        Intrinsics.checkNotNullParameter(impressionId, "impressionId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(creativeId, "creativeId");
        this.U = impressionId;
        this.V = creativeId;
        this.W = interfaceC3269z5;
        this.X = C2870a9.class.getSimpleName();
        this.Y = "InMobi";
        this.f24486a0 = new Z8(this);
        this.f24487b0 = new Y8(this);
    }

    public final void a(View view, final boolean z10) {
        final C3050l9 c3050l9 = (C3050l9) view.findViewById(Integer.MAX_VALUE);
        if (c3050l9 != null) {
            Object tag = c3050l9.getTag();
            final C2904c9 c2904c9 = tag instanceof C2904c9 ? (C2904c9) tag : null;
            if (c2904c9 != null) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ub.o3
                    @Override // java.lang.Runnable
                    public final void run() {
                        C2870a9.a(C2904c9.this, z10, this, c3050l9);
                    }
                });
            }
        }
    }

    @Override // com.inmobi.media.T7
    public final void b(View view) {
        if (this.f24193r || this.f24195t || !(view instanceof C3050l9)) {
            return;
        }
        this.f24193r = true;
        C2932e3 c2932e3 = this.f24183h;
        if (c2932e3 != null) {
            c2932e3.a();
        }
        Object tag = ((C3050l9) view).getTag();
        if (tag instanceof C2904c9) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            C2904c9 c2904c9 = (C2904c9) tag;
            Object obj = c2904c9.f24597t.get("didImpressionFire");
            if (Intrinsics.areEqual(obj instanceof Boolean ? (Boolean) obj : null, Boolean.TRUE)) {
                return;
            }
            ArrayList arrayList = c2904c9.f24596s;
            HashMap j10 = j(c2904c9);
            Iterator it = arrayList.iterator();
            List<String> list = null;
            while (it.hasNext()) {
                U8 u82 = (U8) it.next();
                if (Intrinsics.areEqual("VideoImpression", u82.f24261b)) {
                    if (StringsKt.V(u82.f24263d, ProxyConfig.MATCH_HTTP, false, 2, null)) {
                        C2920d8.a(u82, j10, (L7) null, this.W);
                    }
                    HashMap hashMap = u82.f24264e;
                    Object obj2 = hashMap != null ? hashMap.get("referencedEvents") : null;
                    list = obj2 instanceof List ? (List) obj2 : null;
                    if (list != null) {
                        for (String str : list) {
                            c2904c9.a(str, j10, (L7) null, this.W);
                        }
                    }
                }
            }
            if (list == null || list.isEmpty()) {
                c2904c9.a("start", j10, (L7) null, this.W);
                c2904c9.a("Impression", j10, this.O, this.W);
            }
            C2985h8 c2985h8 = this.f24177b.f25138e;
            if (c2985h8 != null) {
                c2985h8.a("Impression", j(c2904c9), this.O, this.W);
            }
            c2904c9.f24597t.put("didImpressionFire", Boolean.TRUE);
            We we2 = this.f24191p;
            if (we2 != null) {
                we2.a((byte) 0);
            }
            P0 p02 = this.f24198w;
            if (p02 != null) {
                p02.f();
            }
        }
    }

    @Override // com.inmobi.media.T7
    public final void c(C2920d8 asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        byte b10 = asset.f24588k;
        if (b10 != 0) {
            if (b10 == 2) {
                try {
                    if (1 == this.f24176a) {
                        super.c(asset);
                        if (!Intrinsics.areEqual("VIDEO", asset.f24580c)) {
                            InterfaceC3269z5 interfaceC3269z5 = this.W;
                            if (interfaceC3269z5 != null) {
                                String TAG = this.X;
                                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                                ((A5) interfaceC3269z5).b(TAG, "Action 2 not valid for asset of type: " + asset.f24580c);
                                return;
                            }
                            return;
                        }
                        View videoContainerView = getVideoContainerView();
                        C3066m9 c3066m9 = videoContainerView instanceof C3066m9 ? (C3066m9) videoContainerView : null;
                        if (c3066m9 != null) {
                            c3066m9.getVideoView().c();
                            c3066m9.getVideoView().j();
                        }
                        r();
                        return;
                    }
                    P0 p02 = this.f24198w;
                    if (p02 != null) {
                        p02.h();
                    }
                    r();
                } catch (Exception e10) {
                    InterfaceC3269z5 interfaceC3269z52 = this.W;
                    if (interfaceC3269z52 != null) {
                        String str = this.X;
                        StringBuilder a10 = H6.a(str, "TAG", "Action 2 not valid for asset of type: ");
                        a10.append(asset.f24580c);
                        ((A5) interfaceC3269z52).b(str, a10.toString());
                    }
                    S5 s52 = S5.f24132a;
                    S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                }
            } else if (b10 == 3) {
                try {
                    if (!Intrinsics.areEqual("VIDEO", asset.f24580c)) {
                        InterfaceC3269z5 interfaceC3269z53 = this.W;
                        if (interfaceC3269z53 != null) {
                            String TAG2 = this.X;
                            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                            ((A5) interfaceC3269z53).b(TAG2, "Action 3 not valid for asset of type: " + asset.f24580c);
                            return;
                        }
                        return;
                    }
                    GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.H;
                    if (gestureDetector$OnGestureListenerC2941ec != null) {
                        InterfaceC3269z5 interfaceC3269z54 = gestureDetector$OnGestureListenerC2941ec.f24680i;
                        if (interfaceC3269z54 != null) {
                            String TAG3 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                            Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                            ((A5) interfaceC3269z54).a(TAG3, "replayToInterActive");
                        }
                        gestureDetector$OnGestureListenerC2941ec.c("window.imraid.broadcastEvent('replay');");
                    }
                    View g10 = g();
                    if (g10 != null) {
                        T8 a11 = T7.a(g10);
                        if (a11 != null) {
                            a11.d();
                        }
                        ViewParent parent = g10.getParent();
                        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                        if (viewGroup != null) {
                            viewGroup.removeView(g10);
                        }
                    }
                    View videoContainerView2 = getVideoContainerView();
                    C3066m9 c3066m92 = videoContainerView2 instanceof C3066m9 ? (C3066m9) videoContainerView2 : null;
                    if (c3066m92 != null) {
                        c3066m92.getVideoView().k();
                        c3066m92.getVideoView().start();
                    }
                } catch (Exception e11) {
                    InterfaceC3269z5 interfaceC3269z55 = this.W;
                    if (interfaceC3269z55 != null) {
                        String str2 = this.X;
                        ((A5) interfaceC3269z55).b(str2, rf.a(e11, H6.a(str2, "TAG", "Encountered unexpected error in handling replay action on video: ")));
                    }
                    AbstractC2984h7.a((byte) 2, this.Y, "SDK encountered unexpected error in replaying video");
                    S5 s53 = S5.f24132a;
                    S5.f24135d.a(AbstractC3221w5.a(e11, NotificationCompat.CATEGORY_EVENT));
                }
            } else if (b10 == 1) {
                super.c(asset);
            } else if (b10 == 4) {
                try {
                    if (this.f24176a == 0) {
                        View videoContainerView3 = getVideoContainerView();
                        C3066m9 c3066m93 = videoContainerView3 instanceof C3066m9 ? (C3066m9) videoContainerView3 : null;
                        if (c3066m93 != null) {
                            C3050l9 videoView = c3066m93.getVideoView();
                            Object tag = videoView.getTag();
                            C2904c9 c2904c9 = tag instanceof C2904c9 ? (C2904c9) tag : null;
                            if (videoView.getState() == 1 || c2904c9 == null) {
                                return;
                            }
                            try {
                                a(c2904c9, videoView);
                                return;
                            } catch (Exception e12) {
                                InterfaceC3269z5 interfaceC3269z56 = this.W;
                                if (interfaceC3269z56 != null) {
                                    String TAG4 = this.X;
                                    Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
                                    ((A5) interfaceC3269z56).b(TAG4, "SDK encountered unexpected error in handling the onVideoRequestedFullScreen event; " + e12.getMessage());
                                }
                                S5 s54 = S5.f24132a;
                                C2947f2 event = new C2947f2(e12);
                                Intrinsics.checkNotNullParameter(event, "event");
                                S5.f24135d.a(event);
                                return;
                            }
                        }
                        return;
                    }
                    InterfaceC3269z5 interfaceC3269z57 = this.W;
                    if (interfaceC3269z57 != null) {
                        String TAG5 = this.X;
                        Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
                        ((A5) interfaceC3269z57).b(TAG5, "Invalid action! Online inline videos can be expanded to fullscreen!");
                    }
                } catch (Exception e13) {
                    InterfaceC3269z5 interfaceC3269z58 = this.W;
                    if (interfaceC3269z58 != null) {
                        String str3 = this.X;
                        ((A5) interfaceC3269z58).b(str3, rf.a(e13, H6.a(str3, "TAG", "Encountered unexpected error in handling fullscreen action on video: ")));
                    }
                    AbstractC2984h7.a((byte) 2, this.Y, "SDK encountered unexpected error in expanding video to fullscreen");
                    S5 s55 = S5.f24132a;
                    S5.f24135d.a(AbstractC3221w5.a(e13, NotificationCompat.CATEGORY_EVENT));
                }
            } else if (b10 == 5) {
                try {
                    View videoContainerView4 = getVideoContainerView();
                    C3066m9 c3066m94 = videoContainerView4 instanceof C3066m9 ? (C3066m9) videoContainerView4 : null;
                    if (c3066m94 != null) {
                        Object tag2 = c3066m94.getVideoView().getTag();
                        C2904c9 c2904c92 = tag2 instanceof C2904c9 ? (C2904c9) tag2 : null;
                        if (c2904c92 != null) {
                            HashMap hashMap = c2904c92.f24597t;
                            Boolean bool = Boolean.TRUE;
                            hashMap.put("shouldAutoPlay", bool);
                            C2920d8 c2920d8 = c2904c92.f24600w;
                            if (c2920d8 != null) {
                                c2920d8.f24597t.put("shouldAutoPlay", bool);
                            }
                        }
                        c3066m94.getVideoView().start();
                    }
                } catch (Exception e14) {
                    InterfaceC3269z5 interfaceC3269z59 = this.W;
                    if (interfaceC3269z59 != null) {
                        String str4 = this.X;
                        ((A5) interfaceC3269z59).b(str4, rf.a(e14, H6.a(str4, "TAG", "Encountered unexpected error in handling play action on video: ")));
                    }
                    AbstractC2984h7.a((byte) 2, this.Y, "SDK encountered unexpected error in playing video");
                    S5 s56 = S5.f24132a;
                    S5.f24135d.a(AbstractC3221w5.a(e14, NotificationCompat.CATEGORY_EVENT));
                }
            } else {
                try {
                    if (1 == this.f24176a) {
                        super.c(asset);
                        if (!Intrinsics.areEqual("VIDEO", asset.f24580c)) {
                            InterfaceC3269z5 interfaceC3269z510 = this.W;
                            if (interfaceC3269z510 != null) {
                                String TAG6 = this.X;
                                Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
                                ((A5) interfaceC3269z510).b(TAG6, "Action 2 not valid for asset of type: " + asset.f24580c);
                                return;
                            }
                            return;
                        }
                        View videoContainerView5 = getVideoContainerView();
                        C3066m9 c3066m95 = videoContainerView5 instanceof C3066m9 ? (C3066m9) videoContainerView5 : null;
                        if (c3066m95 != null) {
                            c3066m95.getVideoView().c();
                            c3066m95.getVideoView().j();
                        }
                        r();
                        return;
                    }
                    P0 p03 = this.f24198w;
                    if (p03 != null) {
                        p03.h();
                    }
                    r();
                } catch (Exception e15) {
                    InterfaceC3269z5 interfaceC3269z511 = this.W;
                    if (interfaceC3269z511 != null) {
                        String str5 = this.X;
                        StringBuilder a12 = H6.a(str5, "TAG", "Action 2 not valid for asset of type: ");
                        a12.append(asset.f24580c);
                        ((A5) interfaceC3269z511).b(str5, a12.toString());
                    }
                    S5 s57 = S5.f24132a;
                    S5.f24135d.a(AbstractC3221w5.a(e15, NotificationCompat.CATEGORY_EVENT));
                }
            }
        }
    }

    public final void d(C2904c9 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        InterfaceC3269z5 interfaceC3269z5 = this.W;
        if (interfaceC3269z5 != null) {
            String str = this.X;
            StringBuilder a10 = H6.a(str, "TAG", "Firing Q4 beacons for completion at ");
            a10.append(videoAsset.D);
            ((A5) interfaceC3269z5).c(str, a10.toString());
        }
        videoAsset.f24597t.put("didQ4Fire", Boolean.TRUE);
        videoAsset.a(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, j(videoAsset), (L7) null, this.W);
        We we2 = this.f24191p;
        if (we2 != null) {
            we2.a((byte) 12);
        }
        InterfaceC3269z5 interfaceC3269z52 = this.W;
        if (interfaceC3269z52 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z52).c(TAG, "onVideoQuartileEvent(Q4)");
        }
    }

    public final void e(C2904c9 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f24195t) {
            return;
        }
        videoAsset.f24597t.put("lastMediaVolume", 0);
        videoAsset.a("mute", j(videoAsset), (L7) null, this.W);
        InterfaceC3269z5 interfaceC3269z5 = this.W;
        if (interfaceC3269z5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onVideoMuted");
        }
        We we2 = this.f24191p;
        if (we2 != null) {
            we2.a((byte) 13);
        }
    }

    public final void f(C2904c9 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f24195t) {
            return;
        }
        T8 a10 = T7.a(g());
        if (a10 != null) {
            a10.b();
        }
        videoAsset.a(CampaignEx.JSON_NATIVE_VIDEO_PAUSE, j(videoAsset), (L7) null, this.W);
        InterfaceC3269z5 interfaceC3269z5 = this.W;
        if (interfaceC3269z5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onVideoPaused");
        }
        We we2 = this.f24191p;
        if (we2 != null) {
            we2.a((byte) 7);
        }
    }

    public final void g(C2904c9 videoAsset) {
        Integer num;
        int i10;
        Integer num2;
        int i11;
        Integer num3;
        int i12;
        Integer num4;
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f24195t) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z5 = this.W;
        if (interfaceC3269z5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onVideoPlayed");
        }
        Boolean bool = null;
        if (this.f24176a == 0) {
            Object obj = videoAsset.f24597t.get("currentMediaVolume");
            if (obj instanceof Integer) {
                num = (Integer) obj;
            } else {
                num = null;
            }
            int i13 = 0;
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 0;
            }
            Object obj2 = videoAsset.f24597t.get("lastMediaVolume");
            if (obj2 instanceof Integer) {
                num2 = (Integer) obj2;
            } else {
                num2 = null;
            }
            if (num2 != null) {
                i11 = num2.intValue();
            } else {
                i11 = 0;
            }
            if (i10 > 0 && i11 == 0) {
                i(videoAsset);
            }
            Object obj3 = videoAsset.f24597t.get("currentMediaVolume");
            if (obj3 instanceof Integer) {
                num3 = (Integer) obj3;
            } else {
                num3 = null;
            }
            if (num3 != null) {
                i12 = num3.intValue();
            } else {
                i12 = 0;
            }
            Object obj4 = videoAsset.f24597t.get("lastMediaVolume");
            if (obj4 instanceof Integer) {
                num4 = (Integer) obj4;
            } else {
                num4 = null;
            }
            if (num4 != null) {
                i13 = num4.intValue();
            }
            if (i12 == 0 && i13 > 0) {
                e(videoAsset);
            }
        }
        Object obj5 = videoAsset.f24597t.get("didStartPlaying");
        if (obj5 instanceof Boolean) {
            bool = (Boolean) obj5;
        }
        if (Intrinsics.areEqual(bool, Boolean.FALSE)) {
            videoAsset.f24597t.put("didStartPlaying", Boolean.TRUE);
            Xe viewableAd = getViewableAd();
            if (viewableAd != null) {
                viewableAd.a((byte) 6);
            }
        }
    }

    @Override // com.inmobi.media.T7, com.inmobi.media.InterfaceC3231x
    public final String getCreativeId() {
        return this.V;
    }

    @Override // com.inmobi.media.T7, com.inmobi.media.InterfaceC3231x
    public final InterfaceC3215w getFullScreenEventsListener() {
        return this.f24486a0;
    }

    @Override // com.inmobi.media.T7, com.inmobi.media.InterfaceC3231x
    public final String getImpressionId() {
        return this.U;
    }

    @Override // com.inmobi.media.T7, com.inmobi.media.InterfaceC3231x
    public final View getVideoContainerView() {
        WeakReference weakReference = this.Z;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // com.inmobi.media.T7, com.inmobi.media.InterfaceC3231x
    public final Xe getViewableAd() {
        C2971ga c2971ga;
        Boolean bool;
        boolean z10;
        Boolean bool2;
        boolean z11;
        VastProperties createVastPropertiesForNonSkippableMedia;
        Context j10 = j();
        if (this.f24191p == null && j10 != null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f24185j;
            if (interfaceC3269z5 != null) {
                String TAG = this.f24188m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).c(TAG, "fireLoadedAndServedBeacons");
            }
            C2985h8 c2985h8 = this.f24177b.f25138e;
            if (c2985h8 != null) {
                HashMap a10 = a(c2985h8);
                a((byte) 1, a10);
                a((byte) 2, a10);
            }
            this.f24191p = new N5(this, new C2910cf(this, this.W), this.W);
            Set<C3135qe> set = this.f24179d;
            if (set != null) {
                for (C3135qe c3135qe : set) {
                    try {
                        if (c3135qe.f25216a == 3) {
                            Object obj = c3135qe.f25217b.get("omidAdSession");
                            Integer num = null;
                            if (obj instanceof C2971ga) {
                                c2971ga = (C2971ga) obj;
                            } else {
                                c2971ga = null;
                            }
                            Object obj2 = c3135qe.f25217b.get("videoAutoPlay");
                            if (obj2 instanceof Boolean) {
                                bool = (Boolean) obj2;
                            } else {
                                bool = null;
                            }
                            int i10 = 0;
                            if (bool != null) {
                                z10 = bool.booleanValue();
                            } else {
                                z10 = false;
                            }
                            Object obj3 = c3135qe.f25217b.get("videoSkippable");
                            if (obj3 instanceof Boolean) {
                                bool2 = (Boolean) obj3;
                            } else {
                                bool2 = null;
                            }
                            if (bool2 != null) {
                                z11 = bool2.booleanValue();
                            } else {
                                z11 = false;
                            }
                            Object obj4 = c3135qe.f25217b.get("videoSkipOffset");
                            if (obj4 instanceof Integer) {
                                num = (Integer) obj4;
                            }
                            if (num != null) {
                                i10 = num.intValue();
                            }
                            if (z11) {
                                createVastPropertiesForNonSkippableMedia = VastProperties.createVastPropertiesForSkippableMedia(i10, z10, Position.STANDALONE);
                            } else {
                                createVastPropertiesForNonSkippableMedia = VastProperties.createVastPropertiesForNonSkippableMedia(z10, Position.STANDALONE);
                            }
                            VastProperties vastProperties = createVastPropertiesForNonSkippableMedia;
                            We we2 = this.f24191p;
                            if (c2971ga != null && we2 != null) {
                                Intrinsics.checkNotNull(vastProperties);
                                this.f24191p = new C3067ma(j10, we2, this, c2971ga, vastProperties, this.W);
                            } else {
                                InterfaceC3269z5 interfaceC3269z52 = this.W;
                                if (interfaceC3269z52 != null) {
                                    String TAG2 = this.X;
                                    Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                                    ((A5) interfaceC3269z52).b(TAG2, "Did not find a OMID video ad session; the OMID decorator will not be applied.");
                                }
                            }
                        }
                    } catch (Exception e10) {
                        InterfaceC3269z5 interfaceC3269z53 = this.W;
                        if (interfaceC3269z53 != null) {
                            String str = this.X;
                            ((A5) interfaceC3269z53).b(str, rf.a(e10, H6.a(str, "TAG", "Exception occurred while creating the video viewable ad : ")));
                        }
                        S5 s52 = S5.f24132a;
                        S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                    }
                }
            }
        }
        return this.f24191p;
    }

    public final void h(C2904c9 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f24195t) {
            return;
        }
        T8 a10 = T7.a(g());
        if (a10 != null) {
            a10.c();
        }
        videoAsset.a(CampaignEx.JSON_NATIVE_VIDEO_RESUME, j(videoAsset), (L7) null, this.W);
        InterfaceC3269z5 interfaceC3269z5 = this.W;
        if (interfaceC3269z5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onVideoResumed");
        }
        We we2 = this.f24191p;
        if (we2 != null) {
            we2.a((byte) 8);
        }
    }

    @Override // com.inmobi.media.T7
    public final ef i() {
        return this.f24487b0;
    }

    public final HashMap j(C2904c9 c2904c9) {
        View view;
        C3066m9 c3066m9;
        String b10;
        C3050l9 videoView;
        C2985h8 c2985h8 = c2904c9.f24595r;
        Integer num = null;
        if (c2985h8 == null) {
            c2985h8 = null;
        }
        HashMap hashMap = new HashMap();
        WeakReference weakReference = this.Z;
        if (weakReference != null) {
            view = (View) weakReference.get();
        } else {
            view = null;
        }
        if (view instanceof C3066m9) {
            c3066m9 = (C3066m9) view;
        } else {
            c3066m9 = null;
        }
        if (c3066m9 != null && (videoView = c3066m9.getVideoView()) != null) {
            String str = (String) hashMap.put("$MD", String.valueOf(bt.a.b((videoView.getDuration() * 1.0d) / 1000)));
        }
        hashMap.put("[ERRORCODE]", "405");
        SecureRandom secureRandom = new SecureRandom();
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        int i11 = 0;
        while (i11 == 0) {
            i11 = (secureRandom.nextInt() & Integer.MAX_VALUE) % 10;
        }
        sb2.append(i11);
        for (int i12 = 1; i12 < 8; i12++) {
            sb2.append((secureRandom.nextInt() & Integer.MAX_VALUE) % 10);
        }
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        hashMap.put("[CACHEBUSTING]", sb3);
        Ve d10 = c2904c9.d();
        if (d10 != null && (b10 = ((Ue) d10).b()) != null) {
            String str2 = (String) hashMap.put("[ASSETURI]", b10);
        }
        hashMap.put("$TS", String.valueOf(System.currentTimeMillis()));
        Object obj = c2904c9.f24597t.get("seekPosition");
        if (obj instanceof Integer) {
            num = (Integer) obj;
        }
        if (num != null) {
            i10 = num.intValue();
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        long j10 = i10;
        String format = String.format(locale, "%02d:%02d:%02d.%03d", Arrays.copyOf(new Object[]{Long.valueOf(timeUnit.toHours(j10)), Long.valueOf(timeUnit.toMinutes(j10) - TimeUnit.HOURS.toMinutes(timeUnit.toHours(j10))), Long.valueOf(timeUnit.toSeconds(j10) - TimeUnit.MINUTES.toSeconds(timeUnit.toMinutes(j10))), Long.valueOf(j10 - (timeUnit.toSeconds(j10) * 1000))}, 4));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
        hashMap.put("[CONTENTPLAYHEAD]", format);
        if (c2985h8 != null) {
            String str3 = (String) hashMap.put("$STS", String.valueOf(c2985h8.f24811y));
        }
        Object obj2 = this.f24177b.f25153t;
        if (obj2 == null) {
            obj2 = new HashMap();
        }
        hashMap.putAll(obj2);
        return hashMap;
    }

    @Override // com.inmobi.media.T7
    public final boolean k() {
        if (this.f24176a == 0 && f() != null) {
            return true;
        }
        return false;
    }

    @Override // com.inmobi.media.T7
    public final void l() {
        C3066m9 c3066m9;
        super.l();
        View videoContainerView = getVideoContainerView();
        if (videoContainerView instanceof C3066m9) {
            c3066m9 = (C3066m9) videoContainerView;
        } else {
            c3066m9 = null;
        }
        if (c3066m9 != null) {
            C3050l9 videoView = c3066m9.getVideoView();
            if (this.f24176a == 0 && !k() && videoView.getVideoVolume() > 0) {
                videoView.setLastVolume(-2);
                a(true);
            }
            videoView.pause();
        }
    }

    @Override // com.inmobi.media.T7
    public final boolean n() {
        return !this.A;
    }

    public final void r() {
        C2932e3 c2932e3 = this.f24183h;
        if (c2932e3 != null) {
            if (!c2932e3.f24628g.get()) {
                c2932e3.f24625d.f24850h = 1;
                Intrinsics.checkNotNull(c2932e3.f24624c);
            }
            this.f24183h.b();
        }
        We we2 = this.f24191p;
        if (we2 != null) {
            we2.a((byte) 15);
        }
    }

    public final void i(C2904c9 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f24195t) {
            return;
        }
        videoAsset.f24597t.put("lastMediaVolume", 15);
        videoAsset.a(CampaignEx.JSON_NATIVE_VIDEO_UNMUTE, j(videoAsset), (L7) null, this.W);
        InterfaceC3269z5 interfaceC3269z5 = this.W;
        if (interfaceC3269z5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onVideoUnMuted");
        }
        We we2 = this.f24191p;
        if (we2 != null) {
            we2.a((byte) 14);
        }
    }

    public static final void a(C2904c9 c2904c9, boolean z10, C2870a9 this$0, C3050l9 c3050l9) {
        int videoVolume;
        int lastVolume;
        int videoVolume2;
        int lastVolume2;
        int videoVolume3;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        c2904c9.f24597t.put("visible", Boolean.valueOf(z10));
        if (z10 && !this$0.f24196u) {
            c2904c9.f24597t.put("lastVisibleTimestamp", Long.valueOf(SystemClock.uptimeMillis()));
            if (c3050l9.getPauseScheduled() && c3050l9.getMediaPlayer() != null) {
                if (c2904c9.c()) {
                    c3050l9.k();
                } else {
                    c3050l9.c();
                }
            }
            Handler handler = c3050l9.f24980s;
            if (handler != null) {
                handler.removeMessages(0);
            }
            c3050l9.f24981t = false;
            Intrinsics.checkNotNull(c3050l9);
            if (this$0.f24176a == 0 && !this$0.k() && (videoVolume3 = c3050l9.getVideoVolume()) != c3050l9.getLastVolume() && c3050l9.isPlaying()) {
                this$0.a(videoVolume3 <= 0);
                c3050l9.setLastVolume(videoVolume3);
            }
            if (this$0.f24176a == 0 && !this$0.k() && !c2904c9.B && !c3050l9.isPlaying() && c3050l9.getState() == 5 && (videoVolume2 = c3050l9.getVideoVolume()) != (lastVolume2 = c3050l9.getLastVolume()) && lastVolume2 > 0) {
                this$0.a(true);
                c3050l9.setLastVolume(videoVolume2);
            }
            if (1 == c3050l9.getState()) {
                G8 mediaPlayer = c3050l9.getMediaPlayer();
                if (mediaPlayer == null) {
                    return;
                }
                mediaPlayer.f23683b = 3;
                return;
            } else if (2 == c3050l9.getState() || 4 == c3050l9.getState() || (5 == c3050l9.getState() && c2904c9.B)) {
                c3050l9.start();
                return;
            } else {
                return;
            }
        }
        Intrinsics.checkNotNull(c3050l9);
        if (this$0.f24176a == 0 && !this$0.k() && !this$0.f24196u && (videoVolume = c3050l9.getVideoVolume()) != (lastVolume = c3050l9.getLastVolume()) && lastVolume > 0) {
            this$0.a(true);
            c3050l9.setLastVolume(videoVolume);
        }
        c3050l9.a(c2904c9.E);
    }

    public final void b(C2904c9 videoAsset, C3050l9 videoView) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        Intrinsics.checkNotNullParameter(videoView, "videoView");
        InterfaceC3269z5 interfaceC3269z5 = this.W;
        if (interfaceC3269z5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "onVideoViewCreated");
        }
        videoView.setIsLockScreen(this.D);
        ViewParent parent = videoView.getParent();
        C3066m9 c3066m9 = parent instanceof C3066m9 ? (C3066m9) parent : null;
        if (c3066m9 != null) {
            this.Z = new WeakReference(c3066m9);
            C2938e9 mediaController = c3066m9.getVideoView().getMediaController();
            if (mediaController != null) {
                mediaController.setVideoAd(this);
            }
        }
    }

    @Override // com.inmobi.media.T7, com.inmobi.media.InterfaceC3231x
    public final void b() {
        C3050l9 videoView;
        if (this.f24195t) {
            return;
        }
        View videoContainerView = getVideoContainerView();
        C3066m9 c3066m9 = videoContainerView instanceof C3066m9 ? (C3066m9) videoContainerView : null;
        if (c3066m9 != null && (videoView = c3066m9.getVideoView()) != null) {
            videoView.g();
        }
        super.b();
    }

    public final void a(boolean z10) {
        P0 p02;
        if (this.f24176a != 0 || k() || (p02 = this.f24198w) == null) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z5 = p02.f23966a.f24083j;
        if (interfaceC3269z5 != null) {
            String e10 = S0.e();
            Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
            ((A5) interfaceC3269z5).a(e10, "onAudioStateChanged");
        }
        if (p02.f23966a.Z()) {
            return;
        }
        F0 f02 = (F0) p02.f23967b.get();
        if (f02 != null) {
            f02.a(z10);
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = p02.f23966a.f24083j;
        if (interfaceC3269z52 != null) {
            ((A5) interfaceC3269z52).b("InMobi", "Listener was garbage collected.Unable to give callback");
        }
    }

    public final void b(C2904c9 videoAsset) {
        HashMap hashMap;
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f24195t) {
            return;
        }
        Object obj = videoAsset.f24597t.get("didRequestFullScreen");
        if (Intrinsics.areEqual(obj instanceof Boolean ? (Boolean) obj : null, Boolean.TRUE)) {
            HashMap hashMap2 = videoAsset.f24597t;
            Boolean bool = Boolean.FALSE;
            hashMap2.put("didRequestFullScreen", bool);
            C2920d8 c2920d8 = videoAsset.f24600w;
            if (c2920d8 != null && (hashMap = c2920d8.f24597t) != null) {
                hashMap.put("didRequestFullScreen", bool);
            }
            a();
            videoAsset.f24597t.put("isFullScreen", bool);
        }
    }

    public final void a(C2904c9 videoAsset, int i10) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        if (this.f24195t) {
            return;
        }
        InterfaceC3269z5 interfaceC3269z5 = this.W;
        if (interfaceC3269z5 != null) {
            String str = this.X;
            ((A5) interfaceC3269z5).a(str, X8.a(str, "TAG", "Moat onVideoError + ", i10));
        }
        videoAsset.a("error", j(videoAsset), (L7) null, this.W);
        InterfaceC3269z5 interfaceC3269z52 = this.W;
        if (interfaceC3269z52 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z52).c(TAG, "onVideoError");
        }
        We we2 = this.f24191p;
        if (we2 != null) {
            we2.a((byte) 17);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        if (r0.isPlaying() == true) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.inmobi.media.C2904c9 r7, com.inmobi.media.C3050l9 r8) {
        /*
            r6 = this;
            boolean r0 = r6.f24195t
            if (r0 != 0) goto Lc0
            java.lang.ref.WeakReference r0 = r6.f24199x
            java.lang.Object r0 = r0.get()
            if (r0 != 0) goto Le
            goto Lc0
        Le:
            java.util.HashMap r0 = r7.f24597t
            java.lang.String r1 = "didRequestFullScreen"
            java.lang.Object r0 = r0.get(r1)
            boolean r2 = r0 instanceof java.lang.Boolean
            if (r2 == 0) goto L1d
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            goto L1e
        L1d:
            r0 = 0
        L1e:
            r2 = 0
            if (r0 == 0) goto L26
            boolean r0 = r0.booleanValue()
            goto L27
        L26:
            r0 = r2
        L27:
            if (r0 != 0) goto Lc0
            java.util.HashMap r0 = r7.f24597t
            java.lang.Boolean r3 = java.lang.Boolean.TRUE
            r0.put(r1, r3)
            int r1 = r8.getCurrentPosition()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.String r4 = "seekPosition"
            r0.put(r4, r1)
            int r1 = r8.getVolume()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.String r5 = "lastMediaVolume"
            r0.put(r5, r1)
            com.inmobi.media.G8 r0 = r8.getMediaPlayer()
            if (r0 == 0) goto L58
            boolean r0 = r0.isPlaying()
            r1 = 1
            if (r0 != r1) goto L58
            goto L59
        L58:
            r1 = r2
        L59:
            if (r1 == 0) goto L6b
            com.inmobi.media.G8 r0 = r8.getMediaPlayer()
            if (r0 == 0) goto L64
            r0.pause()
        L64:
            com.inmobi.media.f8 r0 = r8.getAudioFocusManager$media_release()
            r0.a()
        L6b:
            com.inmobi.media.G8 r0 = r8.getMediaPlayer()
            if (r0 != 0) goto L72
            goto L75
        L72:
            r1 = 4
            r0.f23682a = r1
        L75:
            java.util.HashMap r0 = r7.f24597t
            java.lang.String r1 = "isFullScreen"
            r0.put(r1, r3)
            java.util.HashMap r7 = r7.f24597t
            com.inmobi.media.G8 r8 = r8.getMediaPlayer()
            if (r8 == 0) goto L88
            int r2 = r8.getCurrentPosition()
        L88:
            java.lang.Integer r8 = java.lang.Integer.valueOf(r2)
            r7.put(r4, r8)
            com.inmobi.media.z5 r7 = r6.f24185j
            if (r7 == 0) goto La1
            java.lang.String r8 = r6.f24188m
            java.lang.String r0 = "TAG"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r0)
            com.inmobi.media.A5 r7 = (com.inmobi.media.A5) r7
            java.lang.String r0 = "launchFullscreen"
            r7.c(r8, r0)
        La1:
            com.inmobi.media.T7 r7 = com.inmobi.media.T7.c(r6)
            if (r7 != 0) goto La8
            goto Lc0
        La8:
            com.inmobi.media.P0 r8 = r7.f24198w
            if (r8 == 0) goto Laf
            r8.e()
        Laf:
            com.inmobi.media.A r8 = r6.M
            int r0 = r6.hashCode()
            com.inmobi.media.M7 r1 = new com.inmobi.media.M7
            r1.<init>(r6, r7)
            r8.getClass()
            com.inmobi.media.A.a(r0, r1)
        Lc0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C2870a9.a(com.inmobi.media.c9, com.inmobi.media.l9):void");
    }

    public final void c(C2904c9 videoAsset) {
        Intrinsics.checkNotNullParameter(videoAsset, "videoAsset");
        InterfaceC3269z5 interfaceC3269z5 = this.W;
        if (interfaceC3269z5 != null) {
            String TAG = this.X;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z5).c(TAG, "Video completed; rewards, if any, will be unlocked and end-card displayed");
        }
        Object obj = videoAsset.f24597t.get("didSignalVideoCompleted");
        Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
        C2932e3 c2932e3 = this.f24183h;
        if (c2932e3 != null) {
            if (!c2932e3.f24628g.get()) {
                c2932e3.f24625d.f24851i = 1;
                Intrinsics.checkNotNull(c2932e3.f24624c);
            }
            this.f24183h.b();
        }
        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
            InterfaceC3269z5 interfaceC3269z52 = this.W;
            if (interfaceC3269z52 != null) {
                String TAG2 = this.X;
                Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
                ((A5) interfaceC3269z52).c(TAG2, "Ignoring callback onAdRewardsUnlocked(), as it is only fired after first time video is played.");
            }
        } else {
            q();
            P0 p02 = this.f24198w;
            if (p02 != null) {
                InterfaceC3269z5 interfaceC3269z53 = p02.f23966a.f24083j;
                if (interfaceC3269z53 != null) {
                    String e10 = S0.e();
                    Intrinsics.checkNotNullExpressionValue(e10, "<get-TAG>(...)");
                    ((A5) interfaceC3269z53).a(e10, "onMediaPlaybackComplete");
                }
                if (!p02.f23966a.Z()) {
                    F0 f02 = (F0) p02.f23967b.get();
                    if (f02 != null) {
                        f02.f();
                    } else {
                        InterfaceC3269z5 interfaceC3269z54 = p02.f23966a.f24083j;
                        if (interfaceC3269z54 != null) {
                            ((A5) interfaceC3269z54).b("InMobi", "Listener was garbage collected.Unable to give callback");
                        }
                    }
                }
            }
        }
        if (1 == this.f24176a) {
            b((C2920d8) videoAsset);
        }
    }
}
