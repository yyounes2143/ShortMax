package com.mbridge.msdk.dycreator.baseview.extview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeFramLayout;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.p0;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class MBExtFrameLayout extends MBridgeFramLayout implements InterBase {

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f26339b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Boolean> f26340c;

    /* renamed from: d  reason: collision with root package name */
    private String f26341d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.extview.MBExtFrameLayout$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26342a;

        static {
            int[] iArr = new int[c.values().length];
            f26342a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26342a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26342a[c.layout_gravity.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26342a[c.layout_margin.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26342a[c.layout_marginLeft.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f26342a[c.layout_marginRight.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f26342a[c.layout_marginTop.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f26342a[c.layout_marginBottom.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public MBExtFrameLayout(Context context) {
        super(context);
        this.f26341d = "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f26339b;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26339b.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26339b;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26339b.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26339b;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26339b.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26339b;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26339b.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26339b;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26339b.get("mbridgeStrategy");
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.dycreator.baseview.cusview.MBridgeFramLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f26340c;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26340c.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26341d);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mbridge.msdk.dycreator.baseview.cusview.MBridgeFramLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f26340c;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26340c.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26341d);
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f26340c = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f26341d = campaignEx.getCampaignUnitId();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        FrameLayout.LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        HashMap b10 = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = (c) b10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f26342a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue = attributeSet.getAttributeValue(i10);
                        if (!attributeValue.startsWith("f") && !attributeValue.startsWith("m")) {
                            if (attributeValue.startsWith(SRStrategy.MEDIAINFO_KEY_WIDTH)) {
                                generateDefaultLayoutParams.width = -2;
                                break;
                            } else {
                                generateDefaultLayoutParams.width = b.a().a(attributeValue);
                                break;
                            }
                        } else {
                            generateDefaultLayoutParams.width = -1;
                            continue;
                        }
                    case 2:
                        String attributeValue2 = attributeSet.getAttributeValue(i10);
                        if (!attributeValue2.startsWith("f") && !attributeValue2.startsWith("m")) {
                            if (attributeValue2.startsWith(SRStrategy.MEDIAINFO_KEY_WIDTH)) {
                                generateDefaultLayoutParams.width = -2;
                                continue;
                            } else {
                                generateDefaultLayoutParams.height = b.a().a(attributeValue2);
                                break;
                            }
                        } else {
                            generateDefaultLayoutParams.width = -1;
                            break;
                        }
                    case 3:
                        generateDefaultLayoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i10));
                        continue;
                    case 4:
                        int a10 = b.a().a(attributeSet.getAttributeValue(i10));
                        generateDefaultLayoutParams.setMargins(a10, a10, a10, a10);
                        continue;
                    case 5:
                        generateDefaultLayoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 6:
                        generateDefaultLayoutParams.rightMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 7:
                        generateDefaultLayoutParams.topMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 8:
                        generateDefaultLayoutParams.bottomMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                }
            }
        }
        return generateDefaultLayoutParams;
    }

    public MBExtFrameLayout(Context context, AttributeSet attributeSet) {
        super(context);
        this.f26341d = "";
        try {
            this.f26339b = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f26339b, this);
        } catch (Exception e10) {
            p0.b("MBExtFrameLayout", e10.getMessage());
        }
    }

    public MBExtFrameLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26341d = "";
    }
}
