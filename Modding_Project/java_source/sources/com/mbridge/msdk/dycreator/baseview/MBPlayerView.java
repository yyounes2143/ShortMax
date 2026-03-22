package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.playercommon.PlayerView;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class MBPlayerView extends PlayerView implements InterBase {

    /* renamed from: a  reason: collision with root package name */
    private float f26175a;

    /* renamed from: b  reason: collision with root package name */
    private float f26176b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f26177c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Boolean> f26178d;

    /* renamed from: e  reason: collision with root package name */
    private String f26179e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.MBPlayerView$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26180a;

        static {
            int[] iArr = new int[c.values().length];
            f26180a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26180a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26180a[c.layout_centerHorizontal.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26180a[c.layout_centerVertical.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26180a[c.layout_weight.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f26180a[c.gravity.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f26180a[c.layout_margin.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f26180a[c.layout_marginLeft.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f26180a[c.layout_marginRight.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f26180a[c.layout_marginTop.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f26180a[c.layout_marginBottom.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f26180a[c.layout_gravity.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public MBPlayerView(Context context) {
        super(context);
        this.f26179e = "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f26177c;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26177c.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26177c;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26177c.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26177c;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26177c.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26177c;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26177c.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26177c;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26177c.get("mbridgeStrategy");
        }
        return "";
    }

    public float getxInScreen() {
        return this.f26175a;
    }

    public float getyInScreen() {
        return this.f26176b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f26178d;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26178d.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26179e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f26178d;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26178d.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26179e);
        }
    }

    @Override // com.mbridge.msdk.playercommon.PlayerView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f26175a = motionEvent.getRawX();
        this.f26176b = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f26178d = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f26179e = campaignEx.getCampaignUnitId();
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0);
        HashMap b10 = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = (c) b10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f26180a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue = attributeSet.getAttributeValue(i10);
                        if (!attributeValue.startsWith("f") && !attributeValue.startsWith("m")) {
                            if (attributeValue.startsWith("wrap")) {
                                layoutParams.width = -2;
                                break;
                            } else {
                                layoutParams.width = b.a().a(attributeValue);
                                break;
                            }
                        } else {
                            layoutParams.width = -1;
                            continue;
                        }
                    case 2:
                        String attributeValue2 = attributeSet.getAttributeValue(i10);
                        if (!attributeValue2.startsWith("f") && !attributeValue2.startsWith("m")) {
                            if (attributeValue2.startsWith("wrap")) {
                                layoutParams.height = -2;
                                continue;
                            } else {
                                layoutParams.height = b.a().a(attributeValue2);
                                break;
                            }
                        } else {
                            layoutParams.height = -1;
                            break;
                        }
                        break;
                    case 3:
                        layoutParams.gravity = 1;
                        continue;
                    case 4:
                        layoutParams.gravity = 16;
                        continue;
                    case 5:
                        layoutParams.weight = attributeSet.getAttributeFloatValue(i10, 0.0f);
                        continue;
                    case 6:
                        setGravity(b.a().b(attributeSet.getAttributeValue(i10)));
                        continue;
                    case 7:
                        int a10 = b.a().a(attributeSet.getAttributeValue(i10));
                        layoutParams.bottomMargin = a10;
                        layoutParams.leftMargin = a10;
                        layoutParams.rightMargin = a10;
                        layoutParams.topMargin = a10;
                        continue;
                    case 8:
                        layoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 9:
                        layoutParams.rightMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 10:
                        layoutParams.topMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 11:
                        layoutParams.bottomMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 12:
                        layoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i10));
                        continue;
                }
            }
        }
        return layoutParams;
    }

    public MBPlayerView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f26179e = "";
        try {
            this.f26177c = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f26177c, this);
        } catch (Exception e10) {
            p0.b("MBLinearLayout", e10.getMessage());
        }
    }
}
