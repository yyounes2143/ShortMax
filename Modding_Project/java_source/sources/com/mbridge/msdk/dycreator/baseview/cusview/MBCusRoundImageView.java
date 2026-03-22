package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.mbridge.msdk.dycreator.baseview.GradientOrientationUtils;
import com.mbridge.msdk.dycreator.engine.b;
import com.mbridge.msdk.dycreator.engine.c;
import com.mbridge.msdk.foundation.tools.p0;
import java.util.HashMap;
/* loaded from: classes5.dex */
public class MBCusRoundImageView extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private int f26236a;

    /* renamed from: b  reason: collision with root package name */
    private int f26237b;

    /* renamed from: c  reason: collision with root package name */
    private int f26238c;

    /* renamed from: d  reason: collision with root package name */
    private int f26239d;

    /* renamed from: e  reason: collision with root package name */
    private Xfermode f26240e;

    /* renamed from: f  reason: collision with root package name */
    private int f26241f;

    /* renamed from: g  reason: collision with root package name */
    private int f26242g;

    /* renamed from: h  reason: collision with root package name */
    private int f26243h;

    /* renamed from: i  reason: collision with root package name */
    private int f26244i;

    /* renamed from: j  reason: collision with root package name */
    private int f26245j;

    /* renamed from: k  reason: collision with root package name */
    private int f26246k;

    /* renamed from: l  reason: collision with root package name */
    private int f26247l;

    /* renamed from: m  reason: collision with root package name */
    private int f26248m;

    /* renamed from: n  reason: collision with root package name */
    private int f26249n;

    /* renamed from: o  reason: collision with root package name */
    private float[] f26250o;

    /* renamed from: p  reason: collision with root package name */
    private float[] f26251p;

    /* renamed from: q  reason: collision with root package name */
    private RectF f26252q;

    /* renamed from: r  reason: collision with root package name */
    private RectF f26253r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f26254s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f26255t;

    /* renamed from: u  reason: collision with root package name */
    private Path f26256u;

    /* renamed from: v  reason: collision with root package name */
    private Paint f26257v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mbridge.msdk.dycreator.baseview.cusview.MBCusRoundImageView$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f26258a;

        static {
            int[] iArr = new int[c.values().length];
            f26258a = iArr;
            try {
                iArr[c.id.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f26258a[c.src.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f26258a[c.background.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f26258a[c.contentDescription.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f26258a[c.tag.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f26258a[c.visibility.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f26258a[c.scaleType.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f26258a[c.padding.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f26258a[c.paddingTop.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f26258a[c.paddingBottom.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f26258a[c.paddingLeft.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f26258a[c.paddingRight.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f26258a[c.layout_width.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f26258a[c.layout_height.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f26258a[c.gravity.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f26258a[c.layout_gravity.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
        }
    }

    public MBCusRoundImageView(Context context) {
        this(context, null);
    }

    private void a(Canvas canvas) {
        a(canvas, this.f26248m, this.f26249n, this.f26253r, this.f26250o);
    }

    private void b() {
        int i10;
        int i11;
        int i12;
        try {
            if (this.f26250o != null && this.f26251p != null) {
                int i13 = 0;
                while (true) {
                    i10 = 2;
                    if (i13 >= 2) {
                        break;
                    }
                    float[] fArr = this.f26250o;
                    float f10 = this.f26244i;
                    fArr[i13] = f10;
                    this.f26251p[i13] = f10 - (this.f26248m / 2.0f);
                    i13++;
                }
                while (true) {
                    i11 = 4;
                    if (i10 >= 4) {
                        break;
                    }
                    float[] fArr2 = this.f26250o;
                    float f11 = this.f26245j;
                    fArr2[i10] = f11;
                    this.f26251p[i10] = f11 - (this.f26248m / 2.0f);
                    i10++;
                }
                while (true) {
                    if (i11 >= 6) {
                        break;
                    }
                    float[] fArr3 = this.f26250o;
                    float f12 = this.f26246k;
                    fArr3[i11] = f12;
                    this.f26251p[i11] = f12 - (this.f26248m / 2.0f);
                    i11++;
                }
                for (i12 = 6; i12 < 8; i12++) {
                    float[] fArr4 = this.f26250o;
                    float f13 = this.f26247l;
                    fArr4[i12] = f13;
                    this.f26251p[i12] = f13 - (this.f26248m / 2.0f);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c() {
        RectF rectF = this.f26253r;
        if (rectF != null) {
            float f10 = this.f26248m / 2.0f;
            rectF.set(f10, f10, this.f26241f - f10, this.f26242g - f10);
        }
    }

    private void d() {
        RectF rectF = this.f26252q;
        if (rectF != null) {
            rectF.set(0.0f, 0.0f, this.f26241f, this.f26242g);
        }
    }

    public ViewGroup.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        HashMap<String, c> c10 = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = c10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                int i11 = AnonymousClass1.f26258a[cVar.ordinal()];
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

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        if (canvas == null) {
            return;
        }
        try {
            canvas.saveLayer(this.f26252q, null, 31);
            int i11 = this.f26241f;
            int i12 = this.f26248m * 2;
            float f10 = i11;
            float f11 = this.f26242g;
            canvas.scale(((i11 - i12) * 1.0f) / f10, ((i10 - i12) * 1.0f) / f11, f10 / 2.0f, f11 / 2.0f);
            super.onDraw(canvas);
            Paint paint = this.f26257v;
            if (paint != null) {
                paint.reset();
                this.f26257v.setAntiAlias(true);
                this.f26257v.setStyle(Paint.Style.FILL);
                this.f26257v.setXfermode(this.f26240e);
            }
            Path path = this.f26256u;
            if (path != null) {
                path.reset();
                this.f26256u.addRoundRect(this.f26252q, this.f26251p, Path.Direction.CCW);
            }
            canvas.drawPath(this.f26256u, this.f26257v);
            Paint paint2 = this.f26257v;
            if (paint2 != null) {
                paint2.setXfermode(null);
            }
            canvas.restore();
            if (this.f26254s) {
                a(canvas);
            }
        } catch (Exception e10) {
            p0.a("MBridgeImageView", e10.getMessage());
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        try {
            this.f26241f = i10;
            this.f26242g = i11;
            if (this.f26255t) {
                b();
            } else {
                a();
            }
            c();
            d();
        } catch (Exception e10) {
            p0.b("MBridgeImageView", e10.getMessage());
        }
    }

    public void setAttributeSet(AttributeSet attributeSet) {
        String[] strArr;
        HashMap<String, c> c10 = b.a().c();
        int attributeCount = attributeSet.getAttributeCount();
        for (int i10 = 0; i10 < attributeCount; i10++) {
            c cVar = c10.get(attributeSet.getAttributeName(i10));
            if (cVar != null) {
                switch (AnonymousClass1.f26258a[cVar.ordinal()]) {
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
                        this.f26239d = a10;
                        this.f26238c = a10;
                        this.f26237b = a10;
                        this.f26236a = a10;
                        setPadding(a10, a10, a10, a10);
                        continue;
                    case 9:
                        int a11 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26237b = a11;
                        setPadding(this.f26236a, a11, this.f26238c, this.f26239d);
                        continue;
                    case 10:
                        int a12 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26239d = a12;
                        setPadding(this.f26236a, this.f26237b, this.f26238c, a12);
                        continue;
                    case 11:
                        int a13 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26236a = a13;
                        setPadding(a13, this.f26237b, this.f26238c, this.f26239d);
                        continue;
                    case 12:
                        int a14 = b.a().a(attributeSet.getAttributeValue(i10));
                        this.f26238c = a14;
                        setPadding(this.f26236a, this.f26237b, a14, this.f26239d);
                        continue;
                }
            }
        }
    }

    public void setBorder(int i10, int i11, int i12) {
        this.f26254s = true;
        this.f26248m = i11;
        this.f26249n = i12;
        this.f26243h = i10;
    }

    public void setCornerRadius(int i10) {
        this.f26243h = i10;
    }

    public void setCustomBorder(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f26254s = true;
        this.f26255t = true;
        this.f26248m = i14;
        this.f26249n = i15;
        this.f26244i = i10;
        this.f26246k = i12;
        this.f26245j = i11;
        this.f26247l = i13;
    }

    public MBCusRoundImageView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, null, 0);
        try {
            setAttributeSet(attributeSet);
            setLayoutParams(generateLayoutParams(context, attributeSet));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(Canvas canvas, int i10, int i11, RectF rectF, float[] fArr) {
        try {
            a(i10, i11);
            Path path = this.f26256u;
            if (path != null) {
                path.addRoundRect(rectF, fArr, Path.Direction.CCW);
            }
            if (canvas != null) {
                canvas.drawPath(this.f26256u, this.f26257v);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public MBCusRoundImageView(Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f26256u = new Path();
        this.f26257v = new Paint();
        this.f26250o = new float[8];
        this.f26251p = new float[8];
        this.f26253r = new RectF();
        this.f26252q = new RectF();
        this.f26240e = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
    }

    private void a(int i10, int i11) {
        Path path = this.f26256u;
        if (path != null) {
            path.reset();
        }
        Paint paint = this.f26257v;
        if (paint != null) {
            paint.setStrokeWidth(i10);
            this.f26257v.setColor(i11);
            this.f26257v.setStyle(Paint.Style.STROKE);
        }
    }

    private void a() {
        if (this.f26250o == null || this.f26251p == null) {
            return;
        }
        int i10 = 0;
        while (true) {
            try {
                float[] fArr = this.f26250o;
                if (i10 >= fArr.length) {
                    return;
                }
                float f10 = this.f26243h;
                fArr[i10] = f10;
                this.f26251p[i10] = f10 - (this.f26248m / 2.0f);
                i10++;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }
}
