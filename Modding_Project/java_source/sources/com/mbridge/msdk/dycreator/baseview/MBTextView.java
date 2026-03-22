package com.mbridge.msdk.dycreator.baseview;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.TextView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.baseview.inter.InterEffect;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class MBTextView extends TextView implements InterBase, InterEffect {

    /* renamed from: a  reason: collision with root package name */
    private boolean f26230a;
    public AttributeSet attrs;

    /* renamed from: b  reason: collision with root package name */
    private Animator f26231b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f26232c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Boolean> f26233d;

    /* renamed from: e  reason: collision with root package name */
    private String f26234e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.MBTextView$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26235a;

        static {
            int[] iArr = new int[c.values().length];
            f26235a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26235a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public MBTextView(Context context) {
        super(context);
        this.f26230a = false;
        this.f26234e = "";
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        HashMap b10 = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = (c) b10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f26235a[cVar.ordinal()];
                if (i11 != 1) {
                    if (i11 == 2) {
                        String attributeValue = attributeSet.getAttributeValue(i10);
                        if (!attributeValue.startsWith("f") && !attributeValue.startsWith("m")) {
                            if (attributeValue.startsWith("wrap")) {
                                layoutParams.height = -2;
                            } else {
                                layoutParams.height = b.a().a(attributeValue);
                            }
                        } else {
                            layoutParams.height = -1;
                        }
                    }
                } else {
                    String attributeValue2 = attributeSet.getAttributeValue(i10);
                    if (!attributeValue2.startsWith("f") && !attributeValue2.startsWith("m")) {
                        if (attributeValue2.startsWith("wrap")) {
                            layoutParams.width = -2;
                        } else {
                            layoutParams.width = b.a().a(attributeValue2);
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
        Map<String, String> map = this.f26232c;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26232c.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26232c;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26232c.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26232c;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26232c.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26232c;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26232c.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26232c;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26232c.get("mbridgeStrategy");
        }
        return "";
    }

    @Override // android.view.View
    public boolean isFocused() {
        if (this.f26230a) {
            return true;
        }
        return super.isFocused();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Animator animator = this.f26231b;
        if (animator != null) {
            try {
                animator.start();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Map<String, Boolean> map = this.f26233d;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26233d.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26234e);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Animator animator = this.f26231b;
        if (animator != null) {
            try {
                animator.cancel();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        Map<String, Boolean> map = this.f26233d;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26233d.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26234e);
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterEffect
    public void setAnimator(Animator animator) {
        this.f26231b = animator;
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f26233d = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f26234e = campaignEx.getCampaignUnitId();
        }
    }

    public MBTextView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f26230a = false;
        this.f26234e = "";
        this.attrs = attributeSet;
        try {
            this.f26232c = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f26232c, this);
        } catch (Exception e10) {
            p0.b("TextView", e10.getMessage());
        }
    }

    public MBTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26230a = false;
        this.f26234e = "";
    }
}
