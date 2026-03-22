package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.dycreator.utils.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import java.util.Map;
/* loaded from: classes5.dex */
public class MBButton extends Button implements InterBase {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f26136a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Boolean> f26137b;

    /* renamed from: c  reason: collision with root package name */
    private String f26138c;

    public MBButton(Context context) {
        super(context);
        this.f26138c = "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f26136a;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26136a.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26136a;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26136a.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26136a;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26136a.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26136a;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26136a.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26136a;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26136a.get("mbridgeStrategy");
        }
        return "";
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f26137b;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26137b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26138c);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f26137b;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26137b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26138c);
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f26137b = c.a(str);
        if (campaignEx != null) {
            this.f26138c = campaignEx.getCampaignUnitId();
        }
    }

    public MBButton(Context context, AttributeSet attributeSet) {
        super(context);
        this.f26138c = "";
        this.f26136a = c.a(context, attributeSet);
        a.a(this, attributeSet);
        c.a(this.f26136a, this);
    }

    public MBButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26138c = "";
    }
}
