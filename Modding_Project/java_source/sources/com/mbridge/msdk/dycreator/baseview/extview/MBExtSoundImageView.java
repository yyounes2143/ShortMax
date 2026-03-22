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
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.HashMap;
/* loaded from: classes5.dex */
public class MBExtSoundImageView extends SoundImageView {

    /* renamed from: b  reason: collision with root package name */
    private int f26365b;

    /* renamed from: c  reason: collision with root package name */
    private int f26366c;

    /* renamed from: d  reason: collision with root package name */
    private int f26367d;

    /* renamed from: e  reason: collision with root package name */
    private int f26368e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.extview.MBExtSoundImageView$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26369a;

        static {
            int[] iArr = new int[c.values().length];
            f26369a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26369a[c.src.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26369a[c.background.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26369a[c.contentDescription.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26369a[c.tag.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f26369a[c.visibility.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f26369a[c.scaleType.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f26369a[c.padding.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f26369a[c.paddingTop.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f26369a[c.paddingBottom.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f26369a[c.paddingLeft.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f26369a[c.paddingRight.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f26369a[c.layout_width.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f26369a[c.layout_height.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f26369a[c.gravity.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f26369a[c.layout_gravity.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public MBExtSoundImageView(Context context) {
        super(context);
    }

    public ViewGroup.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        HashMap<String, c> c10 = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = c10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f26369a[cVar.ordinal()];
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

    public void setAttributeSet(AttributeSet attributeSet) {
        String[] strArr;
        HashMap<String, c> c10 = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = c10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f26369a[cVar.ordinal()]) {
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
                        this.f26368e = a10;
                        this.f26367d = a10;
                        this.f26366c = a10;
                        this.f26365b = a10;
                        setPadding(a10, a10, a10, a10);
                        continue;
                    case 9:
                        int a11 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26366c = a11;
                        setPadding(this.f26365b, a11, this.f26367d, this.f26368e);
                        continue;
                    case 10:
                        int a12 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26368e = a12;
                        setPadding(this.f26365b, this.f26366c, this.f26367d, a12);
                        continue;
                    case 11:
                        int a13 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26365b = a13;
                        setPadding(a13, this.f26366c, this.f26367d, this.f26368e);
                        continue;
                    case 12:
                        int a14 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26367d = a14;
                        setPadding(this.f26365b, this.f26366c, a14, this.f26368e);
                        continue;
                }
            }
        }
    }

    public MBExtSoundImageView(Context context, AttributeSet attributeSet) {
        super(context);
        try {
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(context, attributeSet));
        } catch (Exception e10) {
            p0.b("MBExtSoundImageView", e10.getMessage());
        }
    }

    public MBExtSoundImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
    }
}
