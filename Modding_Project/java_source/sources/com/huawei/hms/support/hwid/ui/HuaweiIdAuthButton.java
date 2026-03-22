package com.huawei.hms.support.hwid.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import ta.a;
import ta.b;
import ta.c;
import ta.d;
/* loaded from: classes5.dex */
public class HuaweiIdAuthButton extends RelativeLayout {
    public static final int COLOR_POLICY_BLACK = 3;
    public static final int COLOR_POLICY_GRAY = 4;
    public static final int COLOR_POLICY_RED = 0;
    public static final int COLOR_POLICY_WHITE = 1;
    public static final int COLOR_POLICY_WHITE_WITH_BORDER = 2;
    public static final int CORNER_RADIUS_LARGE = -1;
    public static final int CORNER_RADIUS_MEDIUM = -2;
    public static final int CORNER_RADIUS_SMALL = -3;
    public static final int THEME_FULL_TITLE = 1;
    public static final int THEME_NO_TITLE = 0;

    /* renamed from: a  reason: collision with root package name */
    private static final PorterDuffColorFilter f22316a;

    /* renamed from: b  reason: collision with root package name */
    private static final PorterDuffColorFilter f22317b;

    /* renamed from: c  reason: collision with root package name */
    private static final PorterDuffColorFilter f22318c;

    /* renamed from: d  reason: collision with root package name */
    private int f22319d;

    /* renamed from: e  reason: collision with root package name */
    private int f22320e;

    /* renamed from: f  reason: collision with root package name */
    private int f22321f;

    /* renamed from: g  reason: collision with root package name */
    private GradientDrawable f22322g;

    /* renamed from: h  reason: collision with root package name */
    private Button f22323h;

    /* renamed from: i  reason: collision with root package name */
    private ImageView f22324i;

    /* renamed from: j  reason: collision with root package name */
    private LinearLayout f22325j;

    static {
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_ATOP;
        f22316a = new PorterDuffColorFilter(218103808, mode);
        f22317b = new PorterDuffColorFilter(436207616, mode);
        f22318c = new PorterDuffColorFilter(872415231, mode);
    }

    public HuaweiIdAuthButton(Context context) {
        super(context);
        a((AttributeSet) null);
    }

