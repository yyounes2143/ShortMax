package io.bidmachine.rendering.internal;

import android.content.res.ColorStateList;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.ColorInt;
import androidx.compose.ui.graphics.a1;
import androidx.core.view.ViewCompat;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tp.n;
@Metadata
/* loaded from: classes8.dex */
public final class j extends Drawable {
    @NotNull

    /* renamed from: o */
    public static final a f58345o = new a(null);
    @NotNull

    /* renamed from: p */
    private static final c f58346p = c.TOP_BOTTOM;
    @NotNull

    /* renamed from: a */
    private b f58347a;
    @NotNull

    /* renamed from: b */
    private final Path f58348b;
    @NotNull

    /* renamed from: c */
    private final RectF f58349c;
    @NotNull

    /* renamed from: d */
    private final Paint f58350d;
    @Nullable

    /* renamed from: e */
    private Rect f58351e;
    @Nullable

    /* renamed from: f */
    private Paint f58352f;
    @Nullable

    /* renamed from: g */
    private ColorFilter f58353g;
    @Nullable

    /* renamed from: h */
    private BlendModeColorFilter f58354h;

    /* renamed from: i */
    private int f58355i;
    @Nullable

    /* renamed from: j */
    private Paint f58356j;

    /* renamed from: k */
    private boolean f58357k;
    @Nullable

    /* renamed from: l */
    private Path f58358l;

    /* renamed from: m */
    private boolean f58359m;

