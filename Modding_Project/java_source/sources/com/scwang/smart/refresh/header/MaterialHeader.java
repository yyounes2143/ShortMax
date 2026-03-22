package com.scwang.smart.refresh.header;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.scwang.smart.refresh.header.material.CircleImageView;
import com.scwang.smart.refresh.layout.constant.RefreshState;
import com.scwang.smart.refresh.layout.simple.SimpleComponent;
import sc.d;
import sc.e;
import sc.f;
import tc.b;
/* loaded from: classes6.dex */
public class MaterialHeader extends SimpleComponent implements d {

    /* renamed from: d  reason: collision with root package name */
    protected boolean f36883d;

    /* renamed from: e  reason: collision with root package name */
    protected int f36884e;

    /* renamed from: f  reason: collision with root package name */
    protected ImageView f36885f;

    /* renamed from: g  reason: collision with root package name */
    protected e f36886g;

    /* renamed from: h  reason: collision with root package name */
    protected rc.a f36887h;

    /* renamed from: i  reason: collision with root package name */
    protected int f36888i;

    /* renamed from: j  reason: collision with root package name */
    protected int f36889j;

    /* renamed from: k  reason: collision with root package name */
    protected int f36890k;

    /* renamed from: l  reason: collision with root package name */
    protected Path f36891l;

    /* renamed from: m  reason: collision with root package name */
    protected Paint f36892m;

    /* renamed from: n  reason: collision with root package name */
    protected RefreshState f36893n;

    /* renamed from: o  reason: collision with root package name */
    protected boolean f36894o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f36895p;

