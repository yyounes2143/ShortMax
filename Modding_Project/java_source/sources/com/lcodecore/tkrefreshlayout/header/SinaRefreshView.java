package com.lcodecore.tkrefreshlayout.header;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import cc.b;
import cc.c;
import cc.h;
import cc.i;
/* loaded from: classes5.dex */
public class SinaRefreshView extends FrameLayout implements b {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f25655a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f25656b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f25657c;

    /* renamed from: d  reason: collision with root package name */
    private String f25658d;

    /* renamed from: e  reason: collision with root package name */
    private String f25659e;

    /* renamed from: f  reason: collision with root package name */
    private String f25660f;

    public SinaRefreshView(Context context) {
        this(context, null);
    }

    private void e() {
        View inflate = View.inflate(getContext(), i.f3442b, null);
        this.f25655a = (ImageView) inflate.findViewById(h.f3435c);
        this.f25657c = (TextView) inflate.findViewById(h.f3440h);
        this.f25656b = (ImageView) inflate.findViewById(h.f3436d);
        addView(inflate);
    }

    @Override // cc.b
    public void a(float f10, float f11) {
        this.f25657c.setText(this.f25660f);
        this.f25655a.setVisibility(8);
        this.f25656b.setVisibility(0);
        ((AnimationDrawable) this.f25656b.getDrawable()).start();
    }

    @Override // cc.b
    public void b(float f10, float f11, float f12) {
        if (f10 < 1.0f) {
            this.f25657c.setText(this.f25658d);
            this.f25655a.setRotation(((f10 * f12) / f11) * 180.0f);
            if (this.f25655a.getVisibility() == 8) {
                this.f25655a.setVisibility(0);
                this.f25656b.setVisibility(8);
            }
        }
    }

    @Override // cc.b
    public void c(c cVar) {
        cVar.a();
    }

    @Override // cc.b
    public void d(float f10, float f11, float f12) {
        if (f10 < 1.0f) {
            this.f25657c.setText(this.f25658d);
        }
        if (f10 > 1.0f) {
            this.f25657c.setText(this.f25659e);
        }
        this.f25655a.setRotation(((f10 * f12) / f11) * 180.0f);
    }

    @Override // cc.b
    public void reset() {
        this.f25655a.setVisibility(0);
        this.f25656b.setVisibility(8);
        this.f25657c.setText(this.f25658d);
    }

    public void setArrowResource(@DrawableRes int i10) {
        this.f25655a.setImageResource(i10);
    }

    public void setPullDownStr(String str) {
        this.f25658d = str;
    }

    public void setRefreshingStr(String str) {
        this.f25660f = str;
    }

    public void setReleaseRefreshStr(String str) {
        this.f25659e = str;
    }

    public void setTextColor(@ColorInt int i10) {
        this.f25657c.setTextColor(i10);
    }

    public SinaRefreshView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SinaRefreshView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f25658d = "下拉刷新";
        this.f25659e = "释放刷新";
        this.f25660f = "正在刷新";
        e();
    }

    @Override // cc.b
    public View getView() {
        return this;
    }
}
