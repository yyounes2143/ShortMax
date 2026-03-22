package com.mbridge.msdk.dycreator.baseview.extview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mbridge.msdk.dycreator.baseview.GradientOrientationUtils;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeImageView;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class MBExtMBridgeImageView extends MBridgeImageView implements InterBase {

    /* renamed from: s  reason: collision with root package name */
    private Map<String, String> f26349s;

    /* renamed from: t  reason: collision with root package name */
    private Map<String, Boolean> f26350t;

    /* renamed from: u  reason: collision with root package name */
    private String f26351u;

    /* renamed from: v  reason: collision with root package name */
    private int f26352v;

    /* renamed from: w  reason: collision with root package name */
    private int f26353w;

    /* renamed from: x  reason: collision with root package name */
    private int f26354x;

    /* renamed from: y  reason: collision with root package name */
    private int f26355y;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.extview.MBExtMBridgeImageView$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26356a;

        static {
            int[] iArr = new int[c.values().length];
            f26356a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26356a[c.src.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26356a[c.background.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26356a[c.contentDescription.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26356a[c.tag.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f26356a[c.visibility.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f26356a[c.scaleType.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f26356a[c.padding.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f26356a[c.paddingTop.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f26356a[c.paddingBottom.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f26356a[c.paddingLeft.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f26356a[c.paddingRight.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f26356a[c.layout_width.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f26356a[c.layout_height.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f26356a[c.gravity.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f26356a[c.layout_gravity.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public MBExtMBridgeImageView(Context context) {
        super(context);
        this.f26351u = "";
    }

    public ViewGroup.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        HashMap<String, c> c10 = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = c10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f26356a[cVar.ordinal()];
                if (i11 != 6) {
                    if (i11 != 13) {
                        if (i11 == 14) {
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
                } else {
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

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getActionDes() {
        Map<String, String> map = this.f26349s;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26349s.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26349s;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26349s.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26349s;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26349s.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26349s;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26349s.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26349s;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26349s.get("mbridgeStrategy");
        }
        return "";
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f26350t;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26350t.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26351u);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f26350t;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26350t.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26351u);
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        String[] strArr;
        HashMap<String, c> c10 = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = c10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f26356a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue = attributeSet.getAttributeValue(i10);
                        if (!attributeValue.startsWith("@+id/")) {
                            break;
                        } else {
                            setId(attributeValue.substring(5).hashCode());
                            continue;
                        }
                    case 2:
                        b.a().a(attributeSet.getAttributeValue(i10), this);
                        continue;
                    case 3:
                        String attributeValue2 = attributeSet.getAttributeValue(i10);
                        if (attributeValue2.startsWith("#")) {
                            try {
                                strArr = attributeValue2.split("-");
                            } catch (Exception unused) {
                                strArr = null;
                            }
                            if (strArr != null && strArr.length <= 2) {
                                setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i10)));
                                continue;
                            } else if (strArr != null && strArr.length == 3) {
                                try {
                                    GradientDrawable gradientDrawable = new GradientDrawable(GradientOrientationUtils.getOrientation(strArr[2]), new int[]{Color.parseColor(strArr[0]), Color.parseColor(strArr[1])});
                                    gradientDrawable.setGradientType(0);
                                    setBackground(gradientDrawable);
                                    break;
                                } catch (Exception unused2) {
                                    setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i10)));
                                    break;
                                }
                            } else {
                                setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i10)));
                                break;
                            }
                        } else {
                            if (attributeValue2.startsWith("@drawable/")) {
                                attributeValue2 = attributeValue2.substring(10);
                            }
                            setBackgroundResource(getResources().getIdentifier(attributeValue2, "drawable", getContext().getPackageName()));
                            break;
                        }
                        break;
                    case 4:
                        String attributeValue3 = attributeSet.getAttributeValue(i10);
                        if (!TextUtils.isEmpty(attributeValue3)) {
                            CharSequence charSequence = (String) com.mbridge.msdk.dycreator.utils.b.f26584a.get(attributeValue3.substring(8));
                            if (TextUtils.isEmpty(charSequence)) {
                                break;
                            } else {
                                setContentDescription(charSequence);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 5:
                        String attributeValue4 = attributeSet.getAttributeValue(i10);
                        if (TextUtils.isEmpty(attributeValue4)) {
                            break;
                        } else {
                            String str = com.mbridge.msdk.dycreator.utils.b.f26584a.get(attributeValue4.substring(8));
                            if (TextUtils.isEmpty(str)) {
                                break;
                            } else {
                                setTag(str);
                                continue;
                            }
                        }
                    case 6:
                        String attributeValue5 = attributeSet.getAttributeValue(i10);
                        if (TextUtils.isEmpty(attributeValue5)) {
                            continue;
                        } else if (attributeValue5.equals("invisible")) {
                            setVisibility(4);
                            break;
                        } else if (attributeValue5.equalsIgnoreCase("gone")) {
                            setVisibility(8);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        String attributeValue6 = attributeSet.getAttributeValue(i10);
                        if (TextUtils.isEmpty(attributeValue6)) {
                            continue;
                        } else if (attributeValue6.equals("fitXY")) {
                            setScaleType(ImageView.ScaleType.FIT_XY);
                            break;
                        } else if (attributeValue6.equals("centerInside")) {
                            setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                            break;
                        } else if (attributeValue6.equals("centerCrop")) {
                            setScaleType(ImageView.ScaleType.CENTER_CROP);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        int a10 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26355y = a10;
                        this.f26354x = a10;
                        this.f26353w = a10;
                        this.f26352v = a10;
                        setPadding(a10, a10, a10, a10);
                        continue;
                    case 9:
                        int a11 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26353w = a11;
                        setPadding(this.f26352v, a11, this.f26354x, this.f26355y);
                        continue;
                    case 10:
                        int a12 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26355y = a12;
                        setPadding(this.f26352v, this.f26353w, this.f26354x, a12);
                        continue;
                    case 11:
                        int a13 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26352v = a13;
                        setPadding(a13, this.f26353w, this.f26354x, this.f26355y);
                        continue;
                    case 12:
                        int a14 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26354x = a14;
                        setPadding(this.f26352v, this.f26353w, a14, this.f26355y);
                        continue;
                }
            }
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f26350t = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f26351u = campaignEx.getCampaignUnitId();
        }
    }

    public MBExtMBridgeImageView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f26351u = "";
        try {
            this.f26349s = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(context, attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f26349s, this);
        } catch (Exception e10) {
            p0.b("MBExtMBridgeImageView", e10.getMessage());
        }
    }

    public MBExtMBridgeImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26351u = "";
    }
}