    /* loaded from: classes6.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f36896a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f36896a = iArr;
            try {
                iArr[RefreshState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36896a[RefreshState.ReleaseToRefresh.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36896a[RefreshState.Refreshing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36896a[RefreshState.PullDownToRefresh.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public MaterialHeader(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public void a(@NonNull f fVar, int i10, int i11) {
        this.f36887h.start();
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public int c(@NonNull f fVar, boolean z10) {
        ImageView imageView = this.f36885f;
        this.f36887h.stop();
        imageView.animate().scaleX(0.0f).scaleY(0.0f);
        this.f36883d = true;
        return 0;
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, vc.h
    public void d(@NonNull f fVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        ImageView imageView = this.f36885f;
        this.f36893n = refreshState2;
        if (a.f36896a[refreshState2.ordinal()] == 4) {
            this.f36883d = false;
            imageView.setVisibility(0);
            imageView.setTranslationY(0.0f);
            imageView.setScaleX(1.0f);
            imageView.setScaleY(1.0f);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (this.f36894o) {
            this.f36891l.reset();
            this.f36891l.lineTo(0.0f, this.f36889j);
            this.f36891l.quadTo(getMeasuredWidth() / 2.0f, this.f36889j + (this.f36888i * 1.9f), getMeasuredWidth(), this.f36889j);
            this.f36891l.lineTo(getMeasuredWidth(), 0.0f);
            canvas.drawPath(this.f36891l, this.f36892m);
        }
        super.dispatchDraw(canvas);
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public void h(@NonNull e eVar, int i10, int i11) {
        if (!this.f36894o) {
            eVar.b(this, false);
        }
        if (isInEditMode()) {
            int i12 = i10 / 2;
            this.f36889j = i12;
            this.f36888i = i12;
        }
        this.f36886g = eVar;
        this.f36890k = i10;
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public void i(boolean z10, float f10, int i10, int i11, int i12) {
        RefreshState refreshState = this.f36893n;
        RefreshState refreshState2 = RefreshState.Refreshing;
        if (refreshState == refreshState2) {
            return;
        }
        if (this.f36894o) {
            this.f36889j = Math.min(i10, i11);
            this.f36888i = Math.max(0, i10 - i11);
            postInvalidate();
        }
        if (z10 || (!this.f36887h.isRunning() && !this.f36883d)) {
            if (this.f36893n != refreshState2) {
                float f11 = i11;
                float max = (((float) Math.max(Math.min(1.0f, Math.abs((i10 * 1.0f) / f11)) - 0.4d, 0.0d)) * 5.0f) / 3.0f;
                double max2 = Math.max(0.0f, Math.min(Math.abs(i10) - i11, f11 * 2.0f) / f11) / 4.0f;
                this.f36887h.k(true);
                this.f36887h.i(0.0f, Math.min(0.8f, max * 0.8f));
                this.f36887h.d(Math.min(1.0f, max));
                this.f36887h.f((((max * 0.4f) - 0.25f) + (((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f * 2.0f)) * 0.5f);
            }
            ImageView imageView = this.f36885f;
            float f12 = i10;
            imageView.setTranslationY(Math.min(f12, (f12 / 2.0f) + (this.f36884e / 2.0f)));
            imageView.setAlpha(Math.min(1.0f, (f12 * 4.0f) / this.f36884e));
        }
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        if (getChildCount() == 0) {
            return;
        }
        ImageView imageView = this.f36885f;
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = imageView.getMeasuredWidth();
        int measuredHeight = imageView.getMeasuredHeight();
        if (isInEditMode() && (i14 = this.f36889j) > 0) {
            int i15 = i14 - (measuredHeight / 2);
            int i16 = measuredWidth / 2;
            int i17 = measuredWidth2 / 2;
            imageView.layout(i16 - i17, i15, i16 + i17, measuredHeight + i15);
            this.f36887h.k(true);
            this.f36887h.i(0.0f, 0.8f);
            this.f36887h.d(1.0f);
            imageView.setAlpha(1.0f);
            imageView.setVisibility(0);
            return;
        }
        int i18 = measuredWidth / 2;
        int i19 = measuredWidth2 / 2;
        imageView.layout(i18 - i19, -measuredHeight, i18 + i19, 0);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        super.setMeasuredDimension(View.MeasureSpec.getSize(i10), View.MeasureSpec.getSize(i11));
        this.f36885f.measure(View.MeasureSpec.makeMeasureSpec(this.f36884e, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f36884e, 1073741824));
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            this.f36892m.setColor(iArr[0]);
        }
    }

    public MaterialHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f36894o = false;
        this.f36895p = true;
        this.f36990b = b.f67287h;
        setMinimumHeight(xc.b.c(100.0f));
        rc.a aVar = new rc.a(this);
        this.f36887h = aVar;
        aVar.e(-16737844, -48060, -10053376, -5609780, -30720);
        CircleImageView circleImageView = new CircleImageView(context, -328966);
        this.f36885f = circleImageView;
        circleImageView.setImageDrawable(this.f36887h);
        this.f36885f.setAlpha(0.0f);
        addView(this.f36885f);
        this.f36884e = (int) (getResources().getDisplayMetrics().density * 40.0f);
        this.f36891l = new Path();
        Paint paint = new Paint();
        this.f36892m = paint;
        paint.setAntiAlias(true);
        this.f36892m.setStyle(Paint.Style.FILL);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, rc.b.T);
        this.f36894o = obtainStyledAttributes.getBoolean(rc.b.f65756c0, this.f36894o);
        this.f36895p = obtainStyledAttributes.getBoolean(rc.b.f65752a0, this.f36895p);
        this.f36892m.setColor(obtainStyledAttributes.getColor(rc.b.Z, -15614977));
        if (obtainStyledAttributes.hasValue(rc.b.f65754b0)) {
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(rc.b.f65754b0, 0);
            this.f36892m.setShadowLayer(dimensionPixelOffset, 0.0f, 0.0f, obtainStyledAttributes.getColor(rc.b.W, ViewCompat.MEASURED_STATE_MASK));
            setLayerType(1, null);
        }
        this.f36894o = obtainStyledAttributes.getBoolean(rc.b.Y, this.f36894o);
        this.f36895p = obtainStyledAttributes.getBoolean(rc.b.V, this.f36895p);
        if (obtainStyledAttributes.hasValue(rc.b.U)) {
            this.f36892m.setColor(obtainStyledAttributes.getColor(rc.b.U, -15614977));
        }
        if (obtainStyledAttributes.hasValue(rc.b.X)) {
            int dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(rc.b.X, 0);
            this.f36892m.setShadowLayer(dimensionPixelOffset2, 0.0f, 0.0f, obtainStyledAttributes.getColor(rc.b.W, ViewCompat.MEASURED_STATE_MASK));
            setLayerType(1, null);
        }
        obtainStyledAttributes.recycle();
    }
}
