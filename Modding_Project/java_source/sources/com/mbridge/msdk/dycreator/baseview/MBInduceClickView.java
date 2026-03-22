package com.mbridge.msdk.dycreator.baseview;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
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
public class MBInduceClickView extends FrameLayout implements InterBase, InterEffect {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f26161a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Boolean> f26162b;

    /* renamed from: c  reason: collision with root package name */
    private String f26163c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.MBInduceClickView$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26164a;

        static {
            int[] iArr = new int[c.values().length];
            f26164a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26164a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26164a[c.layout_gravity.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26164a[c.layout_marginLeft.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26164a[c.layout_margin.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public MBInduceClickView(@NonNull Context context) {
        super(context);
        this.f26163c = "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f26161a;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26161a.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26161a;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26161a.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26161a;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26161a.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26161a;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26161a.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26161a;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26161a.get("mbridgeStrategy");
        }
        return "";
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f26162b;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26162b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26163c);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f26162b;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26162b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26163c);
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f26162b = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f26163c = campaignEx.getCampaignUnitId();
        }
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
                int i11 = AnonymousClass1.f26164a[cVar.ordinal()];
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

    public MBInduceClickView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context);
        this.f26163c = "";
        if (context != null && attributeSet != null) {
            try {
                this.f26161a = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            } catch (Exception e10) {
                p0.b("MBInduceClickView", e10.getMessage());
                return;
            }
        }
        a.a(this, attributeSet);
        setLayoutParams(generateLayoutParams(attributeSet));
        com.mbridge.msdk.dycreator.utils.c.a(this.f26161a, this);
    }

    public MBInduceClickView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26163c = "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterEffect
    public void setAnimator(Animator animator) {
    }
}
