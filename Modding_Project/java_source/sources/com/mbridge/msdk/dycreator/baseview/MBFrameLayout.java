package com.mbridge.msdk.dycreator.baseview;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.Nullable;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.baseview.inter.InterEffect;
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
public class MBFrameLayout extends FrameLayout implements InterBase, InterEffect {

    /* renamed from: a  reason: collision with root package name */
    private Animator f26144a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f26145b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Boolean> f26146c;

    /* renamed from: d  reason: collision with root package name */
    private String f26147d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.MBFrameLayout$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26148a;

        static {
            int[] iArr = new int[c.values().length];
            f26148a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26148a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26148a[c.layout_gravity.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26148a[c.layout_marginLeft.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26148a[c.layout_margin.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public MBFrameLayout(Context context, AttributeSet attributeSet) {
        super(context);
        this.f26147d = "";
        try {
            this.f26145b = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            a.a(this, attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f26145b, this);
        } catch (Exception e10) {
            p0.b("MBFrameLayout", e10.getMessage());
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f26145b;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26145b.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26145b;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26145b.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26145b;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26145b.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26145b;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26145b.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26145b;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26145b.get("mbridgeStrategy");
        }
        return "";
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        try {
            Animator animator = this.f26144a;
            if (animator != null) {
                animator.start();
            }
        } catch (Exception e10) {
            p0.b("MBFrameLayout", e10.getMessage());
        }
        Map<String, Boolean> map = this.f26146c;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26146c.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26147d);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            Animator animator = this.f26144a;
            if (animator != null) {
                animator.cancel();
            }
        } catch (Exception e10) {
            p0.b("MBFrameLayout", e10.getMessage());
        }
        Map<String, Boolean> map = this.f26146c;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26146c.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26147d);
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterEffect
    public void setAnimator(Animator animator) {
        this.f26144a = animator;
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f26146c = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f26147d = campaignEx.getCampaignUnitId();
        }
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(0, 0);
        HashMap b10 = b.a().b();
        layoutParams.width = -2;
        layoutParams.height = -2;
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = (c) b10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f26148a[cVar.ordinal()];
                if (i11 == 1) {
                    String attributeValue = attributeSet.getAttributeValue(i10);
                    if (!attributeValue.startsWith("f") && !attributeValue.startsWith("m")) {
                        if (attributeValue.startsWith(SRStrategy.MEDIAINFO_KEY_WIDTH)) {
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
                        if (attributeValue2.startsWith(SRStrategy.MEDIAINFO_KEY_WIDTH)) {
                            layoutParams.width = -2;
                        } else {
                            layoutParams.height = b.a().a(attributeValue2);
                        }
                    } else {
                        layoutParams.width = -1;
                    }
                } else if (i11 == 3) {
                    layoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i10));
                } else if (i11 == 4) {
                    layoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i10));
                } else if (i11 == 5) {
                    int a10 = b.a().a(attributeSet.getAttributeValue(i10));
                    layoutParams.setMargins(a10, a10, a10, a10);
                }
            }
        }
        return layoutParams;
    }
}