    /* renamed from: n */
    private float f58360n;

    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public enum c {
        TOP_BOTTOM,
        TR_BL,
        RIGHT_LEFT,
        BR_TL,
        BOTTOM_TOP,
        BL_TR,
        LEFT_RIGHT,
        TL_BR
    }

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class d {

        /* renamed from: a */
        public static final /* synthetic */ int[] f58397a;

        static {
            int[] iArr = new int[c.values().length];
            try {
                iArr[c.TOP_BOTTOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[c.TR_BL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[c.RIGHT_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[c.BR_TL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[c.BOTTOM_TOP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[c.BL_TR.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[c.LEFT_RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f58397a = iArr;
        }
    }

    public /* synthetic */ j(b bVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(bVar);
    }

    private final int a(int i10) {
        int i11 = this.f58355i;
        return (i10 * (i11 + (i11 >> 7))) >> 8;
    }

    private final BlendModeColorFilter b(BlendModeColorFilter blendModeColorFilter, ColorStateList colorStateList, BlendMode blendMode) {
        int color;
        BlendMode mode;
        if (colorStateList != null && blendMode != null) {
            if (Build.VERSION.SDK_INT >= 29) {
                int colorForState = colorStateList.getColorForState(getState(), 0);
                if (blendModeColorFilter != null) {
                    color = blendModeColorFilter.getColor();
                    if (color == colorForState) {
                        mode = blendModeColorFilter.getMode();
                        if (mode == blendMode) {
                            return blendModeColorFilter;
                        }
                    }
                }
                return a1.a(colorForState, blendMode);
            }
            return blendModeColorFilter;
        }
        return null;
    }

    private final Path c(b bVar) {
        float width;
        float width2;
        Path path = this.f58358l;
        if (path != null && !this.f58359m) {
            return path;
        }
        this.f58359m = false;
        float level = (getLevel() * 360.0f) / 10000.0f;
        RectF rectF = new RectF(this.f58349c);
        float width3 = rectF.width() / 2.0f;
        float height = rectF.height() / 2.0f;
        if (bVar.b() != -1) {
            width = bVar.b();
        } else {
            width = rectF.width() / bVar.c();
        }
        if (bVar.B() != -1) {
            width2 = bVar.B();
        } else {
            width2 = rectF.width() / bVar.C();
        }
        RectF rectF2 = new RectF(rectF);
        rectF2.inset(width3 - width2, height - width2);
        RectF rectF3 = new RectF(rectF2);
        float f10 = -width;
        rectF3.inset(f10, f10);
        Path path2 = this.f58358l;
        if (path2 != null) {
            path2.reset();
        } else {
            path2 = new Path();
            this.f58358l = path2;
        }
        if (level < 360.0f && level > -360.0f) {
            path2.setFillType(Path.FillType.EVEN_ODD);
            float f11 = width3 + width2;
            path2.moveTo(f11, height);
            path2.lineTo(f11 + width, height);
            path2.arcTo(rectF3, 0.0f, level, false);
            path2.arcTo(rectF2, level, -level, false);
            path2.close();
        } else {
            path2.addOval(rectF3, Path.Direction.CW);
            path2.addOval(rectF2, Path.Direction.CCW);
        }
        path2.addOval(rectF3, Path.Direction.CW);
        path2.addOval(rectF2, Path.Direction.CCW);
        return path2;
    }

    private final void d() {
        b bVar = this.f58347a;
        if (this.f58359m) {
            l();
            this.f58348b.reset();
            float[] J = bVar.J();
            if (J != null) {
                this.f58348b.addRoundRect(this.f58349c, J, Path.Direction.CW);
            }
            this.f58359m = false;
        }
    }

    public static /* synthetic */ void h(j jVar, float f10, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            f10 = 0.5f;
        }
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        jVar.f(f10, i10);
    }

    public static /* synthetic */ void i(j jVar, int i10, int i11, float f10, float f11, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            f10 = 0.0f;
        }
        if ((i12 & 8) != 0) {
            f11 = 0.0f;
        }
        jVar.g(i10, i11, f10, f11);
    }

    private final void k(int i10, int i11, float f10, float f11) {
        DashPathEffect dashPathEffect;
        Paint paint = this.f58352f;
        if (paint == null) {
            paint = new Paint(1);
            this.f58352f = paint;
            paint.setStyle(Paint.Style.STROKE);
        }
        paint.setStrokeWidth(i10);
        paint.setColor(i11);
        if (f10 > 0.0f) {
            dashPathEffect = new DashPathEffect(new float[]{f10, f11}, 0.0f);
        } else {
            dashPathEffect = null;
        }
        paint.setPathEffect(dashPathEffect);
        this.f58357k = true;
        invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0130  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean l() {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.rendering.internal.j.l():boolean");
    }

    private final boolean n() {
        Paint paint = this.f58352f;
        if (this.f58347a.a() >= 0 && paint != null && !n.a(paint.getColor())) {
            return false;
        }
        if (this.f58347a.w() == null && !n.a(this.f58350d.getColor())) {
            return false;
        }
        return true;
    }

    private final void o() {
        b bVar = this.f58347a;
        ColorStateList L = bVar.L();
        if (L != null) {
            this.f58350d.setColor(L.getColorForState(getState(), 0));
        } else if (bVar.w() == null) {
            this.f58350d.setColor(0);
        } else {
            this.f58350d.setColor(ViewCompat.MEASURED_STATE_MASK);
        }
        this.f58351e = bVar.G();
        int a10 = bVar.a();
        if (a10 >= 0) {
            Paint paint = this.f58352f;
            if (paint == null) {
                paint = new Paint(1);
                this.f58352f = paint;
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(a10);
            }
            ColorStateList M = bVar.M();
            if (M != null) {
                paint.setColor(M.getColorForState(getState(), 0));
            }
            float O = bVar.O();
            if (O != 0.0f) {
                paint.setPathEffect(new DashPathEffect(new float[]{O, bVar.N()}, 0.0f));
            }
        }
        this.f58354h = b(this.f58354h, bVar.d(), bVar.o());
        this.f58357k = true;
        bVar.f();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        int i10;
        float f10;
        boolean z10;
        boolean z11;
        boolean z12;
        Paint paint;
        Paint paint2;
        Paint paint3;
        Paint paint4;
        Paint paint5;
        Paint paint6;
        Paint paint7;
        Paint paint8;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (!l()) {
            return;
        }
        int alpha = this.f58350d.getAlpha();
        Paint paint9 = this.f58352f;
        if (paint9 != null) {
            i10 = paint9.getAlpha();
        } else {
            i10 = 0;
        }
        int a10 = a(alpha);
        int a11 = a(i10);
        Paint paint10 = this.f58352f;
        if (paint10 != null) {
            f10 = paint10.getStrokeWidth();
        } else {
            f10 = 0.0f;
        }
        if (a11 > 0 && f10 > 0.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (a10 > 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        b bVar = this.f58347a;
        ColorFilter colorFilter = this.f58353g;
        if (colorFilter == null) {
            colorFilter = this.f58354h;
        }
        ColorFilter colorFilter2 = colorFilter;
        if (z10 && z11 && bVar.K() != 2 && a11 < 255 && (this.f58355i < 255 || colorFilter2 != null)) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z12) {
            Paint paint11 = this.f58356j;
            if (paint11 == null) {
                paint11 = new Paint();
                this.f58356j = paint11;
            }
            Paint paint12 = paint11;
            paint12.setDither(bVar.v());
            paint12.setAlpha(this.f58355i);
            paint12.setColorFilter(colorFilter2);
            RectF rectF = this.f58349c;
            canvas.saveLayer(rectF.left - f10, rectF.top - f10, rectF.right + f10, rectF.bottom + f10, paint12);
            this.f58350d.setColorFilter(null);
            Paint paint13 = this.f58352f;
            if (paint13 != null) {
                paint13.setColorFilter(null);
            }
        } else {
            this.f58350d.setAlpha(a10);
            this.f58350d.setDither(bVar.v());
            this.f58350d.setColorFilter(colorFilter2);
            if (colorFilter2 != null && bVar.L() == null) {
                this.f58350d.setColor(this.f58355i << 24);
            }
            if (z10 && (paint = this.f58352f) != null) {
                paint.setAlpha(a11);
                paint.setDither(bVar.v());
                paint.setColorFilter(colorFilter2);
            }
        }
        int K = bVar.K();
        if (K != 0) {
            if (K != 1) {
                if (K != 2) {
                    if (K == 3) {
                        Path c10 = c(bVar);
                        canvas.drawPath(c10, this.f58350d);
                        if (z10 && (paint8 = this.f58352f) != null) {
                            canvas.drawPath(c10, paint8);
                        }
                    }
                } else {
                    RectF rectF2 = this.f58349c;
                    float centerY = rectF2.centerY();
                    if (z10 && (paint7 = this.f58352f) != null) {
                        canvas.drawLine(rectF2.left, centerY, rectF2.right, centerY, paint7);
                    }
                }
            } else {
                canvas.drawOval(this.f58349c, this.f58350d);
                if (z10 && (paint6 = this.f58352f) != null) {
                    canvas.drawOval(this.f58349c, paint6);
                }
            }
        } else if (bVar.J() != null) {
            d();
            canvas.drawPath(this.f58348b, this.f58350d);
            if (z10 && (paint4 = this.f58352f) != null) {
                canvas.drawPath(this.f58348b, paint4);
            }
        } else if (bVar.I() > 0.0f) {
            float min = (float) Math.min(bVar.I(), Math.min(this.f58349c.width(), this.f58349c.height()) * 0.5f);
            canvas.drawRoundRect(this.f58349c, min, min, this.f58350d);
            if (z10 && (paint3 = this.f58352f) != null) {
                canvas.drawRoundRect(this.f58349c, min, min, paint3);
            }
        } else {
            if (this.f58350d.getColor() != 0 || colorFilter2 != null || this.f58350d.getShader() != null) {
                canvas.drawRect(this.f58349c, this.f58350d);
            }
            if (z10 && (paint2 = this.f58352f) != null) {
                canvas.drawRect(this.f58349c, paint2);
            }
        }
        if (z12) {
            canvas.restore();
            return;
        }
        this.f58350d.setAlpha(alpha);
        if (z10 && (paint5 = this.f58352f) != null) {
            paint5.setAlpha(i10);
        }
    }

    public final void e(float f10) {
        this.f58347a.g(f10);
        this.f58359m = true;
        invalidateSelf();
    }

    public final void f(float f10, int i10) {
        this.f58347a.h(f10, i10);
        this.f58357k = true;
        invalidateSelf();
    }

    public final void g(int i10, @ColorInt int i11, float f10, float f11) {
        this.f58347a.j(i10, ColorStateList.valueOf(i11), f10, f11);
        k(i10, i11, f10, f11);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f58355i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.f58347a.t();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.f58353g;
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        b bVar = this.f58347a;
        bVar.i(getChangingConfigurations());
        return bVar;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f58347a.A();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f58347a.e();
    }

    @Override // android.graphics.drawable.Drawable
    @ms.c
    public int getOpacity() {
        if (this.f58355i == 255 && this.f58347a.D() && n()) {
            return -1;
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(@NotNull Outline outline) {
        float f10;
        float f11;
        Intrinsics.checkNotNullParameter(outline, "outline");
        b bVar = this.f58347a;
        Paint paint = this.f58352f;
        Rect bounds = getBounds();
        Intrinsics.checkNotNullExpressionValue(bounds, "getBounds()");
        float f12 = 0.0f;
        if (bVar.E() && (this.f58347a.a() <= 0 || paint == null || paint.getAlpha() == this.f58350d.getAlpha())) {
            f10 = a(this.f58350d.getAlpha()) / 255.0f;
        } else {
            f10 = 0.0f;
        }
        outline.setAlpha(f10);
        int K = bVar.K();
        if (K != 0) {
            if (K != 1) {
                if (K != 2) {
                    return;
                }
                if (paint != null) {
                    f11 = paint.getStrokeWidth() * 0.5f;
                } else {
                    f11 = 1.0E-4f;
                }
                float centerY = bounds.centerY();
                outline.setRect(bounds.left, (int) Math.floor(centerY - f11), bounds.right, (int) Math.ceil(centerY + f11));
                return;
            }
            outline.setOval(bounds);
            return;
        }
        float[] J = bVar.J();
        if (J != null) {
            d();
            if (Build.VERSION.SDK_INT >= 30) {
                outline.setPath(this.f58348b);
                return;
            } else {
                outline.setRoundRect(bounds, kotlin.collections.n.p1(J));
                return;
            }
        }
        if (bVar.I() > 0.0f) {
            f12 = (float) Math.min(bVar.I(), Math.min(bounds.width(), bounds.height()) * 0.5f);
        }
        outline.setRoundRect(bounds, f12);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(@NotNull Rect padding) {
        Intrinsics.checkNotNullParameter(padding, "padding");
        Rect rect = this.f58351e;
        if (rect != null) {
            padding.set(rect);
            return true;
        }
        return super.getPadding(padding);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        b bVar = this.f58347a;
        if (super.isStateful()) {
            return true;
        }
        ColorStateList L = bVar.L();
        if (L != null && L.isStateful()) {
            return true;
        }
        ColorStateList M = bVar.M();
        if (M != null && M.isStateful()) {
            return true;
        }
        ColorStateList d10 = bVar.d();
        if (d10 != null && d10.isStateful()) {
            return true;
        }
        return false;
    }

    public final void j(@ColorInt int i10) {
        this.f58347a.k(ColorStateList.valueOf(i10));
        this.f58350d.setColor(i10);
        invalidateSelf();
    }

    public final void m(int i10) {
        this.f58347a.p(i10);
        this.f58357k = true;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @NotNull
    public Drawable mutate() {
        if (super.mutate() == this) {
            this.f58347a = new b(this.f58347a);
            o();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        super.onBoundsChange(rect);
        this.f58358l = null;
        this.f58359m = true;
        this.f58357k = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        super.onLevelChange(i10);
        this.f58357k = true;
        this.f58359m = true;
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(@NotNull int[] stateSet) {
        boolean z10;
        ColorStateList M;
        int colorForState;
        int colorForState2;
        Intrinsics.checkNotNullParameter(stateSet, "stateSet");
        b bVar = this.f58347a;
        ColorStateList L = bVar.L();
        if (L != null && this.f58350d.getColor() != (colorForState2 = L.getColorForState(stateSet, 0))) {
            this.f58350d.setColor(colorForState2);
            z10 = true;
        } else {
            z10 = false;
        }
        Paint paint = this.f58352f;
        if (paint != null && (M = bVar.M()) != null && paint.getColor() != (colorForState = M.getColorForState(stateSet, 0))) {
            paint.setColor(colorForState);
            z10 = true;
        }
        if (bVar.d() != null && bVar.o() != null) {
            this.f58354h = b(this.f58354h, bVar.d(), bVar.o());
            z10 = true;
        }
        if (!z10) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.f58355i != i10) {
            this.f58355i = i10;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        if (this.f58353g != colorFilter) {
            this.f58353g = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    @ms.c
    public void setDither(boolean z10) {
        if (this.f58347a.v() != z10) {
            this.f58347a.m(z10);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintBlendMode(@Nullable BlendMode blendMode) {
        this.f58347a.l(blendMode);
        this.f58354h = b(this.f58354h, this.f58347a.d(), blendMode);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f58347a.q(colorStateList);
        this.f58354h = b(this.f58354h, colorStateList, this.f58347a.o());
        invalidateSelf();
    }

    public j() {
        this(new b(f58346p, null));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public j(@NotNull c orientation, @ColorInt @Nullable int[] iArr) {
        this(new b(orientation, iArr));
        Intrinsics.checkNotNullParameter(orientation, "orientation");
    }

    private j(b bVar) {
        this.f58348b = new Path();
        this.f58349c = new RectF();
        this.f58350d = new Paint(1);
        this.f58355i = 255;
        this.f58359m = true;
        this.f58347a = bVar;
        o();
    }

    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends Drawable.ConstantState {
        private boolean A;
        private boolean B;
        @Nullable
        private ColorStateList C;
        @Nullable
        private BlendMode D;

        /* renamed from: a */
        private int f58361a;

        /* renamed from: b */
        private int f58362b;

        /* renamed from: c */
        private int f58363c;

        /* renamed from: d */
        private int f58364d;
        @NotNull

        /* renamed from: e */
        private c f58365e;
        @Nullable

        /* renamed from: f */
        private ColorStateList f58366f;
        @Nullable

        /* renamed from: g */
        private ColorStateList f58367g;
        @Nullable

        /* renamed from: h */
        private ColorStateList[] f58368h;
        @Nullable

        /* renamed from: i */
        private float[] f58369i;

        /* renamed from: j */
        private int f58370j;

        /* renamed from: k */
        private float f58371k;

        /* renamed from: l */
        private float f58372l;

        /* renamed from: m */
        private float f58373m;
        @Nullable

        /* renamed from: n */
        private float[] f58374n;
        @Nullable

        /* renamed from: o */
        private Rect f58375o;

        /* renamed from: p */
        private int f58376p;

        /* renamed from: q */
        private int f58377q;

        /* renamed from: r */
        private float f58378r;

        /* renamed from: s */
        private float f58379s;

        /* renamed from: t */
        private int f58380t;

        /* renamed from: u */
        private int f58381u;

        /* renamed from: v */
        private boolean f58382v;

        /* renamed from: w */
        private float f58383w;

        /* renamed from: x */
        private float f58384x;

        /* renamed from: y */
        private float f58385y;

        /* renamed from: z */
        private int f58386z;

        @Metadata
        /* loaded from: classes8.dex */
        public static final class a extends Lambda implements Function1<ColorStateList, Integer> {

            /* renamed from: d */
            public static final a f58387d = new a();

            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @Nullable
            /* renamed from: b */
            public final Integer invoke(@Nullable ColorStateList colorStateList) {
                if (colorStateList != null) {
                    return Integer.valueOf(colorStateList.getDefaultColor());
                }
                return null;
            }
        }

        public b(@NotNull c orientation, @Nullable int[] iArr) {
            Intrinsics.checkNotNullParameter(orientation, "orientation");
            this.f58370j = -1;
            this.f58376p = -1;
            this.f58377q = -1;
            this.f58378r = 3.0f;
            this.f58379s = 9.0f;
            this.f58380t = -1;
            this.f58381u = -1;
            this.f58383w = 0.5f;
            this.f58384x = 0.5f;
            this.f58385y = 0.5f;
            this.D = Build.VERSION.SDK_INT >= 29 ? BlendMode.SRC_IN : null;
            this.f58365e = orientation;
            n(iArr);
        }

        public final int A() {
            return this.f58377q;
        }

        public final int B() {
            return this.f58380t;
        }

        public final float C() {
            return this.f58378r;
        }

        public final boolean D() {
            return this.A;
        }

        public final boolean E() {
            return this.B;
        }

        @NotNull
        public final c F() {
            return this.f58365e;
        }

        @Nullable
        public final Rect G() {
            return this.f58375o;
        }

        @Nullable
        public final float[] H() {
            return this.f58369i;
        }

        public final float I() {
            return this.f58373m;
        }

        @Nullable
        public final float[] J() {
            return this.f58374n;
        }

        public final int K() {
            return this.f58362b;
        }

        @Nullable
        public final ColorStateList L() {
            return this.f58366f;
        }

        @Nullable
        public final ColorStateList M() {
            return this.f58367g;
        }

        public final float N() {
            return this.f58372l;
        }

        public final float O() {
            return this.f58371k;
        }

        public final int a() {
            return this.f58370j;
        }

        public final int b() {
            return this.f58381u;
        }

        public final float c() {
            return this.f58379s;
        }

        @Nullable
        public final ColorStateList d() {
            return this.C;
        }

        public final int e() {
            return this.f58376p;
        }

        public final void f() {
            Boolean bool;
            boolean z10;
            boolean z11 = false;
            this.A = false;
            this.B = false;
            ColorStateList[] colorStateListArr = this.f58368h;
            if (colorStateListArr == null && this.f58366f == null) {
                return;
            }
            if (colorStateListArr != null) {
                int length = colorStateListArr.length;
                int i10 = 0;
                while (true) {
                    if (i10 < length) {
                        ColorStateList colorStateList = colorStateListArr[i10];
                        if (colorStateList != null && !n.a(colorStateList.getDefaultColor())) {
                            z10 = true;
                            break;
                        }
                        i10++;
                    } else {
                        z10 = false;
                        break;
                    }
                }
                bool = Boolean.valueOf(z10);
            } else {
                bool = null;
            }
            if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                return;
            }
            this.B = true;
            if (this.f58362b == 0 && this.f58373m <= 0.0f && this.f58374n == null) {
                z11 = true;
            }
            this.A = z11;
        }

        public final void g(float f10) {
            if (f10 < 0.0f) {
                f10 = 0.0f;
            }
            this.f58373m = f10;
            this.f58374n = null;
            f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            int i10;
            int i11;
            int i12 = this.f58361a;
            ColorStateList colorStateList = this.f58367g;
            int i13 = 0;
            if (colorStateList != null) {
                i10 = colorStateList.getChangingConfigurations();
            } else {
                i10 = 0;
            }
            int i14 = i12 | i10;
            ColorStateList colorStateList2 = this.f58366f;
            if (colorStateList2 != null) {
                i11 = colorStateList2.getChangingConfigurations();
            } else {
                i11 = 0;
            }
            int i15 = i14 | i11;
            ColorStateList colorStateList3 = this.C;
            if (colorStateList3 != null) {
                i13 = colorStateList3.getChangingConfigurations();
            }
            return i15 | i13;
        }

        public final void h(float f10, int i10) {
            this.f58385y = f10;
            this.f58386z = i10;
        }

        public final void i(int i10) {
            this.f58361a = i10;
        }

        public final void j(int i10, @Nullable ColorStateList colorStateList, float f10, float f11) {
            this.f58370j = i10;
            this.f58367g = colorStateList;
            this.f58371k = f10;
            this.f58372l = f11;
            f();
        }

        public final void k(@Nullable ColorStateList colorStateList) {
            this.f58368h = null;
            this.f58366f = colorStateList;
            f();
        }

        public final void l(@Nullable BlendMode blendMode) {
            this.D = blendMode;
        }

        public final void m(boolean z10) {
            this.f58382v = z10;
        }

        public final void n(@Nullable int[] iArr) {
            ColorStateList[] colorStateListArr;
            if (iArr != null) {
                colorStateListArr = this.f58368h;
                if (colorStateListArr == null || colorStateListArr.length != iArr.length) {
                    colorStateListArr = new ColorStateList[iArr.length];
                }
                int length = iArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    ColorStateList valueOf = ColorStateList.valueOf(iArr[i10]);
                    Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(it)");
                    colorStateListArr[i10] = valueOf;
                }
            } else {
                colorStateListArr = null;
            }
            this.f58368h = colorStateListArr;
            this.f58366f = null;
            f();
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NotNull
        public Drawable newDrawable() {
            return new j(this, (DefaultConstructorMarker) null);
        }

        @Nullable
        public final BlendMode o() {
            return this.D;
        }

        public final void p(int i10) {
            this.f58363c = i10;
        }

        public final void q(@Nullable ColorStateList colorStateList) {
            this.C = colorStateList;
        }

        public final float r() {
            return this.f58383w;
        }

        public final float s() {
            return this.f58384x;
        }

        public final int t() {
            return this.f58361a;
        }

        @Nullable
        public final int[] u() {
            ColorStateList[] colorStateListArr = this.f58368h;
            if (colorStateListArr != null) {
                return n.b(colorStateListArr, a.f58387d);
            }
            return null;
        }

        public final boolean v() {
            return this.f58382v;
        }

        @Nullable
        public final ColorStateList[] w() {
            return this.f58368h;
        }

        public final float x() {
            return this.f58385y;
        }

        public final int y() {
            return this.f58386z;
        }

        public final int z() {
            return this.f58363c;
        }

        public b(@NotNull b originalGradientState) {
            Intrinsics.checkNotNullParameter(originalGradientState, "originalGradientState");
            this.f58370j = -1;
            this.f58376p = -1;
            this.f58377q = -1;
            this.f58378r = 3.0f;
            this.f58379s = 9.0f;
            this.f58380t = -1;
            this.f58381u = -1;
            this.f58383w = 0.5f;
            this.f58384x = 0.5f;
            this.f58385y = 0.5f;
            this.D = Build.VERSION.SDK_INT >= 29 ? BlendMode.SRC_IN : null;
            this.f58361a = originalGradientState.f58361a;
            this.f58362b = originalGradientState.f58362b;
            this.f58363c = originalGradientState.f58363c;
            this.f58364d = originalGradientState.f58364d;
            this.f58365e = originalGradientState.f58365e;
            this.f58366f = originalGradientState.f58366f;
            this.f58367g = originalGradientState.f58367g;
            ColorStateList[] colorStateListArr = originalGradientState.f58368h;
            if (colorStateListArr != null) {
                this.f58368h = (ColorStateList[]) colorStateListArr.clone();
            }
            float[] fArr = originalGradientState.f58369i;
            if (fArr != null) {
                this.f58369i = (float[]) fArr.clone();
            }
            this.f58370j = originalGradientState.f58370j;
            this.f58371k = originalGradientState.f58371k;
            this.f58372l = originalGradientState.f58372l;
            this.f58373m = originalGradientState.f58373m;
            float[] fArr2 = originalGradientState.f58374n;
            if (fArr2 != null) {
                this.f58374n = (float[]) fArr2.clone();
            }
            Rect rect = originalGradientState.f58375o;
            if (rect != null) {
                this.f58375o = new Rect(rect);
            }
            this.f58376p = originalGradientState.f58376p;
            this.f58377q = originalGradientState.f58377q;
            this.f58378r = originalGradientState.f58378r;
            this.f58379s = originalGradientState.f58379s;
            this.f58380t = originalGradientState.f58380t;
            this.f58381u = originalGradientState.f58381u;
            this.f58382v = originalGradientState.f58382v;
            this.f58383w = originalGradientState.f58383w;
            this.f58384x = originalGradientState.f58384x;
            this.f58385y = originalGradientState.f58385y;
            this.f58386z = originalGradientState.f58386z;
            this.A = originalGradientState.A;
            this.B = originalGradientState.B;
            this.C = originalGradientState.C;
            this.D = originalGradientState.D;
        }
    }
}
