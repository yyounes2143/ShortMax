package com.applovin.impl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.applovin.sdk.AppLovinMediationProvider;
/* loaded from: classes2.dex */
public class i0 extends View {

    /* renamed from: w  reason: collision with root package name */
    private static final int f8082w = Color.rgb(66, 145, 241);

    /* renamed from: x  reason: collision with root package name */
    private static final int f8083x = Color.rgb(66, 145, 241);

    /* renamed from: y  reason: collision with root package name */
    private static final int f8084y = Color.rgb(66, 145, 241);

    /* renamed from: a  reason: collision with root package name */
    private Paint f8085a;

    /* renamed from: b  reason: collision with root package name */
    private Paint f8086b;

    /* renamed from: c  reason: collision with root package name */
    protected Paint f8087c;

    /* renamed from: d  reason: collision with root package name */
    protected Paint f8088d;

    /* renamed from: e  reason: collision with root package name */
    private RectF f8089e;

    /* renamed from: f  reason: collision with root package name */
    private float f8090f;

    /* renamed from: g  reason: collision with root package name */
    private int f8091g;

    /* renamed from: h  reason: collision with root package name */
    private int f8092h;

    /* renamed from: i  reason: collision with root package name */
    private int f8093i;

    /* renamed from: j  reason: collision with root package name */
    private int f8094j;

    /* renamed from: k  reason: collision with root package name */
    private int f8095k;

    /* renamed from: l  reason: collision with root package name */
    private float f8096l;

    /* renamed from: m  reason: collision with root package name */
    private int f8097m;

    /* renamed from: n  reason: collision with root package name */
    private String f8098n;

    /* renamed from: o  reason: collision with root package name */
    private String f8099o;

    /* renamed from: p  reason: collision with root package name */
    private float f8100p;

    /* renamed from: q  reason: collision with root package name */
    private String f8101q;

    /* renamed from: r  reason: collision with root package name */
    private float f8102r;

    /* renamed from: s  reason: collision with root package name */
    private final float f8103s;

    /* renamed from: t  reason: collision with root package name */
    private final float f8104t;

    /* renamed from: u  reason: collision with root package name */
    private final float f8105u;

    /* renamed from: v  reason: collision with root package name */
    private final int f8106v;

    /* loaded from: classes2.dex */
    private static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static float c(Resources resources, float f10) {
            return (f10 * resources.getDisplayMetrics().density) + 0.5f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static float d(Resources resources, float f10) {
            return f10 * resources.getDisplayMetrics().scaledDensity;
        }
    }

    public i0(Context context) {
        this(context, null);
    }

    private float getProgressAngle() {
        return (getProgress() / this.f8094j) * 360.0f;
    }

    protected void a() {
        this.f8095k = f8082w;
        this.f8091g = f8083x;
        this.f8090f = this.f8104t;
        setMax(100);
        setProgress(0);
        this.f8096l = this.f8103s;
        this.f8097m = 0;
        this.f8100p = this.f8105u;
        this.f8092h = f8084y;
    }

    protected void b() {
        TextPaint textPaint = new TextPaint();
        this.f8087c = textPaint;
        textPaint.setColor(this.f8091g);
        this.f8087c.setTextSize(this.f8090f);
        this.f8087c.setAntiAlias(true);
        TextPaint textPaint2 = new TextPaint();
        this.f8088d = textPaint2;
        textPaint2.setColor(this.f8092h);
        this.f8088d.setTextSize(this.f8100p);
        this.f8088d.setAntiAlias(true);
        Paint paint = new Paint();
        this.f8085a = paint;
        paint.setColor(this.f8095k);
        this.f8085a.setStyle(Paint.Style.STROKE);
        this.f8085a.setAntiAlias(true);
        this.f8085a.setStrokeWidth(this.f8096l);
        Paint paint2 = new Paint();
        this.f8086b = paint2;
        paint2.setColor(this.f8097m);
        this.f8086b.setAntiAlias(true);
    }

    public int getFinishedStrokeColor() {
        return this.f8095k;
    }

    public float getFinishedStrokeWidth() {
        return this.f8096l;
    }

    public int getInnerBackgroundColor() {
        return this.f8097m;
    }

    public String getInnerBottomText() {
        return this.f8101q;
    }

    public int getInnerBottomTextColor() {
        return this.f8092h;
    }

    public float getInnerBottomTextSize() {
        return this.f8100p;
    }

    public int getMax() {
        return this.f8094j;
    }

    public String getPrefixText() {
        return this.f8098n;
    }

    public int getProgress() {
        return this.f8093i;
    }

    public String getSuffixText() {
        return this.f8099o;
    }

    public int getTextColor() {
        return this.f8091g;
    }

    public float getTextSize() {
        return this.f8090f;
    }

