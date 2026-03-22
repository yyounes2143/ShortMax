package com.inmobi.media;

import android.app.Activity;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.view.ViewCompat;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import com.inmobi.media.C3270z6;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.z6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3270z6 extends P {

    /* renamed from: e  reason: collision with root package name */
    public final WeakReference f25483e;

    /* renamed from: f  reason: collision with root package name */
    public final InterfaceC3231x f25484f;

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f25485g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f25486h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f25487i;

    /* renamed from: j  reason: collision with root package name */
    public C3050l9 f25488j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3270z6(WeakReference activityRef, InterfaceC3231x adContainer, RelativeLayout adBackgroundView) {
        super(adBackgroundView);
        Intrinsics.checkNotNullParameter(activityRef, "activityRef");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        Intrinsics.checkNotNullParameter(adBackgroundView, "adBackgroundView");
        this.f25483e = activityRef;
        this.f25484f = adContainer;
        this.f25485g = adBackgroundView;
    }

    public static final void a(C3270z6 this$0, C2904c9 c2904c9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f25484f.getPlacementType() == 1) {
            Object obj = c2904c9.f24597t.get("didCompleteQ4");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            if (((Boolean) obj).booleanValue()) {
                return;
            }
        }
        C3050l9 c3050l9 = this$0.f25488j;
        if (c3050l9 != null) {
            c3050l9.start();
        }
    }

    @Override // com.inmobi.media.P
    public final void b() {
        boolean z10;
        Object obj;
        C3050l9 c3050l9;
        Activity activity = (Activity) this.f25483e.get();
        if (!(activity instanceof InMobiAdActivity)) {
            z10 = false;
        } else {
            z10 = ((InMobiAdActivity) activity).f23433e;
        }
        C2904c9 c2904c9 = null;
        C3066m9 c3066m9 = null;
        if (z10) {
            InterfaceC3231x interfaceC3231x = this.f25484f;
            if (interfaceC3231x instanceof C2870a9) {
                View videoContainerView = ((C2870a9) interfaceC3231x).getVideoContainerView();
                if (videoContainerView instanceof C3066m9) {
                    c3066m9 = (C3066m9) videoContainerView;
                }
                if (c3066m9 != null) {
                    Object tag = c3066m9.getVideoView().getTag();
                    Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                    a((C2904c9) tag);
                }
            } else if (interfaceC3231x instanceof T7) {
                a((C2904c9) null);
            }
        } else {
            InterfaceC3231x interfaceC3231x2 = this.f25484f;
            if (interfaceC3231x2 instanceof C2870a9) {
                C3050l9 c3050l92 = this.f25488j;
                if (c3050l92 != null) {
                    obj = c3050l92.getTag();
                } else {
                    obj = null;
                }
                if (obj instanceof C2904c9) {
                    c2904c9 = obj;
                }
                if (c2904c9 != null) {
                    if (1 == ((T7) interfaceC3231x2).f24176a && (c3050l9 = this.f25488j) != null) {
                        c3050l9.f();
                    }
                    a(c2904c9);
                }
            } else if (interfaceC3231x2 instanceof T7) {
                a((C2904c9) null);
            }
            SparseArray sparseArray = InMobiAdActivity.f23426k;
            InterfaceC3231x container = this.f25484f;
            Intrinsics.checkNotNullParameter(container, "container");
            InMobiAdActivity.f23426k.remove(container.hashCode());
        }
        this.f25484f.b();
    }

    @Override // com.inmobi.media.P
    public final void c() {
        Object obj;
        InterfaceC3231x interfaceC3231x = this.f25484f;
        final C2904c9 c2904c9 = null;
        if (interfaceC3231x instanceof C2870a9) {
            C3050l9 c3050l9 = this.f25488j;
            if (c3050l9 != null) {
                obj = c3050l9.getTag();
            } else {
                obj = null;
            }
            if (obj instanceof C2904c9) {
                c2904c9 = obj;
            }
            if (c2904c9 != null && this.f25486h) {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: ub.p8
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3270z6.a(C3270z6.this, c2904c9);
                    }
                }, 50L);
            }
            try {
                if (!this.f25487i) {
                    this.f25487i = true;
                    InterfaceC3215w fullScreenEventsListener = this.f25484f.getFullScreenEventsListener();
                    if (fullScreenEventsListener != null) {
                        fullScreenEventsListener.a(c2904c9);
                    }
                }
            } catch (Exception e10) {
                S5 s52 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            }
        } else if (interfaceC3231x instanceof T7) {
            try {
                if (!this.f25487i) {
                    this.f25487i = true;
                    InterfaceC3215w fullScreenEventsListener2 = interfaceC3231x.getFullScreenEventsListener();
                    if (fullScreenEventsListener2 != null) {
                        fullScreenEventsListener2.a(null);
                    }
                }
            } catch (Exception e11) {
                S5 s53 = S5.f24132a;
                S5.f24135d.a(AbstractC3221w5.a(e11, NotificationCompat.CATEGORY_EVENT));
            }
        }
        this.f25486h = false;
    }

    @Override // com.inmobi.media.P
    public final void d() {
        this.f25486h = true;
        C3050l9 c3050l9 = this.f25488j;
        if (c3050l9 != null) {
            c3050l9.pause();
        }
    }

    @Override // com.inmobi.media.P
    public final void f() {
        C3113p8 c3113p8;
        Point point;
        View view;
        C3066m9 c3066m9;
        Object obj;
        C2985h8 c2985h8;
        C2937e8 c2937e8;
        byte placementType = this.f25484f.getPlacementType();
        this.f25485g.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        Object dataModel = this.f25484f.getDataModel();
        C3046l5 c3046l5 = null;
        if (dataModel instanceof C3113p8) {
            c3113p8 = (C3113p8) dataModel;
        } else {
            c3113p8 = null;
        }
        if (c3113p8 != null && (c2985h8 = c3113p8.f25138e) != null && (c2937e8 = c2985h8.f24581d) != null) {
            point = c2937e8.f24637a;
        } else {
            point = null;
        }
        Xe viewableAd = this.f25484f.getViewableAd();
        int i10 = 0;
        if (viewableAd != null) {
            view = viewableAd.a(null, this.f25485g, false);
        } else {
            view = null;
        }
        InterfaceC3231x interfaceC3231x = this.f25484f;
        if (interfaceC3231x instanceof C2870a9) {
            View videoContainerView = ((C2870a9) interfaceC3231x).getVideoContainerView();
            if (videoContainerView instanceof C3066m9) {
                c3066m9 = (C3066m9) videoContainerView;
            } else {
                c3066m9 = null;
            }
            if (c3066m9 != null) {
                C3050l9 videoView = c3066m9.getVideoView();
                this.f25488j = videoView;
                if (videoView != null) {
                    videoView.requestFocus();
                }
                C3050l9 c3050l9 = this.f25488j;
                if (c3050l9 != null) {
                    obj = c3050l9.getTag();
                } else {
                    obj = null;
                }
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                C2904c9 c2904c9 = (C2904c9) obj;
                C2920d8 c2920d8 = c2904c9.f24600w;
                if (c2920d8 != null) {
                    Intrinsics.checkNotNull(c2920d8, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeVideoAsset");
                    c2904c9.a((C2904c9) c2920d8);
                }
                if (placementType == 0) {
                    c2904c9.f24597t.put("placementType", (byte) 0);
                } else {
                    c2904c9.f24597t.put("placementType", (byte) 1);
                }
            }
        }
        if (view != null) {
            Intrinsics.checkNotNull(point);
            this.f25485g.addView(view, new RelativeLayout.LayoutParams(point.x, point.y));
        }
        Activity activity = (Activity) this.f25483e.get();
        if (activity != null && c3113p8 != null) {
            byte b10 = c3113p8.f25135b;
            if (b10 == 1) {
                i10 = 1;
            } else if (b10 != 2) {
                i10 = activity.getRequestedOrientation();
            }
            if (activity instanceof InMobiAdActivity) {
                C3046l5 c3046l52 = ((InMobiAdActivity) activity).f23429a;
                if (c3046l52 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("orientationHandler");
                } else {
                    c3046l5 = c3046l52;
                }
                c3046l5.f24954a.setRequestedOrientation(i10);
            }
        }
    }

    @Override // com.inmobi.media.P
    public final void g() {
        View view;
        Object obj;
        C2904c9 c2904c9;
        Object obj2;
        try {
            AdConfig adConfig = this.f25484f.getAdConfig();
            Xe viewableAd = this.f25484f.getViewableAd();
            if (viewableAd != null) {
                view = viewableAd.b();
            } else {
                view = null;
            }
            if (view != null) {
                InterfaceC3231x interfaceC3231x = this.f25484f;
                if (interfaceC3231x instanceof C2870a9) {
                    C3050l9 c3050l9 = this.f25488j;
                    if (c3050l9 != null) {
                        obj = c3050l9.getTag();
                    } else {
                        obj = null;
                    }
                    if (obj instanceof C2904c9) {
                        c2904c9 = (C2904c9) obj;
                    } else {
                        c2904c9 = null;
                    }
                    if (c2904c9 != null) {
                        AdConfig.ViewabilityConfig viewability = adConfig.getViewability();
                        int videoImpressionMinTimeViewed = viewability.getVideoImpressionMinTimeViewed();
                        HashMap hashMap = c2904c9.F;
                        if (hashMap != null) {
                            obj2 = hashMap.get(CrashHianalyticsData.TIME);
                        } else {
                            obj2 = null;
                        }
                        if (obj2 instanceof Integer) {
                            videoImpressionMinTimeViewed = ((Number) obj2).intValue();
                        }
                        viewability.setVideoImpressionMinTimeViewed(videoImpressionMinTimeViewed);
                        viewableAd.a((Map) null);
                    }
                } else if (interfaceC3231x instanceof T7) {
                    try {
                        viewableAd.a((Map) null);
                    } catch (Exception unused) {
                        InterfaceC3215w fullScreenEventsListener = this.f25484f.getFullScreenEventsListener();
                        if (fullScreenEventsListener != null) {
                            fullScreenEventsListener.a();
                        }
                    }
                }
            }
        } catch (Exception e10) {
            InterfaceC3215w fullScreenEventsListener2 = this.f25484f.getFullScreenEventsListener();
            if (fullScreenEventsListener2 != null) {
                fullScreenEventsListener2.a();
            }
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }

    @Override // com.inmobi.media.P
    public final void a() {
        if (this.f25484f.c()) {
            return;
        }
        InterfaceC3231x interfaceC3231x = this.f25484f;
        if (interfaceC3231x instanceof C2870a9) {
            if (((C2870a9) interfaceC3231x).f24177b.f25136c) {
                return;
            }
            Activity activity = (Activity) this.f25483e.get();
            if (activity instanceof InMobiAdActivity) {
                ((InMobiAdActivity) activity).f23433e = true;
            }
            C3050l9 c3050l9 = this.f25488j;
            if (c3050l9 == null) {
                Activity activity2 = (Activity) this.f25483e.get();
                if (activity2 == null) {
                    return;
                }
                activity2.finish();
                return;
            }
            Object tag = c3050l9.getTag();
            C2904c9 c2904c9 = tag instanceof C2904c9 ? (C2904c9) tag : null;
            if (c2904c9 != null) {
                if (1 == ((T7) interfaceC3231x).f24176a) {
                    c3050l9.f();
                }
                try {
                    Object obj = c2904c9.f24597t.get("isFullScreen");
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
                    if (((Boolean) obj).booleanValue()) {
                        c2904c9.f24597t.put("seekPosition", Integer.valueOf(c3050l9.getCurrentPosition()));
                        ((C2870a9) interfaceC3231x).b(c2904c9);
                    }
                } catch (Exception e10) {
                    AbstractC2984h7.a((byte) 2, "InMobi", "SDK encountered unexpected error in closing video");
                    S5 s52 = S5.f24132a;
                    S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
                }
            }
        } else if (interfaceC3231x instanceof T7) {
            T7 t72 = (T7) interfaceC3231x;
            if (t72.f24177b.f25136c) {
                return;
            }
            t72.a();
        } else {
            Activity activity3 = (Activity) this.f25483e.get();
            if (activity3 == null) {
                return;
            }
            activity3.finish();
        }
    }

    public final void a(C2904c9 c2904c9) {
        try {
            InterfaceC3215w fullScreenEventsListener = this.f25484f.getFullScreenEventsListener();
            if (fullScreenEventsListener != null) {
                fullScreenEventsListener.b(c2904c9);
            }
        } catch (Exception e10) {
            AbstractC2984h7.a((byte) 2, "InMobi", "SDK encountered unexpected error while finishing fullscreen view");
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
        }
    }
}
