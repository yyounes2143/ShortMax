package com.scwang.smart.refresh.footer;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.scwang.smart.refresh.classics.ClassicsAbstract;
import com.scwang.smart.refresh.layout.constant.RefreshState;
import qc.d;
import sc.c;
import sc.f;
import tc.b;
/* loaded from: classes6.dex */
public class ClassicsFooter extends ClassicsAbstract<ClassicsFooter> implements c {
    public static String B;
    public static String C;
    public static String D;
    public static String E;
    public static String F;
    public static String G;
    public static String H;
    protected boolean A;

    /* renamed from: t  reason: collision with root package name */
    protected String f36875t;

    /* renamed from: u  reason: collision with root package name */
    protected String f36876u;

    /* renamed from: v  reason: collision with root package name */
    protected String f36877v;

    /* renamed from: w  reason: collision with root package name */
    protected String f36878w;

    /* renamed from: x  reason: collision with root package name */
    protected String f36879x;

    /* renamed from: y  reason: collision with root package name */
    protected String f36880y;

    /* renamed from: z  reason: collision with root package name */
    protected String f36881z;

    /* loaded from: classes6.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f36882a;

        static {
            int[] iArr = new int[RefreshState.values().length];
            f36882a = iArr;
            try {
                iArr[RefreshState.None.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f36882a[RefreshState.PullUpToLoad.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f36882a[RefreshState.Loading.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f36882a[RefreshState.LoadReleased.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f36882a[RefreshState.ReleaseToLoad.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f36882a[RefreshState.Refreshing.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public ClassicsFooter(Context context) {
        this(context, null);
    }

    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.c
    public boolean b(boolean z10) {
        if (this.A != z10) {
            this.A = z10;
            ImageView imageView = this.f36863e;
            if (z10) {
                this.f36862d.setText(this.f36881z);
                imageView.setVisibility(8);
                return true;
            }
            this.f36862d.setText(this.f36875t);
            imageView.setVisibility(0);
            return true;
        }
        return true;
    }

    @Override // com.scwang.smart.refresh.classics.ClassicsAbstract, com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    public int c(@NonNull f fVar, boolean z10) {
        String str;
        super.c(fVar, z10);
        if (!this.A) {
            TextView textView = this.f36862d;
            if (z10) {
                str = this.f36879x;
            } else {
                str = this.f36880y;
            }
            textView.setText(str);
            return this.f36871m;
        }
        return 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.scwang.smart.refresh.layout.simple.SimpleComponent, vc.h
    public void d(@NonNull f fVar, @NonNull RefreshState refreshState, @NonNull RefreshState refreshState2) {
        ImageView imageView = this.f36863e;
        if (!this.A) {
            switch (a.f36882a[refreshState2.ordinal()]) {
                case 1:
                    imageView.setVisibility(0);
                    break;
                case 2:
                    break;
                case 3:
                case 4:
                    imageView.setVisibility(8);
                    this.f36862d.setText(this.f36877v);
                    return;
                case 5:
                    this.f36862d.setText(this.f36876u);
                    imageView.animate().rotation(0.0f);
                    return;
                case 6:
                    this.f36862d.setText(this.f36878w);
                    imageView.setVisibility(8);
                    return;
                default:
                    return;
            }
            this.f36862d.setText(this.f36875t);
            imageView.animate().rotation(180.0f);
        }
    }

    @Override // com.scwang.smart.refresh.classics.ClassicsAbstract, com.scwang.smart.refresh.layout.simple.SimpleComponent, sc.a
    @Deprecated
    public void setPrimaryColors(@ColorInt int... iArr) {
        if (this.f36990b == b.f67285f) {
            super.setPrimaryColors(iArr);
        }
    }

    public ClassicsFooter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.A = false;
        View.inflate(context, qc.b.f65284a, this);
        ImageView imageView = (ImageView) findViewById(qc.a.f65281a);
        this.f36863e = imageView;
        ImageView imageView2 = (ImageView) findViewById(qc.a.f65282b);
        this.f36864f = imageView2;
        this.f36862d = (TextView) findViewById(qc.a.f65283c);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.f65292a);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView2.getLayoutParams();
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(d.f65297f, xc.b.c(20.0f));
        layoutParams2.rightMargin = dimensionPixelSize;
        layoutParams.rightMargin = dimensionPixelSize;
        layoutParams.width = obtainStyledAttributes.getLayoutDimension(d.f65296e, layoutParams.width);
        layoutParams.height = obtainStyledAttributes.getLayoutDimension(d.f65296e, layoutParams.height);
        layoutParams2.width = obtainStyledAttributes.getLayoutDimension(d.f65299h, layoutParams2.width);
        layoutParams2.height = obtainStyledAttributes.getLayoutDimension(d.f65299h, layoutParams2.height);
        layoutParams.width = obtainStyledAttributes.getLayoutDimension(d.f65300i, layoutParams.width);
        layoutParams.height = obtainStyledAttributes.getLayoutDimension(d.f65300i, layoutParams.height);
        layoutParams2.width = obtainStyledAttributes.getLayoutDimension(d.f65300i, layoutParams2.width);
        layoutParams2.height = obtainStyledAttributes.getLayoutDimension(d.f65300i, layoutParams2.height);
        this.f36871m = obtainStyledAttributes.getInt(d.f65301j, this.f36871m);
        this.f36990b = b.f67288i[obtainStyledAttributes.getInt(d.f65294c, this.f36990b.f67289a)];
        if (obtainStyledAttributes.hasValue(d.f65295d)) {
            this.f36863e.setImageDrawable(obtainStyledAttributes.getDrawable(d.f65295d));
        } else if (this.f36863e.getDrawable() == null) {
            pc.a aVar = new pc.a();
            this.f36866h = aVar;
            aVar.a(-10066330);
            this.f36863e.setImageDrawable(this.f36866h);
        }
        if (obtainStyledAttributes.hasValue(d.f65298g)) {
            this.f36864f.setImageDrawable(obtainStyledAttributes.getDrawable(d.f65298g));
        } else if (this.f36864f.getDrawable() == null) {
            oc.b bVar = new oc.b();
            this.f36867i = bVar;
            bVar.a(-10066330);
            this.f36864f.setImageDrawable(this.f36867i);
        }
        if (obtainStyledAttributes.hasValue(d.f65310s)) {
            this.f36862d.setTextSize(0, obtainStyledAttributes.getDimensionPixelSize(d.f65310s, xc.b.c(16.0f)));
        }
        if (obtainStyledAttributes.hasValue(d.f65302k)) {
            super.l(obtainStyledAttributes.getColor(d.f65302k, 0));
        }
        if (obtainStyledAttributes.hasValue(d.f65293b)) {
            super.k(obtainStyledAttributes.getColor(d.f65293b, 0));
        }
        if (obtainStyledAttributes.hasValue(d.f65307p)) {
            this.f36875t = obtainStyledAttributes.getString(d.f65307p);
        } else {
            String str = B;
            if (str != null) {
                this.f36875t = str;
            } else {
                this.f36875t = context.getString(qc.c.f65289e);
            }
        }
        if (obtainStyledAttributes.hasValue(d.f65309r)) {
            this.f36876u = obtainStyledAttributes.getString(d.f65309r);
        } else {
            String str2 = C;
            if (str2 != null) {
                this.f36876u = str2;
            } else {
                this.f36876u = context.getString(qc.c.f65291g);
            }
        }
        if (obtainStyledAttributes.hasValue(d.f65305n)) {
            this.f36877v = obtainStyledAttributes.getString(d.f65305n);
        } else {
            String str3 = D;
            if (str3 != null) {
                this.f36877v = str3;
            } else {
                this.f36877v = context.getString(qc.c.f65287c);
            }
        }
        if (obtainStyledAttributes.hasValue(d.f65308q)) {
            this.f36878w = obtainStyledAttributes.getString(d.f65308q);
        } else {
            String str4 = E;
            if (str4 != null) {
                this.f36878w = str4;
            } else {
                this.f36878w = context.getString(qc.c.f65290f);
            }
        }
        if (obtainStyledAttributes.hasValue(d.f65304m)) {
            this.f36879x = obtainStyledAttributes.getString(d.f65304m);
        } else {
            String str5 = F;
            if (str5 != null) {
                this.f36879x = str5;
            } else {
                this.f36879x = context.getString(qc.c.f65286b);
            }
        }
        if (obtainStyledAttributes.hasValue(d.f65303l)) {
            this.f36880y = obtainStyledAttributes.getString(d.f65303l);
        } else {
            String str6 = G;
            if (str6 != null) {
                this.f36880y = str6;
            } else {
                this.f36880y = context.getString(qc.c.f65285a);
            }
        }
        if (obtainStyledAttributes.hasValue(d.f65306o)) {
            this.f36881z = obtainStyledAttributes.getString(d.f65306o);
        } else {
            String str7 = H;
            if (str7 != null) {
                this.f36881z = str7;
            } else {
                this.f36881z = context.getString(qc.c.f65288d);
            }
        }
        obtainStyledAttributes.recycle();
        imageView2.animate().setInterpolator(null);
        this.f36862d.setText(isInEditMode() ? this.f36877v : this.f36875t);
        if (isInEditMode()) {
            imageView.setVisibility(8);
        } else {
            imageView2.setVisibility(8);
        }
    }
}
