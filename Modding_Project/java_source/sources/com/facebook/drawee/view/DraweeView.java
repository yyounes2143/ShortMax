package com.facebook.drawee.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.facebook.drawee.view.a;
import f3.b;
import k2.f;
@Deprecated
/* loaded from: classes3.dex */
public class DraweeView<DH extends b> extends ImageView {

    /* renamed from: g  reason: collision with root package name */
    private static boolean f15506g = false;

    /* renamed from: a  reason: collision with root package name */
    private final a.C0263a f15507a;

    /* renamed from: b  reason: collision with root package name */
    private float f15508b;

    /* renamed from: c  reason: collision with root package name */
    private g3.a<DH> f15509c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f15510d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f15511e;

    /* renamed from: f  reason: collision with root package name */
    private Object f15512f;

    public DraweeView(Context context) {
        super(context);
        this.f15507a = new a.C0263a();
        this.f15508b = 0.0f;
        this.f15510d = false;
        this.f15511e = false;
        this.f15512f = null;
        d(context);
    }

    private void d(Context context) {
        try {
            if (f4.b.d()) {
                f4.b.a("DraweeView#init");
            }
            if (this.f15510d) {
                if (f4.b.d()) {
                    f4.b.b();
                    return;
                }
                return;
            }
            boolean z10 = true;
            this.f15510d = true;
            this.f15509c = g3.a.d(null, context);
            ColorStateList imageTintList = getImageTintList();
            if (imageTintList == null) {
                if (f4.b.d()) {
                    f4.b.b();
                    return;
                }
                return;
            }
            setColorFilter(imageTintList.getDefaultColor());
            if (!f15506g || context.getApplicationInfo().targetSdkVersion < 24) {
                z10 = false;
            }
            this.f15511e = z10;
            if (f4.b.d()) {
                f4.b.b();
            }
        } catch (Throwable th2) {
            if (f4.b.d()) {
                f4.b.b();
            }
            throw th2;
        }
    }

    private void i() {
        Drawable drawable;
        boolean z10;
        if (this.f15511e && (drawable = getDrawable()) != null) {
            if (getVisibility() == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            drawable.setVisible(z10, false);
        }
    }

    public static void setGlobalLegacyVisibilityHandlingEnabled(boolean z10) {
        f15506g = z10;
    }

    protected void b() {
        this.f15509c.j();
    }

    protected void c() {
        this.f15509c.k();
    }

    public float getAspectRatio() {
        return this.f15508b;
    }

    public f3.a getController() {
        return this.f15509c.f();
    }

    public Object getExtraData() {
        return this.f15512f;
    }

    public DH getHierarchy() {
        return this.f15509c.g();
    }

    public Drawable getTopLevelDrawable() {
        return this.f15509c.h();
    }

    protected void j() {
        b();
    }

    protected void l() {
        c();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        i();
        j();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i();
        l();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        i();
        j();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        a.C0263a c0263a = this.f15507a;
        c0263a.f15515a = i10;
        c0263a.f15516b = i11;
        a.b(c0263a, this.f15508b, getLayoutParams(), getPaddingLeft() + getPaddingRight(), getPaddingTop() + getPaddingBottom());
        a.C0263a c0263a2 = this.f15507a;
        super.onMeasure(c0263a2.f15515a, c0263a2.f15516b);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        i();
        l();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f15509c.l(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        i();
    }

    public void setAspectRatio(float f10) {
        if (f10 == this.f15508b) {
            return;
        }
        this.f15508b = f10;
        requestLayout();
    }

    public void setController(f3.a aVar) {
        this.f15509c.o(aVar);
        super.setImageDrawable(this.f15509c.h());
    }

    public void setExtraData(Object obj) {
        this.f15512f = obj;
    }

    public void setHierarchy(DH dh2) {
        this.f15509c.p(dh2);
        super.setImageDrawable(this.f15509c.h());
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageBitmap(Bitmap bitmap) {
        d(getContext());
        this.f15509c.n();
        super.setImageBitmap(bitmap);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageDrawable(Drawable drawable) {
        d(getContext());
        this.f15509c.n();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageResource(int i10) {
        d(getContext());
        this.f15509c.n();
        super.setImageResource(i10);
    }

    @Override // android.widget.ImageView
    @Deprecated
    public void setImageURI(Uri uri) {
        d(getContext());
        this.f15509c.n();
        super.setImageURI(uri);
    }

    public void setLegacyVisibilityHandlingEnabled(boolean z10) {
        this.f15511e = z10;
    }

    @Override // android.view.View
    public String toString() {
        String str;
        f.a b10 = f.b(this);
        g3.a<DH> aVar = this.f15509c;
        if (aVar != null) {
            str = aVar.toString();
        } else {
            str = "<no holder set>";
        }
        return b10.c("holder", str).toString();
    }

    public DraweeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f15507a = new a.C0263a();
        this.f15508b = 0.0f;
        this.f15510d = false;
        this.f15511e = false;
        this.f15512f = null;
        d(context);
    }

    public DraweeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f15507a = new a.C0263a();
        this.f15508b = 0.0f;
        this.f15510d = false;
        this.f15511e = false;
        this.f15512f = null;
        d(context);
    }
}
