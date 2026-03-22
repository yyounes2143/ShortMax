package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.GridView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class MBGridView extends GridView implements InterBase {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f26149a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Boolean> f26150b;

    /* renamed from: c  reason: collision with root package name */
    private String f26151c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.MBGridView$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26152a;

        static {
            int[] iArr = new int[c.values().length];
            f26152a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26152a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26152a[c.fadingEdge.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26152a[c.visibility.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public MBGridView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f26151c = "";
        try {
            this.f26149a = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f26149a, this);
        } catch (Exception e10) {
            p0.b("MBGridView", e10.getMessage());
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f26149a;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26149a.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26149a;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26149a.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26149a;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26149a.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26149a;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26149a.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26149a;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26149a.get("mbridgeStrategy");
        }
        return "";
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f26150b;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26150b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26151c);
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f26150b;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26150b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26151c);
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f26150b = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f26151c = campaignEx.getCampaignUnitId();
        }
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public AbsListView.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        AbsListView.LayoutParams layoutParams = (AbsListView.LayoutParams) generateDefaultLayoutParams();
        HashMap<String, c> c10 = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = c10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f26152a[cVar.ordinal()];
                if (i11 == 1) {
                    String attributeValue = attributeSet.getAttributeValue(i10);
                    if (!attributeValue.startsWith("f") && !attributeValue.startsWith("m")) {
                        if (attributeValue.startsWith("wrap")) {
                            layoutParams.width = -2;
                        } else {
                            layoutParams.width = b.a().a(attributeValue);
                        }
                    } else {
                        layoutParams.width = -1;
                    }
                } else if (i11 == 2) {
                    String attributeValue2 = attributeSet.getAttributeValue(i10);
                    if (!attributeValue2.startsWith("f") && !attributeValue2.startsWith("m")) {
                        if (attributeValue2.startsWith("wrap")) {
                            layoutParams.height = -2;
                        } else {
                            layoutParams.height = b.a().a(attributeValue2);
                        }
                    } else {
                        layoutParams.height = -1;
                    }
                } else if (i11 == 3) {
                    setHorizontalFadingEdgeEnabled(attributeSet.getAttributeBooleanValue(i10, false));
                } else if (i11 == 4) {
                    String attributeValue3 = attributeSet.getAttributeValue(i10);
                    if (!TextUtils.isEmpty(attributeValue3)) {
                        if (attributeValue3.equals("invisible")) {
                            setVisibility(4);
                        } else if (attributeValue3.equalsIgnoreCase("gone")) {
                            setVisibility(8);
                        }
                    }
                }
            }
        }
        return layoutParams;
    }
}
