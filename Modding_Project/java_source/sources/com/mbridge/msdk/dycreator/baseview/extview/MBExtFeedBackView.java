package com.mbridge.msdk.dycreator.baseview.extview;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.tools.h0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.widget.FeedBackButton;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class MBExtFeedBackView extends FeedBackButton implements InterBase {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f26335a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Boolean> f26336b;

    /* renamed from: c  reason: collision with root package name */
    private String f26337c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.extview.MBExtFeedBackView$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26338a;

        static {
            int[] iArr = new int[c.values().length];
            f26338a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26338a[c.text.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26338a[c.ellipsize.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26338a[c.singleLine.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26338a[c.lines.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f26338a[c.drawableLeft.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f26338a[c.drawablePadding.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f26338a[c.fadingEdge.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f26338a[c.scrollHorizontally.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f26338a[c.textColor.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f26338a[c.textSize.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f26338a[c.visibility.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f26338a[c.background.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f26338a[c.textStyle.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f26338a[c.style.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f26338a[c.contentDescription.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f26338a[c.tag.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f26338a[c.gravity.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f26338a[c.padding.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f26338a[c.paddingTop.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f26338a[c.paddingBottom.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f26338a[c.paddingLeft.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f26338a[c.paddingRight.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f26338a[c.paddingStart.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f26338a[c.paddingEnd.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f26338a[c.layout_width.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f26338a[c.layout_height.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public MBExtFeedBackView(Context context) {
        super(context);
        this.f26337c = "";
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        HashMap b10 = b.a().b();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = (c) b10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f26338a[cVar.ordinal()];
                if (i11 != 26) {
                    if (i11 == 27) {
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
        Map<String, String> map = this.f26335a;
        if (map != null && map.containsKey("mbridgeAction")) {
            return this.f26335a.get("mbridgeAction");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getBindDataDes() {
        Map<String, String> map = this.f26335a;
        if (map != null && map.containsKey("mbridgeData")) {
            return this.f26335a.get("mbridgeData");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getEffectDes() {
        Map<String, String> map = this.f26335a;
        if (map != null && map.containsKey("mbridgeEffect")) {
            return this.f26335a.get("mbridgeEffect");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getReportDes() {
        Map<String, String> map = this.f26335a;
        if (map != null && map.containsKey("mbridgeReport")) {
            return this.f26335a.get("mbridgeReport");
        }
        return "";
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public String getStrategyDes() {
        Map<String, String> map = this.f26335a;
        if (map != null && map.containsKey("mbridgeStrategy")) {
            return this.f26335a.get("mbridgeStrategy");
        }
        return "";
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Map<String, Boolean> map = this.f26336b;
        if (map != null && map.containsKey("mbridgeAttached") && this.f26336b.get("mbridgeAttached").booleanValue()) {
            new l.b("mbridgeAttached").a().b(this.f26337c);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Map<String, Boolean> map = this.f26336b;
        if (map != null && map.containsKey("mbridgeDetached") && this.f26336b.get("mbridgeDetached").booleanValue()) {
            new l.b("mbridgeDetached").a().b(this.f26337c);
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        String str;
        String attributeValue;
        HashMap<String, c> c10 = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < attributeCount; i14++) {
            c cVar = c10.get(attributeSet.getAttributeName(i14));
            if (cVar != null) {
                Log.d("setupview", cVar.toString());
                switch (AnonymousClass1.f26338a[cVar.ordinal()]) {
                    case 1:
                        String attributeValue2 = attributeSet.getAttributeValue(i14);
                        if (!attributeValue2.startsWith("@+id/")) {
                            break;
                        } else {
                            setId(attributeValue2.substring(5).hashCode());
                            continue;
                        }
                    case 2:
                        String attributeValue3 = attributeSet.getAttributeValue(i14);
                        if (TextUtils.isEmpty(attributeValue3)) {
                            continue;
                        } else if (attributeValue3.startsWith("@string/")) {
                            setText(b.a().f(attributeSet.getAttributeValue(i14)));
                            break;
                        } else {
                            setText(attributeValue3);
                            break;
                        }
                    case 3:
                        String attributeValue4 = attributeSet.getAttributeValue(i14);
                        if (!TextUtils.isEmpty(attributeValue4)) {
                            if (attributeValue4.equals("end")) {
                                setEllipsize(TextUtils.TruncateAt.END);
                            }
                            if (attributeValue4.equals("start")) {
                                setEllipsize(TextUtils.TruncateAt.START);
                            }
                            if (attributeValue4.equals("middle")) {
                                setEllipsize(TextUtils.TruncateAt.MIDDLE);
                            }
                            if (attributeValue4.equals("marquee")) {
                                setEllipsize(TextUtils.TruncateAt.MARQUEE);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 4:
                        setSingleLine(attributeSet.getAttributeBooleanValue(i14, false));
                        continue;
                    case 5:
                        setLines(attributeSet.getAttributeIntValue(i14, 1));
                        continue;
                    case 6:
                        String attributeValue5 = attributeSet.getAttributeValue(i14);
                        if (attributeValue5.startsWith("@drawable/")) {
                            str = attributeValue5.substring(10);
                        } else {
                            str = "";
                        }
                        if (!TextUtils.isEmpty(str)) {
                            Drawable drawable = getResources().getDrawable(h0.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, "drawable"));
                            drawable.setBounds(0, 0, u0.a(getContext(), 14.0f), u0.a(getContext(), 14.0f));
                            setCompoundDrawables(drawable, null, null, null);
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        setCompoundDrawablePadding(b.a().a(attributeSet.getAttributeValue(i14)));
                        continue;
                    case 8:
                        setHorizontalFadingEdgeEnabled(attributeSet.getAttributeBooleanValue(i14, false));
                        continue;
                    case 9:
                        setHorizontallyScrolling(attributeSet.getAttributeBooleanValue(i14, false));
                        continue;
                    case 10:
                        setTextColor(b.a().d(attributeSet.getAttributeValue(i14)));
                        continue;
                    case 11:
                        if (!TextUtils.isEmpty(attributeSet.getAttributeValue(i14))) {
                            setTextSize(b.a().a(attributeValue));
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        String attributeValue6 = attributeSet.getAttributeValue(i14);
                        if (TextUtils.isEmpty(attributeValue6)) {
                            continue;
                        } else if (attributeValue6.equals("invisible")) {
                            setVisibility(4);
                            break;
                        } else if (attributeValue6.equalsIgnoreCase("gone")) {
                            setVisibility(8);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        String attributeValue7 = attributeSet.getAttributeValue(i14);
                        if (attributeValue7.startsWith("#")) {
                            setBackgroundColor(b.a().d(attributeSet.getAttributeValue(i14)));
                            continue;
                        } else {
                            if (attributeValue7.startsWith("@drawable/")) {
                                attributeValue7 = attributeValue7.substring(10);
                            }
                            setBackgroundResource(getResources().getIdentifier(attributeValue7, "drawable", getContext().getPackageName()));
                            break;
                        }
                    case 14:
                        if (TtmlNode.BOLD.equalsIgnoreCase(attributeSet.getAttributeValue(i14))) {
                            setTypeface(Typeface.defaultFromStyle(1));
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        String attributeValue8 = attributeSet.getAttributeValue(i14);
                        String substring = attributeValue8.substring(attributeValue8.indexOf(DomExceptionUtils.SEPARATOR) + 1);
                        setTextAppearance(getContext(), b.a().c("R.style." + substring));
                        continue;
                    case 16:
                        String attributeValue9 = attributeSet.getAttributeValue(i14);
                        if (!TextUtils.isEmpty(attributeValue9)) {
                            CharSequence charSequence = (String) com.mbridge.msdk.dycreator.utils.b.f26584a.get(attributeValue9.substring(8));
                            if (TextUtils.isEmpty(charSequence)) {
                                break;
                            } else {
                                setContentDescription(charSequence);
                                break;
                            }
                        } else {
                            continue;
                        }
                    case 17:
                        String attributeValue10 = attributeSet.getAttributeValue(i14);
                        if (TextUtils.isEmpty(attributeValue10)) {
                            break;
                        } else {
                            String str2 = com.mbridge.msdk.dycreator.utils.b.f26584a.get(attributeValue10.substring(8));
                            if (TextUtils.isEmpty(str2)) {
                                break;
                            } else {
                                setTag(str2);
                                continue;
                            }
                        }
                    case 18:
                        setGravity(b.a().b(attributeSet.getAttributeValue(i14)));
                        continue;
                    case 19:
                        int a10 = b.a().a(attributeSet.getAttributeValue(i14));
                        setPadding(a10, a10, a10, a10);
                        continue;
                    case 20:
                        i13 = b.a().a(attributeSet.getAttributeValue(i14));
                        setPadding(i10, i13, i11, i12);
                        continue;
                    case 21:
                        i12 = b.a().a(attributeSet.getAttributeValue(i14));
                        setPadding(i10, i13, i11, i12);
                        continue;
                    case 22:
                        i10 = b.a().a(attributeSet.getAttributeValue(i14));
                        setPadding(i10, i13, i11, i12);
                        continue;
                    case 23:
                        i11 = b.a().a(attributeSet.getAttributeValue(i14));
                        setPadding(i10, i13, i11, i12);
                        continue;
                    case 24:
                        setPadding(b.a().a(attributeSet.getAttributeValue(i14)), i13, i11, i12);
                        continue;
                    case 25:
                        setPadding(i10, i13, b.a().a(attributeSet.getAttributeValue(i14)), i12);
                        continue;
                }
            }
        }
    }

    @Override // com.mbridge.msdk.dycreator.baseview.inter.InterBase
    public void setDynamicReport(String str, CampaignEx campaignEx) {
        this.f26336b = com.mbridge.msdk.dycreator.utils.c.a(str);
        if (campaignEx != null) {
            this.f26337c = campaignEx.getCampaignUnitId();
        }
    }

    public MBExtFeedBackView(Context context, AttributeSet attributeSet) {
        super(context);
        this.f26337c = "";
        try {
            this.f26335a = com.mbridge.msdk.dycreator.utils.c.a(context, attributeSet);
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(attributeSet));
            com.mbridge.msdk.dycreator.utils.c.a(this.f26335a, this);
        } catch (Exception e10) {
            p0.b("MBExtFeedBackView", e10.getMessage());
        }
    }

    public MBExtFeedBackView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26337c = "";
    }
}
