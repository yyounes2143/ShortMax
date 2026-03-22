package com.scwang.smart.refresh.classics;

import android.content.Context;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smart.refresh.classics.ClassicsAbstract;
import com.scwang.smart.refresh.layout.simple.SimpleComponent;
import sc.a;
import sc.e;
import sc.f;
import tc.b;
/* loaded from: classes6.dex */
public abstract class ClassicsAbstract<T extends ClassicsAbstract<?>> extends SimpleComponent implements a {

    /* renamed from: q  reason: collision with root package name */
    public static final int f36859q = qc.a.f65283c;

    /* renamed from: r  reason: collision with root package name */
    public static final int f36860r = qc.a.f65281a;

    /* renamed from: s  reason: collision with root package name */
    public static final int f36861s = qc.a.f65282b;

    /* renamed from: d  reason: collision with root package name */
    protected TextView f36862d;

    /* renamed from: e  reason: collision with root package name */
    protected ImageView f36863e;

    /* renamed from: f  reason: collision with root package name */
    protected ImageView f36864f;

    /* renamed from: g  reason: collision with root package name */
    protected e f36865g;

    /* renamed from: h  reason: collision with root package name */
    protected oc.a f36866h;

    /* renamed from: i  reason: collision with root package name */
    protected oc.a f36867i;

    /* renamed from: j  reason: collision with root package name */
    protected boolean f36868j;

    /* renamed from: k  reason: collision with root package name */
    protected boolean f36869k;

    /* renamed from: l  reason: collision with root package name */
    protected int f36870l;

    /* renamed from: m  reason: collision with root package name */
    protected int f36871m;

    /* renamed from: n  reason: collision with root package name */
    protected int f36872n;

    /* renamed from: o  reason: collision with root package name */
    protected int f36873o;

    /* renamed from: p  reason: collision with root package name */
    protected int f36874p;

    public ClassicsAbstract(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f36871m = 500;
        this.f36872n = 20;
        this.f36873o = 20;
        this.f36874p = 0;
        this.f36990b = b.f67283d;
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public void a(@NonNull f fVar, int i10, int i11) {
        ImageView imageView = this.f36864f;
        if (imageView.getVisibility() != 0) {
            imageView.setVisibility(0);
            Drawable drawable = this.f36864f.getDrawable();
            if (drawable instanceof Animatable) {
                ((Animatable) drawable).start();
            } else {
                imageView.animate().rotation(36000.0f).setDuration(100000L);
            }
        }
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public int c(@NonNull f fVar, boolean z10) {
        ImageView imageView = this.f36864f;
        Drawable drawable = imageView.getDrawable();
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        } else {
            imageView.animate().rotation(0.0f).setDuration(0L);
        }
        imageView.setVisibility(8);
        return this.f36871m;
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public void g(@NonNull f fVar, int i10, int i11) {
        a(fVar, i10, i11);
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public void h(@NonNull e eVar, int i10, int i11) {
        this.f36865g = eVar;
        eVar.c(this, this.f36870l);
    }

    public T k(@ColorInt int i10) {
        this.f36868j = true;
        this.f36862d.setTextColor(i10);
        oc.a aVar = this.f36866h;
        if (aVar != null) {
            aVar.a(i10);
            this.f36863e.invalidateDrawable(this.f36866h);
        }
        oc.a aVar2 = this.f36867i;
        if (aVar2 != null) {
            aVar2.a(i10);
            this.f36864f.invalidateDrawable(this.f36867i);
        }
        return j();
    }

    public T l(@ColorInt int i10) {
        this.f36869k = true;
        this.f36870l = i10;
        e eVar = this.f36865g;
        if (eVar != null) {
            eVar.c(this, i10);
        }
        return j();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ImageView imageView = this.f36863e;
        ImageView imageView2 = this.f36864f;
        imageView.animate().cancel();
        imageView2.animate().cancel();
        Drawable drawable = this.f36864f.getDrawable();
        if (drawable instanceof Animatable) {
            Animatable animatable = (Animatable) drawable;
            if (animatable.isRunning()) {
                animatable.stop();
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.f36874p == 0) {
            this.f36872n = getPaddingTop();
            int paddingBottom = getPaddingBottom();
            this.f36873o = paddingBottom;
            if (this.f36872n == 0 || paddingBottom == 0) {
                int paddingLeft = getPaddingLeft();
                int paddingRight = getPaddingRight();
                int i12 = this.f36872n;
                if (i12 == 0) {
                    i12 = xc.b.c(20.0f);
                }
                this.f36872n = i12;
                int i13 = this.f36873o;
                if (i13 == 0) {
                    i13 = xc.b.c(20.0f);
                }
                this.f36873o = i13;
                setPadding(paddingLeft, this.f36872n, paddingRight, i13);
            }
            setClipToPadding(false);
        }
        if (View.MeasureSpec.getMode(i11) == 1073741824) {
            int size = View.MeasureSpec.getSize(i11);
            int i14 = this.f36874p;
            if (size < i14) {
                int i15 = (size - i14) / 2;
                setPadding(getPaddingLeft(), i15, getPaddingRight(), i15);
            } else {
                setPadding(getPaddingLeft(), 0, getPaddingRight(), 0);
            }
        } else {
            setPadding(getPaddingLeft(), this.f36872n, getPaddingRight(), this.f36873o);
        }
        super.onMeasure(i10, i11);
        if (this.f36874p == 0) {
            for (int i16 = 0; i16 < getChildCount(); i16++) {
                int measuredHeight = getChildAt(i16).getMeasuredHeight();
                if (this.f36874p < measuredHeight) {
                    this.f36874p = measuredHeight;
                }
            }
        }
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (iArr.length > 0) {
            if (!(getBackground() instanceof BitmapDrawable) && !this.f36869k) {
                l(iArr[0]);
                this.f36869k = false;
            }
            if (!this.f36868j) {
                if (iArr.length > 1) {
                    k(iArr[1]);
                }
                this.f36868j = false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected T j() {
        return this;
    }
}
