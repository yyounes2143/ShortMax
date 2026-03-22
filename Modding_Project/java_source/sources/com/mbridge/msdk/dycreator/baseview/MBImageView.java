package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
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
public class MBImageView extends ImageView implements InterBase {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Boolean> f26157a;

    /* renamed from: b  reason: collision with root package name */
    private String f26158b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f26159c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.MBImageView$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26160a;

        static {
            int[] iArr = new int[c.values().length];
            f26160a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26160a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26160a[c.visibility.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public MBImageView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f26158b = "";
        if (context != null && attributeSet != null) {
            try {
                this.f26159c = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            } catch (Exception e10) {
                p0.b("MBImageView", e10.getMessage());
                return;
            }
        }
        a.a(this, attributeSet);
        setLayoutParams(generateLayoutParams(context, attributeSet));
        com.mbridge.msdk.dycreator.utils.c.a(this.f26159c, this);
    }

    public ViewGroup.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        HashMap<String, c> c10 = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = c10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f26160a[cVar.ordinal()];
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 == 3) {
                            String attributeValue = attributeSet.getAttributeValue(i10);
                            if (!TextUtils.isEmpty(attributeValue)) {
                                if (attributeValue.equals("invisible")) {
                                    setVisibility(4);
                                } else if (attributeValue.equalsIgnoreCase("gone")) {
                                    setVisibility(8);
                                }
                            }
                        }
                    } else {
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
                    }
                } else {
                    String attributeValue3 = attributeSet.getAttributeValue(i10);
                    if (!attributeValue3.startsWith("f") && !attributeValue3.startsWith("m")) {
                        if (attributeValue3.startsWith("wrap")) {
                            layoutParams.width = -2;
                        } else {
                            layoutParams.width = b.a().a(attributeValue3);
                        }
                    } else {
                        layoutParams.width = -1;
                    }
                }
            }
        }
        return layoutParams;
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f26159c;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26159c.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26159c;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26159c.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26159c;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26159c.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26159c;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26159c.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26159c;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26159c.get("mbridgeStrategy");
        }
        return "";
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f26157a;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26157a.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26158b);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f26157a;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26157a.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26158b);
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f26157a = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f26158b = campaignEx.getCampaignUnitId();
        }
    }
}
