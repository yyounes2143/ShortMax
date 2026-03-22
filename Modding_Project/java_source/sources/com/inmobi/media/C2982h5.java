package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.h5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2982h5 implements InterfaceC2865a4 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3014j5 f24807a;

    public C2982h5(C3014j5 c3014j5) {
        this.f24807a = c3014j5;
    }

    public final void a(String expandInput, Z3 inputType, float f10, boolean z10, long j10, R6 r62) {
        String impressionId;
        String creativeId;
        String creativeId2;
        String impressionId2;
        Y3 y32;
        Intrinsics.checkNotNullParameter(expandInput, "expandInput");
        Intrinsics.checkNotNullParameter(inputType, "inputType");
        C3014j5 c3014j5 = this.f24807a;
        Activity activity = (Activity) c3014j5.f24886a.get();
        if (activity != null) {
            if (c3014j5.f24890e == null) {
                Y3 y33 = new Y3(activity);
                InterfaceC3269z5 interfaceC3269z5 = c3014j5.f24893h;
                if (interfaceC3269z5 != null) {
                    y33.setLogger(interfaceC3269z5);
                }
                y33.setId(65518);
                y33.setEmbeddedBrowserUpdateListener(c3014j5.f24894i);
                c3014j5.f24890e = y33;
            }
            InterfaceC3231x interfaceC3231x = c3014j5.f24887b;
            if ((interfaceC3231x instanceof GestureDetector$OnGestureListenerC2941ec) && (y32 = c3014j5.f24890e) != null) {
                y32.setUserLeftApplicationListener(((GestureDetector$OnGestureListenerC2941ec) interfaceC3231x).getListener());
            }
            Y3 y34 = c3014j5.f24890e;
            if (y34 != null) {
                InterfaceC3231x interfaceC3231x2 = c3014j5.f24887b;
                String placementType = (interfaceC3231x2 == null || (r7 = interfaceC3231x2.getAdType()) == null) ? "banner" : "banner";
                InterfaceC3231x interfaceC3231x3 = c3014j5.f24887b;
                if (interfaceC3231x3 == null || (impressionId2 = interfaceC3231x3.getImpressionId()) == null) {
                    impressionId = "";
                } else {
                    impressionId = impressionId2;
                }
                InterfaceC3231x interfaceC3231x4 = c3014j5.f24887b;
                if (interfaceC3231x4 == null || (creativeId2 = interfaceC3231x4.getCreativeId()) == null) {
                    creativeId = "";
                } else {
                    creativeId = creativeId2;
                }
                Intrinsics.checkNotNullParameter(expandInput, "expandInput");
                Intrinsics.checkNotNullParameter(inputType, "inputType");
                Intrinsics.checkNotNullParameter(placementType, "placementType");
                Intrinsics.checkNotNullParameter(impressionId, "impressionId");
                Intrinsics.checkNotNullParameter(creativeId, "creativeId");
                if (y34.f24391c == null) {
                    Context context = y34.getContext();
                    Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                    C2981h4 c2981h4 = new C2981h4(context, j10, placementType, impressionId, creativeId, new X3(y34), y34.f24394f);
                    y34.f24391c = c2981h4;
                    c2981h4.setId(65517);
                }
                C2981h4 c2981h42 = y34.f24391c;
                if (c2981h42 != null) {
                    c2981h42.setLandingPageTelemetryControlInfo(r62);
                }
                if (y34.f24390b != expandInput.hashCode()) {
                    if (inputType == Z3.f24433a) {
                        C2981h4 c2981h43 = y34.f24391c;
                        if (c2981h43 != null) {
                            c2981h43.loadUrl(expandInput);
                        }
                    } else {
                        C2981h4 c2981h44 = y34.f24391c;
                        if (c2981h44 != null) {
                            c2981h44.loadData(expandInput, "text/html", "UTF-8");
                        }
                    }
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                    layoutParams.addRule(10);
                    layoutParams.addRule(2, 65533);
                    C2981h4 c2981h45 = y34.f24391c;
                    if (c2981h45 != null) {
                        c2981h45.setLayoutParams(layoutParams);
                    }
                    if (y34.findViewById(65517) == null) {
                        y34.addView(y34.f24391c, layoutParams);
                    }
                }
                y34.f24390b = expandInput.hashCode();
                if (z10) {
                    if (y34.findViewById(65533) == null) {
                        float f11 = U3.d().f24299c;
                        LinearLayout linearLayout = new LinearLayout(y34.getContext());
                        linearLayout.setOrientation(0);
                        linearLayout.setId(65533);
                        linearLayout.setWeightSum(100.0f);
                        linearLayout.setBackgroundResource(17301658);
                        linearLayout.setBackgroundColor(-7829368);
                        y34.setBackgroundColor(-7829368);
                        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, (int) (48 * f11));
                        layoutParams2.addRule(12);
                        y34.addView(linearLayout, layoutParams2);
                        if (B2.a(y34.f24389a)) {
                            Df df2 = y34.f24395g;
                            if (df2 != null) {
                                df2.a();
                            }
                            y34.f24395g = new Df(y34.f24389a, new W3(layoutParams2), y34.f24394f);
                        }
                        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
                        layoutParams3.weight = 25.0f;
                        y34.b(linearLayout, layoutParams3);
                        y34.d(linearLayout, layoutParams3);
                        y34.a(linearLayout, layoutParams3);
                        y34.c(linearLayout, layoutParams3);
                    }
                } else {
                    View findViewById = y34.findViewById(65533);
                    if (findViewById != null) {
                        y34.removeView(findViewById);
                    }
                }
            }
            float f12 = 1 - f10;
            c3014j5.f24892g = f12;
            P p10 = c3014j5.f24888c;
            if (p10 != null) {
                p10.f23964c = f12;
                p10.e();
            }
            c3014j5.c();
        }
    }
}
