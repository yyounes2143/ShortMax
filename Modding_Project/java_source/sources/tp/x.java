package tp;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes8.dex */
public final class x extends Drawable {
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    public static final a f67647u = new a(null);
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private static final ImageView.ScaleType f67648v = ImageView.ScaleType.FIT_CENTER;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Bitmap f67649a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final RectF f67650b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final RectF f67651c;

    /* renamed from: d  reason: collision with root package name */
    private final int f67652d;

    /* renamed from: e  reason: collision with root package name */
    private final int f67653e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final RectF f67654f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Paint f67655g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final RectF f67656h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final Paint f67657i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final Matrix f67658j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final RectF f67659k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private Shader.TileMode f67660l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private Shader.TileMode f67661m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f67662n;

    /* renamed from: o  reason: collision with root package name */
    private float f67663o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final boolean[] f67664p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f67665q;

    /* renamed from: r  reason: collision with root package name */
    private float f67666r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private ColorStateList f67667s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private ImageView.ScaleType f67668t;

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
    public /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f67669a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            f67669a = iArr;
        }
    }

    public x(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        this.f67649a = bitmap;
        this.f67650b = new RectF();
        this.f67651c = new RectF();
        int width = bitmap.getWidth();
        this.f67652d = width;
        int height = bitmap.getHeight();
        this.f67653e = height;
        RectF rectF = new RectF();
        rectF.set(0.0f, 0.0f, width, height);
        this.f67654f = rectF;
        Paint paint = new Paint();
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        this.f67655g = paint;
        this.f67656h = new RectF();
        Paint paint2 = new Paint();
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        this.f67657i = paint2;
        this.f67658j = new Matrix();
        this.f67659k = new RectF();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.f67660l = tileMode;
        this.f67661m = tileMode;
        this.f67662n = true;
        this.f67664p = new boolean[]{true, true, true, true};
        ColorStateList valueOf = ColorStateList.valueOf(0);
        Intrinsics.checkNotNullExpressionValue(valueOf, "valueOf(DEFAULT_BORDER_COLOR)");
        this.f67667s = valueOf;
        this.f67668t = f67648v;
        paint2.setColor(valueOf.getColorForState(getState(), 0));
        paint2.setStrokeWidth(this.f67666r);
    }

    private final void f() {
        float width;
        float f10;
        float min;
        switch (b.f67669a[this.f67668t.ordinal()]) {
            case 1:
                this.f67656h.set(this.f67650b);
                RectF rectF = this.f67656h;
                float f11 = this.f67666r / 2;
                rectF.inset(f11, f11);
                this.f67658j.reset();
                this.f67658j.setTranslate(((this.f67656h.width() - this.f67652d) * 0.5f) + 0.5f, ((this.f67656h.height() - this.f67653e) * 0.5f) + 0.5f);
                break;
            case 2:
                this.f67656h.set(this.f67650b);
                RectF rectF2 = this.f67656h;
                float f12 = 2;
                float f13 = this.f67666r / f12;
                rectF2.inset(f13, f13);
                this.f67658j.reset();
                float f14 = 0.0f;
                if (this.f67652d * this.f67656h.height() > this.f67656h.width() * this.f67653e) {
                    width = this.f67656h.height() / this.f67653e;
                    f10 = (this.f67656h.width() - (this.f67652d * width)) * 0.5f;
                } else {
                    width = this.f67656h.width() / this.f67652d;
                    f10 = 0.0f;
                    f14 = (this.f67656h.height() - (this.f67653e * width)) * 0.5f;
                }
                this.f67658j.setScale(width, width);
                Matrix matrix = this.f67658j;
                float f15 = this.f67666r / f12;
                matrix.postTranslate(((int) (f10 + 0.5f)) + f15, ((int) (f14 + 0.5f)) + f15);
                break;
            case 3:
                this.f67658j.reset();
                if (this.f67652d <= this.f67650b.width() && this.f67653e <= this.f67650b.height()) {
                    min = 1.0f;
                } else {
                    min = Math.min(this.f67650b.width() / this.f67652d, this.f67650b.height() / this.f67653e);
                }
                this.f67658j.setScale(min, min);
                this.f67658j.postTranslate(((this.f67650b.width() - (this.f67652d * min)) * 0.5f) + 0.5f, ((this.f67650b.height() - (this.f67653e * min)) * 0.5f) + 0.5f);
                this.f67656h.set(this.f67654f);
                this.f67658j.mapRect(this.f67656h);
                RectF rectF3 = this.f67656h;
                float f16 = this.f67666r / 2;
                rectF3.inset(f16, f16);
                this.f67658j.setRectToRect(this.f67654f, this.f67656h, Matrix.ScaleToFit.FILL);
                break;
            case 4:
                this.f67656h.set(this.f67654f);
                this.f67658j.setRectToRect(this.f67654f, this.f67650b, Matrix.ScaleToFit.CENTER);
                this.f67658j.mapRect(this.f67656h);
                RectF rectF4 = this.f67656h;
                float f17 = this.f67666r / 2;
                rectF4.inset(f17, f17);
                this.f67658j.setRectToRect(this.f67654f, this.f67656h, Matrix.ScaleToFit.FILL);
                break;
            case 5:
                this.f67656h.set(this.f67654f);
                this.f67658j.setRectToRect(this.f67654f, this.f67650b, Matrix.ScaleToFit.END);
                this.f67658j.mapRect(this.f67656h);
                RectF rectF5 = this.f67656h;
                float f18 = this.f67666r / 2;
                rectF5.inset(f18, f18);
                this.f67658j.setRectToRect(this.f67654f, this.f67656h, Matrix.ScaleToFit.FILL);
                break;
            case 6:
                this.f67656h.set(this.f67654f);
                this.f67658j.setRectToRect(this.f67654f, this.f67650b, Matrix.ScaleToFit.START);
                this.f67658j.mapRect(this.f67656h);
                RectF rectF6 = this.f67656h;
                float f19 = this.f67666r / 2;
                rectF6.inset(f19, f19);
                this.f67658j.setRectToRect(this.f67654f, this.f67656h, Matrix.ScaleToFit.FILL);
                break;
            case 7:
                this.f67656h.set(this.f67650b);
                RectF rectF7 = this.f67656h;
                float f20 = this.f67666r / 2;
                rectF7.inset(f20, f20);
                this.f67658j.reset();
                this.f67658j.setRectToRect(this.f67654f, this.f67656h, Matrix.ScaleToFit.FILL);
                break;
            default:
                this.f67656h.set(this.f67654f);
                this.f67658j.setRectToRect(this.f67654f, this.f67650b, Matrix.ScaleToFit.CENTER);
                this.f67658j.mapRect(this.f67656h);
                RectF rectF8 = this.f67656h;
                float f21 = this.f67666r / 2;
                rectF8.inset(f21, f21);
                this.f67658j.setRectToRect(this.f67654f, this.f67656h, Matrix.ScaleToFit.FILL);
                break;
        }
        this.f67651c.set(this.f67656h);
        this.f67662n = true;
    }

    private final void g(Canvas canvas) {
        if (h(this.f67664p) || this.f67663o == 0.0f) {
            return;
        }
        RectF rectF = this.f67651c;
        float f10 = rectF.left;
        float f11 = rectF.top;
        float width = rectF.width() + f10;
        float height = this.f67651c.height() + f11;
        float f12 = this.f67663o;
        if (!this.f67664p[0]) {
            this.f67659k.set(f10, f11, f10 + f12, f11 + f12);
            canvas.drawRect(this.f67659k, this.f67655g);
        }
        if (!this.f67664p[1]) {
            this.f67659k.set(width - f12, f11, width, f12);
            canvas.drawRect(this.f67659k, this.f67655g);
        }
        if (!this.f67664p[2]) {
            this.f67659k.set(width - f12, height - f12, width, height);
            canvas.drawRect(this.f67659k, this.f67655g);
        }
        if (!this.f67664p[3]) {
            this.f67659k.set(f10, height - f12, f12 + f10, height);
            canvas.drawRect(this.f67659k, this.f67655g);
        }
    }

    private final boolean h(boolean[] zArr) {
        for (boolean z10 : zArr) {
            if (z10) {
                return false;
            }
        }
        return true;
    }

    private final void j(Canvas canvas) {
        float f10;
        if (h(this.f67664p) || this.f67663o == 0.0f) {
            return;
        }
        RectF rectF = this.f67651c;
        float f11 = rectF.left;
        float f12 = rectF.top;
        float width = rectF.width() + f11;
        float height = f12 + this.f67651c.height();
        float f13 = this.f67663o;
        float f14 = this.f67666r / 2;
        if (!this.f67664p[0]) {
            canvas.drawLine(f11 - f14, f12, f11 + f13, f12, this.f67657i);
            canvas.drawLine(f11, f12 - f14, f11, f12 + f13, this.f67657i);
        }
        if (!this.f67664p[1]) {
            canvas.drawLine((width - f13) - f14, f12, width, f12, this.f67657i);
            canvas.drawLine(width, f12 - f14, width, f12 + f13, this.f67657i);
        }
        if (!this.f67664p[2]) {
            f10 = f13;
            canvas.drawLine((width - f13) - f14, height, width + f14, height, this.f67657i);
            canvas.drawLine(width, height - f10, width, height, this.f67657i);
        } else {
            f10 = f13;
        }
        if (!this.f67664p[3]) {
            canvas.drawLine(f11 - f14, height, f11 + f10, height, this.f67657i);
            canvas.drawLine(f11, height - f10, f11, height, this.f67657i);
        }
    }

    private final boolean k(boolean[] zArr) {
        for (boolean z10 : zArr) {
            if (z10) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final x a(float f10) {
        this.f67666r = f10;
        this.f67657i.setStrokeWidth(f10);
        return this;
    }

    @NotNull
    public final x b(float f10, float f11, float f12, float f13) {
        boolean z10;
        boolean z11;
        boolean z12;
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f10));
        hashSet.add(Float.valueOf(f11));
        hashSet.add(Float.valueOf(f12));
        hashSet.add(Float.valueOf(f13));
        hashSet.remove(Float.valueOf(0.0f));
        boolean z13 = true;
        if (hashSet.size() <= 1) {
            if (!hashSet.isEmpty()) {
                float floatValue = ((Number) hashSet.iterator().next()).floatValue();
                if (!Float.isInfinite(floatValue) && !Float.isNaN(floatValue) && floatValue >= 0.0f) {
                    this.f67663o = floatValue;
                }
            } else {
                this.f67663o = 0.0f;
            }
            boolean[] zArr = this.f67664p;
            if (f10 > 0.0f) {
                z10 = true;
            } else {
                z10 = false;
            }
            zArr[0] = z10;
            if (f11 > 0.0f) {
                z11 = true;
            } else {
                z11 = false;
            }
            zArr[1] = z11;
            if (f12 > 0.0f) {
                z12 = true;
            } else {
                z12 = false;
            }
            zArr[2] = z12;
            if (f13 <= 0.0f) {
                z13 = false;
            }
            zArr[3] = z13;
        }
        return this;
    }

    @NotNull
    public final x c(@ColorInt int i10) {
        return d(ColorStateList.valueOf(i10));
    }

    @NotNull
    public final x d(@Nullable ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
            Intrinsics.checkNotNullExpressionValue(colorStateList, "valueOf(0)");
        }
        this.f67667s = colorStateList;
        this.f67657i.setColor(colorStateList.getColorForState(getState(), 0));
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.f67662n) {
            BitmapShader bitmapShader = new BitmapShader(this.f67649a, this.f67660l, this.f67661m);
            Shader.TileMode tileMode = this.f67660l;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.f67661m == tileMode2) {
                bitmapShader.setLocalMatrix(this.f67658j);
            }
            this.f67655g.setShader(bitmapShader);
            this.f67662n = false;
        }
        if (this.f67665q) {
            if (this.f67666r > 0.0f) {
                canvas.drawOval(this.f67651c, this.f67655g);
                canvas.drawOval(this.f67656h, this.f67657i);
                return;
            }
            canvas.drawOval(this.f67651c, this.f67655g);
        } else if (k(this.f67664p)) {
            float f10 = this.f67663o;
            if (this.f67666r > 0.0f) {
                canvas.drawRoundRect(this.f67651c, f10, f10, this.f67655g);
                canvas.drawRoundRect(this.f67656h, f10, f10, this.f67657i);
                g(canvas);
                j(canvas);
                return;
            }
            canvas.drawRoundRect(this.f67651c, f10, f10, this.f67655g);
            g(canvas);
        } else {
            canvas.drawRect(this.f67651c, this.f67655g);
            if (this.f67666r > 0.0f) {
                canvas.drawRect(this.f67656h, this.f67657i);
            }
        }
    }

    @NotNull
    public final x e(@Nullable ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = f67648v;
        }
        if (this.f67668t != scaleType) {
            this.f67668t = scaleType;
            f();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f67655g.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public ColorFilter getColorFilter() {
        return this.f67655g.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f67653e;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f67652d;
    }

    @Override // android.graphics.drawable.Drawable
    @ms.c
    public int getOpacity() {
        return -3;
    }

    @NotNull
    public final x i(float f10) {
        b(f10, f10, f10, f10);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f67667s.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(@NotNull Rect bounds) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        super.onBoundsChange(bounds);
        this.f67650b.set(bounds);
        f();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(@NotNull int[] state) {
        Intrinsics.checkNotNullParameter(state, "state");
        int colorForState = this.f67667s.getColorForState(state, 0);
        if (this.f67657i.getColor() != colorForState) {
            this.f67657i.setColor(colorForState);
            return true;
        }
        return super.onStateChange(state);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f67655g.setAlpha(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f67655g.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    @ms.c
    public void setDither(boolean z10) {
        this.f67655g.setDither(z10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        this.f67655g.setFilterBitmap(z10);
        invalidateSelf();
    }
}
