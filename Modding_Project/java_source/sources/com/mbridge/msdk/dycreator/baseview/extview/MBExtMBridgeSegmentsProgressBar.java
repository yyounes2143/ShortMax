package com.mbridge.msdk.dycreator.baseview.extview;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.mbridge.msdk.dycreator.baseview.GradientOrientationUtils;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeSegmentsProgressBar;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class MBExtMBridgeSegmentsProgressBar extends MBridgeSegmentsProgressBar implements InterBase {

    /* renamed from: m  reason: collision with root package name */
    private Map<String, String> f26357m;

    /* renamed from: n  reason: collision with root package name */
    private Map<String, Boolean> f26358n;

    /* renamed from: o  reason: collision with root package name */
    private String f26359o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.extview.MBExtMBridgeSegmentsProgressBar$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26360a;

        static {
            int[] iArr = new int[c.values().length];
            f26360a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26360a[c.background.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26360a[c.orientation.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26360a[c.visibility.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26360a[c.padding.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f26360a[c.layout_width.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f26360a[c.layout_height.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f26360a[c.layout_centerHorizontal.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f26360a[c.layout_centerVertical.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f26360a[c.layout_weight.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f26360a[c.gravity.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f26360a[c.layout_margin.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f26360a[c.layout_marginLeft.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f26360a[c.layout_marginRight.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f26360a[c.layout_marginTop.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f26360a[c.layout_marginBottom.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f26360a[c.layout_gravity.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public MBExtMBridgeSegmentsProgressBar(Context context) {
        super(context);
        this.f26359o = "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f26357m;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26357m.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26357m;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26357m.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26357m;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26357m.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26357m;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26357m.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26357m;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26357m.get("mbridgeStrategy");
        }
        return "";
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f26358n;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26358n.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26359o);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f26358n;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26358n.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26359o);
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        String[] strArr;
        HashMap<String, c> c10 = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = c10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f26360a[cVar.ordinal()];
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 != 4) {
                                if (i11 == 5) {
                                    int a10 = b.a().a(attributeSet.getAttributeValue(i10));
                                    setPadding(a10, a10, a10, a10);
                                }
                            } else {
                                String attributeValue = attributeSet.getAttributeValue(i10);
                                if (!TextUtils.isEmpty(attributeValue)) {
                                    if (attributeValue.equals("invisible")) {
                                        setVisibility(4);
                                    } else if (attributeValue.equalsIgnoreCase("gone")) {
                                        setVisibility(8);
                                    }
                                }
                            }
                        } else if ("horizontal".equalsIgnoreCase(attributeSet.getAttributeValue(i10))) {
                            setOrientation(0);
                        } else {
                            setOrientation(1);
                        }
                    } else {
                        String attributeValue2 = attributeSet.getAttributeValue(i10);
                        if (attributeValue2.startsWith("#")) {
                            try {
                                strArr = attributeValue2.split("-");
                            } catch (Exception unused) {
                                strArr = null;
                            }
                            if (strArr != null && strArr.length <= 2) {
                                setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i10)));
                            } else if (strArr != null && strArr.length == 3) {
                                try {
                                    GradientDrawable gradientDrawable = new GradientDrawable(GradientOrientationUtils.getOrientation(strArr[2]), new int[]{Color.parseColor(strArr[0]), Color.parseColor(strArr[1])});
                                    gradientDrawable.setGradientType(0);
                                    setBackground(gradientDrawable);
                                } catch (Exception unused2) {
                                    setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i10)));
                                }
                            } else {
                                setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i10)));
                            }
                        } else {
                            if (attributeValue2.startsWith("@drawable/")) {
                                attributeValue2 = attributeValue2.substring(10);
                            }
                            setBackgroundDrawable(new BitmapDrawable(BitmapFactory.decodeFile(getContext().getFilesDir().toString() + DomExceptionUtils.SEPARATOR + attributeValue2 + ".png")));
                        }
                    }
                } else {
                    String attributeValue3 = attributeSet.getAttributeValue(i10);
                    if (attributeValue3.startsWith("@+id/")) {
                        setId(attributeValue3.substring(5).hashCode());
                    }
                }
            }
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
                switch (AnonymousClass1.f26360a[cVar.ordinal()]) {
                    case 6:
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
                    case 7:
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
                    case 8:
                        generateDefaultLayoutParams.gravity = 1;
                        continue;
                    case 9:
                        generateDefaultLayoutParams.gravity = 16;
                        continue;
                    case 10:
                        generateDefaultLayoutParams.weight = attributeSet.getAttributeFloatValue(i10, 0.0f);
                        continue;
                    case 11:
                        setGravity(b.a().b(attributeSet.getAttributeValue(i10)));
                        continue;
                    case 12:
                        int a10 = b.a().a(attributeSet.getAttributeValue(i10));
                        generateDefaultLayoutParams.bottomMargin = a10;
                        generateDefaultLayoutParams.leftMargin = a10;
                        generateDefaultLayoutParams.rightMargin = a10;
                        generateDefaultLayoutParams.topMargin = a10;
                        continue;
                    case 13:
                        generateDefaultLayoutParams.leftMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 14:
                        generateDefaultLayoutParams.rightMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 15:
                        generateDefaultLayoutParams.topMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 16:
                        generateDefaultLayoutParams.bottomMargin = b.a().a(attributeSet.getAttributeValue(i10));
                        continue;
                    case 17:
                        generateDefaultLayoutParams.gravity = b.a().b(attributeSet.getAttributeValue(i10));
                        continue;
                }
            }
        }
        return generateDefaultLayoutParams;
    }

    public MBExtMBridgeSegmentsProgressBar(Context context, AttributeSet attributeSet) {
        super(context);
        this.f26359o = "";
        try {
            this.f26357m = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f26357m, this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public MBExtMBridgeSegmentsProgressBar(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26359o = "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
    }
}