    @Override // android.view.View
    public void invalidate() {
        b();
        super.invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f10 = this.f8096l;
        this.f8089e.set(f10, f10, getWidth() - f10, getHeight() - f10);
        float f11 = this.f8096l;
        canvas.drawCircle(getWidth() / 2.0f, getHeight() / 2.0f, ((getWidth() - f11) + f11) / 2.0f, this.f8086b);
        canvas.drawArc(this.f8089e, 270.0f, -getProgressAngle(), false, this.f8085a);
        String str = this.f8098n + this.f8093i + this.f8099o;
        if (!TextUtils.isEmpty(str)) {
            canvas.drawText(str, (getWidth() - this.f8087c.measureText(str)) / 2.0f, (getWidth() - (this.f8087c.descent() + this.f8087c.ascent())) / 2.0f, this.f8087c);
        }
        if (!TextUtils.isEmpty(getInnerBottomText())) {
            this.f8088d.setTextSize(this.f8100p);
            canvas.drawText(getInnerBottomText(), (getWidth() - this.f8088d.measureText(getInnerBottomText())) / 2.0f, (getHeight() - this.f8102r) - ((this.f8087c.descent() + this.f8087c.ascent()) / 2.0f), this.f8088d);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        setMeasuredDimension(a(i10), a(i11));
        this.f8102r = getHeight() - ((getHeight() * 3) / 4);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f8091g = bundle.getInt("text_color");
            this.f8090f = bundle.getFloat("text_size");
            this.f8100p = bundle.getFloat("inner_bottom_text_size");
            this.f8101q = bundle.getString("inner_bottom_text");
            this.f8092h = bundle.getInt("inner_bottom_text_color");
            this.f8095k = bundle.getInt("finished_stroke_color");
            this.f8096l = bundle.getFloat("finished_stroke_width");
            this.f8097m = bundle.getInt("inner_background_color");
            b();
            setMax(bundle.getInt(AppLovinMediationProvider.MAX));
            setProgress(bundle.getInt("progress"));
            this.f8098n = bundle.getString("prefix");
            this.f8099o = bundle.getString("suffix");
            super.onRestoreInstanceState(bundle.getParcelable("saved_instance"));
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("saved_instance", super.onSaveInstanceState());
        bundle.putInt("text_color", getTextColor());
        bundle.putFloat("text_size", getTextSize());
        bundle.putFloat("inner_bottom_text_size", getInnerBottomTextSize());
        bundle.putFloat("inner_bottom_text_color", getInnerBottomTextColor());
        bundle.putString("inner_bottom_text", getInnerBottomText());
        bundle.putInt("inner_bottom_text_color", getInnerBottomTextColor());
        bundle.putInt("finished_stroke_color", getFinishedStrokeColor());
        bundle.putInt(AppLovinMediationProvider.MAX, getMax());
        bundle.putInt("progress", getProgress());
        bundle.putString("suffix", getSuffixText());
        bundle.putString("prefix", getPrefixText());
        bundle.putFloat("finished_stroke_width", getFinishedStrokeWidth());
        bundle.putInt("inner_background_color", getInnerBackgroundColor());
        return bundle;
    }

    public void setFinishedStrokeColor(int i10) {
        this.f8095k = i10;
        invalidate();
    }

    public void setFinishedStrokeWidth(float f10) {
        this.f8096l = f10;
        invalidate();
    }

    public void setInnerBackgroundColor(int i10) {
        this.f8097m = i10;
        invalidate();
    }

    public void setInnerBottomText(String str) {
        this.f8101q = str;
        invalidate();
    }

    public void setInnerBottomTextColor(int i10) {
        this.f8092h = i10;
        invalidate();
    }

    public void setInnerBottomTextSize(float f10) {
        this.f8100p = f10;
        invalidate();
    }

    public void setMax(int i10) {
        if (i10 > 0) {
            this.f8094j = i10;
            invalidate();
        }
    }

    public void setPrefixText(String str) {
        this.f8098n = str;
        invalidate();
    }

    public void setProgress(int i10) {
        this.f8093i = i10;
        if (i10 > getMax()) {
            this.f8093i %= getMax();
        }
        invalidate();
    }

    public void setSuffixText(String str) {
        this.f8099o = str;
        invalidate();
    }

    public void setTextColor(int i10) {
        this.f8091g = i10;
        invalidate();
    }

    public void setTextSize(float f10) {
        this.f8090f = f10;
        invalidate();
    }

    public i0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public i0(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f8089e = new RectF();
        this.f8093i = 0;
        this.f8098n = "";
        this.f8099o = "";
        this.f8101q = "";
        this.f8104t = a.d(getResources(), 14.0f);
        this.f8106v = (int) a.c(getResources(), 100.0f);
        this.f8103s = a.c(getResources(), 4.0f);
        this.f8105u = a.d(getResources(), 18.0f);
        a();
        b();
    }

    private int a(int i10) {
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == 1073741824) {
            return size;
        }
        int i11 = this.f8106v;
        return mode == Integer.MIN_VALUE ? Math.min(i11, size) : i11;
    }
}