    private void a(AttributeSet attributeSet) {
        GradientDrawable gradientDrawable = (GradientDrawable) getResources().getDrawable(b.f67253a);
        this.f22322g = gradientDrawable;
        setBackground(gradientDrawable);
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.f22325j = linearLayout;
        int i10 = 0;
        linearLayout.setOrientation(0);
        this.f22325j.setGravity(17);
        b();
        a();
        addView(this.f22325j);
        int a10 = a(8.0f);
        int i11 = 1;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, d.f67259a);
            i11 = obtainStyledAttributes.getInt(d.f67260b, 1);
            i10 = obtainStyledAttributes.getInt(d.f67261c, 0);
            a10 = obtainStyledAttributes.getLayoutDimension(d.f67262d, a(8.0f));
            obtainStyledAttributes.recycle();
        }
        setLayoutParams(generateDefaultLayoutParams());
        setUIMode(i11, i10, a10);
    }

    private void b() {
        if (this.f22323h == null) {
            this.f22323h = new Button(getContext());
        }
        this.f22323h.setStateListAnimator(null);
        this.f22323h.setBackground(null);
        int intrinsicWidth = a(b.f67257e).getIntrinsicWidth();
        int a10 = a(8.0f);
        this.f22323h.setCompoundDrawablePadding(a10);
        a(intrinsicWidth, a10);
        this.f22323h.setLayoutParams(new ViewGroup.LayoutParams(-2, a(36.0f)));
        this.f22325j.addView(this.f22323h);
    }

    private void setBackgroundCornerRadius(int i10) {
        this.f22322g.mutate();
        this.f22322g.setCornerRadius(i10);
    }

    private void setBackgroundDrawableColor(int i10) {
        this.f22322g.mutate();
        this.f22322g.setColor(getResources().getColor(i10));
    }

    public int getColorPolicy() {
        return this.f22320e;
    }

    public int getCornerRadius() {
        return this.f22321f;
    }

    public int getTheme() {
        return this.f22319d;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x001e, code lost:
        if (r0 != 4) goto L19;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r4) {
        /*
            r3 = this;
            int r0 = r4.getAction()
            r1 = 1
            if (r0 != 0) goto L39
            android.graphics.drawable.GradientDrawable r0 = r3.f22322g
            if (r0 == 0) goto L46
            boolean r0 = r3.isEnabled()
            if (r0 == 0) goto L46
            int r0 = r3.f22320e
            if (r0 == 0) goto L31
            if (r0 == r1) goto L29
            r2 = 2
            if (r0 == r2) goto L29
            r2 = 3
            if (r0 == r2) goto L21
            r2 = 4
            if (r0 == r2) goto L29
            goto L46
        L21:
            android.graphics.drawable.GradientDrawable r0 = r3.f22322g
            android.graphics.PorterDuffColorFilter r2 = com.huawei.hms.support.hwid.ui.HuaweiIdAuthButton.f22318c
            r0.setColorFilter(r2)
            goto L46
        L29:
            android.graphics.drawable.GradientDrawable r0 = r3.f22322g
            android.graphics.PorterDuffColorFilter r2 = com.huawei.hms.support.hwid.ui.HuaweiIdAuthButton.f22316a
            r0.setColorFilter(r2)
            goto L46
        L31:
            android.graphics.drawable.GradientDrawable r0 = r3.f22322g
            android.graphics.PorterDuffColorFilter r2 = com.huawei.hms.support.hwid.ui.HuaweiIdAuthButton.f22317b
            r0.setColorFilter(r2)
            goto L46
        L39:
            int r0 = r4.getAction()
            if (r1 != r0) goto L46
            android.graphics.drawable.GradientDrawable r0 = r3.f22322g
            if (r0 == 0) goto L46
            r0.clearColorFilter()
        L46:
            boolean r0 = r3.hasOnClickListeners()
            if (r0 == 0) goto L51
            boolean r4 = super.onTouchEvent(r4)
            return r4
        L51:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.support.hwid.ui.HuaweiIdAuthButton.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setColorPolicy(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            a(i10, a.f67248c, a.f67250e, b.f67254b);
                            return;
                        }
                        return;
                    }
                    a(i10, a.f67246a, a.f67251f, b.f67257e);
                    this.f22324i.setImageDrawable(getResources().getDrawable(b.f67256d));
                    return;
                }
                a(i10, a.f67252g, a.f67250e, b.f67254b);
                if (this.f22319d == 1) {
                    b(a(1.0f), getResources().getColor(a.f67247b));
                    return;
                }
                return;
            }
            a(i10, a.f67252g, a.f67250e, b.f67254b);
            this.f22324i.setImageDrawable(getResources().getDrawable(b.f67255c));
            return;
        }
        a(i10, a.f67249d, a.f67251f, b.f67257e);
        this.f22324i.setImageDrawable(getResources().getDrawable(b.f67256d));
    }

    public void setCornerRadius(int i10) {
        if (i10 != -3) {
            if (i10 != -2) {
                if (i10 == -1) {
                    i10 = a(24.0f);
                }
            } else {
                i10 = a(8.0f);
            }
        } else {
            i10 = a(3.0f);
        }
        if (i10 < 0) {
            return;
        }
        this.f22321f = i10;
        setBackgroundCornerRadius(i10);
    }

    @Override // android.view.View
    public void setEnabled(boolean z10) {
        super.setEnabled(z10);
        if (!z10) {
            setAlpha(0.38f);
        } else {
            setAlpha(1.0f);
        }
    }

    public void setTheme(int i10) {
        if (i10 != 0) {
            if (i10 == 1) {
                this.f22319d = i10;
                this.f22324i.setVisibility(8);
                this.f22323h.setVisibility(0);
                setMinimumWidth(a(200.0f));
                setMinimumHeight(a(36.0f));
                this.f22325j.setMinimumWidth(a(200.0f));
                this.f22325j.setMinimumHeight(a(36.0f));
                return;
            }
            return;
        }
        this.f22319d = i10;
        this.f22324i.setVisibility(0);
        this.f22323h.setVisibility(8);
        setMinimumWidth(a(48.0f));
        setMinimumHeight(a(48.0f));
        this.f22325j.setMinimumWidth(a(48.0f));
        this.f22325j.setMinimumHeight(a(48.0f));
    }

    public void setUIMode(int i10, int i11, int i12) {
        setTheme(i10);
        setColorPolicy(i11);
        setCornerRadius(i12);
    }

    public HuaweiIdAuthButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public HuaweiIdAuthButton(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a(attributeSet);
    }

    private void b(int i10, int i11) {
        this.f22322g.mutate();
        this.f22322g.setStroke(i10, i11);
    }

    private void a() {
        if (this.f22324i == null) {
            this.f22324i = new ImageView(getContext());
        }
        this.f22324i.setImageDrawable(getResources().getDrawable(b.f67255c));
        setBackgroundDrawableColor(a.f67252g);
        this.f22325j.addView(this.f22324i);
    }

    private void a(int i10, int i11) {
        this.f22323h.setTextSize(16.0f);
        this.f22323h.setText(getResources().getText(c.f67258a));
        this.f22323h.setSingleLine();
        int i12 = getResources().getDisplayMetrics().widthPixels;
        int a10 = a(16.0f);
        int i13 = a10 + a10;
        int i14 = i12 - i13;
        this.f22323h.setMaxWidth(i14);
        float measureText = this.f22323h.getPaint().measureText(this.f22323h.getText().toString());
        while (((int) measureText) + i10 + i11 + i13 > i14 && this.f22323h.getTextSize() > a(9.0f)) {
            Button button = this.f22323h;
            button.setTextSize(0, button.getTextSize() - 1.0f);
            measureText = this.f22323h.getPaint().measureText(this.f22323h.getText().toString());
        }
        this.f22323h.setEllipsize(TextUtils.TruncateAt.END);
        this.f22323h.setPadding(a10, 0, a10, 0);
    }

    private Drawable a(int i10) {
        Drawable drawable = getResources().getDrawable(i10);
        drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        this.f22323h.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        return drawable;
    }

    private void a(int i10, int i11, int i12, int i13) {
        this.f22320e = i10;
        if (this.f22319d != 1 && i10 != 0 && i10 != 3 && i10 != 1) {
            setBackgroundDrawableColor(a.f67252g);
            this.f22324i.setImageDrawable(getResources().getDrawable(b.f67255c));
        } else {
            setBackgroundDrawableColor(i11);
        }
        b(0, 0);
        this.f22323h.setTextColor(getResources().getColor(i12));
        a(i13);
    }

    private int a(float f10) {
        return (int) ((f10 * getResources().getDisplayMetrics().density) + 0.5f);
    }
}
