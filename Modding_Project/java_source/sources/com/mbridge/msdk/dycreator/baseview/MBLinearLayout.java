package com.mbridge.msdk.dycreator.baseview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.dycreator.utils.a;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class MBLinearLayout extends LinearLayout implements InterBase {

    /* renamed from: a  reason: collision with root package name */
    private float f26165a;

    /* renamed from: b  reason: collision with root package name */
    private float f26166b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f26167c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Boolean> f26168d;

    /* renamed from: e  reason: collision with root package name */
    private String f26169e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.MBLinearLayout$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26170a;

        static {
            int[] iArr = new int[c.values().length];
            f26170a = iArr;
            try {
                iArr[c.layout_width.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26170a[c.layout_height.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26170a[c.layout_centerHorizontal.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26170a[c.layout_centerVertical.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26170a[c.layout_weight.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f26170a[c.gravity.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f26170a[c.layout_margin.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f26170a[c.layout_marginLeft.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f26170a[c.layout_marginRight.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f26170a[c.layout_marginTop.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f26170a[c.layout_marginBottom.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f26170a[c.layout_gravity.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public MBLinearLayout(Context context) {
        super(context);
        this.f26169e = "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f26167c;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26167c.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26167c;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26167c.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26167c;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26167c.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26167c;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26167c.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26167c;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26167c.get("mbridgeStrategy");
        }
        return "";
    }

    public float getxInScreen() {
        return this.f26165a;
    }

    public float getyInScreen() {
        return this.f26166b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f26168d;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26168d.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26169e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f26168d;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26168d.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26169e);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.f26165a = motionEvent.getRawX();
        this.f26166b = motionEvent.getRawY();
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f26168d = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f26169e = campaignEx.getCampaignUnitId();
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LinearLayout.LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        HashMap b10 = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = (c) b10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f26170a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue = attributeSet.getAttributeValue(i10);
                        if (!attributeValue.startsWith("f") && !attributeValue.startsWith("m")) {
                            if (attributeValue.startsWith("wrap")) {
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
                            if (attributeValue2.startsWith("wrap")) {
                                generateDefaultLayoutParams.height = -2;
                                continue;
                            } else {
                                generateDefaultLayoutParams.height = b.a().a(attributeValue2);
                                break;
                            }
                        } else {
                            generateDefaultLayoutParams.height = -1;
                            break;
                        }
                        break;
                    case 3:
                        generateDefaultLayoutParams.gravity = 1;
                        continue;
                    case 4:
                        generateDefaultLayoutParams.gravity = 16;
                        continue;
                    case 5:
                        generateDefaultLayoutParams.weight = attributeSet.getAttributeFloatValue(i10, 0.0f);
                        continue;
                    case 6:
                        setGravity(b.a().b(attributeSet.getAttributeValue(i10)));
                        continue;
                    case 7:
                        int a10 = b.a().a(attributeSet.getAttributeValue(i10));
                        generateDefaultLayoutParams.bottomMargin = a10;
                        generateDefaultLayoutParams.leftMargin = a10;
                        generateDefaultLayoutParams.rightMargin = a10;
                        generateDefaultLayoutParams.topMargin = a10;
                        continue;
                    case 8:
                        generateDefaultLayoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 9:
                        generateDefaultLayoutParams.rightMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 10:
                        generateDefaultLayoutParams.topMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 11:
                        generateDefaultLayoutParams.bottomMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 12:
                        generateDefaultLayoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i10));
                        continue;
                }
            }
        }
        return generateDefaultLayoutParams;
    }

    public MBLinearLayout(Context context, AttributeSet attributeSet) {
        super(context);
        this.f26169e = "";
        this.f26167c = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
        a.a(this, attributeSet);
        setLayoutParams(generateLayoutParams(attributeSet));
        com.mbridge.msdk.dycreator.utils.c.a(this.f26167c, this);
    }

    public MBLinearLayout(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26169e = "";
    }
}
