package com.bytedance.adsdk.ugeno.jFA.ex;

import ai.turbolink.sdk.campaign.b;
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
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Log;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import java.util.HashSet;
/* loaded from: classes3.dex */
public class ZYk extends Drawable {
    private Shader.TileMode BTZ;
    private final Paint Pfn;
    private Shader.TileMode PiB;
    private ImageView.ScaleType QSm;
    private ColorStateList RZ;
    private float Ry;
    private boolean WcQ;
    private float awB;

    /* renamed from: ba  reason: collision with root package name */
    private final int f11684ba;
    private final int cFZ;
    private final RectF dLZ;
    private final boolean[] eZI;
    private final Bitmap ex;
    private final Paint jFA;
    private final Matrix kkU;

    /* renamed from: si  reason: collision with root package name */
    private boolean f11685si;

    /* renamed from: so  reason: collision with root package name */
    private final RectF f11686so;
    private final RectF tB;
    private final RectF oJ = new RectF();
    private final RectF ZYk = new RectF();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.adsdk.ugeno.jFA.ex.ZYk$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            oJ = iArr;
            try {
                iArr[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                oJ[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                oJ[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                oJ[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                oJ[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                oJ[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public ZYk(Bitmap bitmap) {
        RectF rectF = new RectF();
        this.tB = rectF;
        this.f11686so = new RectF();
        this.kkU = new Matrix();
        this.dLZ = new RectF();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        this.BTZ = tileMode;
        this.PiB = tileMode;
        this.WcQ = true;
        this.awB = 0.0f;
        this.eZI = new boolean[]{true, true, true, true};
        this.f11685si = false;
        this.Ry = 0.0f;
        this.RZ = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
        this.QSm = ImageView.ScaleType.FIT_CENTER;
        this.ex = bitmap;
        int width = bitmap.getWidth();
        this.f11684ba = width;
        int height = bitmap.getHeight();
        this.cFZ = height;
        rectF.set(0.0f, 0.0f, width, height);
        Paint paint = new Paint();
        this.Pfn = paint;
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.jFA = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setAntiAlias(true);
        paint2.setColor(this.RZ.getColorForState(getState(), ViewCompat.MEASURED_STATE_MASK));
        paint2.setStrokeWidth(this.Ry);
    }

    public static Bitmap ZYk(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (Throwable unused) {
            Log.w("RoundedDrawable", "Failed to create bitmap from drawable!");
            return null;
        }
    }

    public static ZYk oJ(Bitmap bitmap) {
        if (bitmap != null) {
            return new ZYk(bitmap);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.WcQ) {
            BitmapShader bitmapShader = new BitmapShader(this.ex, this.BTZ, this.PiB);
            Shader.TileMode tileMode = this.BTZ;
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            if (tileMode == tileMode2 && this.PiB == tileMode2) {
                bitmapShader.setLocalMatrix(this.kkU);
            }
            this.Pfn.setShader(bitmapShader);
            this.WcQ = false;
        }
        if (this.f11685si) {
            if (this.Ry > 0.0f) {
                canvas.drawOval(this.ZYk, this.Pfn);
                canvas.drawOval(this.f11686so, this.jFA);
                return;
            }
            canvas.drawOval(this.ZYk, this.Pfn);
        } else if (oJ(this.eZI)) {
            float f10 = this.awB;
            if (this.Ry > 0.0f) {
                canvas.drawRoundRect(this.ZYk, f10, f10, this.Pfn);
                canvas.drawRoundRect(this.f11686so, f10, f10, this.jFA);
                oJ(canvas);
                ZYk(canvas);
                return;
            }
            canvas.drawRoundRect(this.ZYk, f10, f10, this.Pfn);
            oJ(canvas);
        } else {
            canvas.drawRect(this.ZYk, this.Pfn);
            if (this.Ry > 0.0f) {
                canvas.drawRect(this.f11686so, this.jFA);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.Pfn.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.Pfn.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.cFZ;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f11684ba;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.RZ.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.oJ.set(rect);
        oJ();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.RZ.getColorForState(iArr, 0);
        if (this.jFA.getColor() != colorForState) {
            this.jFA.setColor(colorForState);
            return true;
        }
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.Pfn.setAlpha(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.Pfn.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        this.Pfn.setDither(z10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        this.Pfn.setFilterBitmap(z10);
        invalidateSelf();
    }

    public static Drawable oJ(Drawable drawable) {
        if (drawable != null) {
            if (drawable instanceof ZYk) {
                return drawable;
            }
            if (Build.VERSION.SDK_INT >= 28 && b.a(drawable)) {
                return drawable;
            }
            if (drawable instanceof LayerDrawable) {
                Drawable.ConstantState constantState = drawable.mutate().getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                for (int i10 = 0; i10 < numberOfLayers; i10++) {
                    layerDrawable.setDrawableByLayerId(layerDrawable.getId(i10), oJ(layerDrawable.getDrawable(i10)));
                }
                return layerDrawable;
            }
        }
        Bitmap ZYk = ZYk(drawable);
        return ZYk != null ? new ZYk(ZYk) : drawable;
    }

    private void ZYk(Canvas canvas) {
        float f10;
        if (ZYk(this.eZI) || this.awB == 0.0f) {
            return;
        }
        RectF rectF = this.ZYk;
        float f11 = rectF.left;
        float f12 = rectF.top;
        float width = rectF.width() + f11;
        float height = f12 + this.ZYk.height();
        float f13 = this.awB;
        float f14 = this.Ry / 2.0f;
        if (!this.eZI[0]) {
            canvas.drawLine(f11 - f14, f12, f11 + f13, f12, this.jFA);
            canvas.drawLine(f11, f12 - f14, f11, f12 + f13, this.jFA);
        }
        if (!this.eZI[1]) {
            canvas.drawLine((width - f13) - f14, f12, width, f12, this.jFA);
            canvas.drawLine(width, f12 - f14, width, f12 + f13, this.jFA);
        }
        if (this.eZI[2]) {
            f10 = f13;
        } else {
            f10 = f13;
            canvas.drawLine((width - f13) - f14, height, width + f14, height, this.jFA);
            canvas.drawLine(width, height - f10, width, height, this.jFA);
        }
        if (this.eZI[3]) {
            return;
        }
        canvas.drawLine(f11 - f14, height, f11 + f10, height, this.jFA);
        canvas.drawLine(f11, height - f10, f11, height, this.jFA);
    }

    private void oJ() {
        float width;
        float height;
        int i10 = AnonymousClass1.oJ[this.QSm.ordinal()];
        if (i10 == 1) {
            this.f11686so.set(this.oJ);
            RectF rectF = this.f11686so;
            float f10 = this.Ry;
            rectF.inset(f10 / 2.0f, f10 / 2.0f);
            this.kkU.reset();
            this.kkU.setTranslate((int) (((this.f11686so.width() - this.f11684ba) * 0.5f) + 0.5f), (int) (((this.f11686so.height() - this.cFZ) * 0.5f) + 0.5f));
        } else if (i10 == 2) {
            this.f11686so.set(this.oJ);
            RectF rectF2 = this.f11686so;
            float f11 = this.Ry;
            rectF2.inset(f11 / 2.0f, f11 / 2.0f);
            this.kkU.reset();
            float f12 = 0.0f;
            if (this.f11684ba * this.f11686so.height() > this.f11686so.width() * this.cFZ) {
                width = this.f11686so.height() / this.cFZ;
                height = 0.0f;
                f12 = (this.f11686so.width() - (this.f11684ba * width)) * 0.5f;
            } else {
                width = this.f11686so.width() / this.f11684ba;
                height = (this.f11686so.height() - (this.cFZ * width)) * 0.5f;
            }
            this.kkU.setScale(width, width);
            Matrix matrix = this.kkU;
            float f13 = this.Ry;
            matrix.postTranslate(((int) (f12 + 0.5f)) + (f13 / 2.0f), ((int) (height + 0.5f)) + (f13 / 2.0f));
        } else if (i10 == 3) {
            this.kkU.reset();
            float min = (((float) this.f11684ba) > this.oJ.width() || ((float) this.cFZ) > this.oJ.height()) ? Math.min(this.oJ.width() / this.f11684ba, this.oJ.height() / this.cFZ) : 1.0f;
            this.kkU.setScale(min, min);
            this.kkU.postTranslate((int) (((this.oJ.width() - (this.f11684ba * min)) * 0.5f) + 0.5f), (int) (((this.oJ.height() - (this.cFZ * min)) * 0.5f) + 0.5f));
            this.f11686so.set(this.tB);
            this.kkU.mapRect(this.f11686so);
            RectF rectF3 = this.f11686so;
            float f14 = this.Ry;
            rectF3.inset(f14 / 2.0f, f14 / 2.0f);
            this.kkU.setRectToRect(this.tB, this.f11686so, Matrix.ScaleToFit.FILL);
        } else if (i10 == 5) {
            this.f11686so.set(this.tB);
            this.kkU.setRectToRect(this.tB, this.oJ, Matrix.ScaleToFit.END);
            this.kkU.mapRect(this.f11686so);
            RectF rectF4 = this.f11686so;
            float f15 = this.Ry;
            rectF4.inset(f15 / 2.0f, f15 / 2.0f);
            this.kkU.setRectToRect(this.tB, this.f11686so, Matrix.ScaleToFit.FILL);
        } else if (i10 == 6) {
            this.f11686so.set(this.tB);
            this.kkU.setRectToRect(this.tB, this.oJ, Matrix.ScaleToFit.START);
            this.kkU.mapRect(this.f11686so);
            RectF rectF5 = this.f11686so;
            float f16 = this.Ry;
            rectF5.inset(f16 / 2.0f, f16 / 2.0f);
            this.kkU.setRectToRect(this.tB, this.f11686so, Matrix.ScaleToFit.FILL);
        } else if (i10 != 7) {
            this.f11686so.set(this.tB);
            this.kkU.setRectToRect(this.tB, this.oJ, Matrix.ScaleToFit.CENTER);
            this.kkU.mapRect(this.f11686so);
            RectF rectF6 = this.f11686so;
            float f17 = this.Ry;
            rectF6.inset(f17 / 2.0f, f17 / 2.0f);
            this.kkU.setRectToRect(this.tB, this.f11686so, Matrix.ScaleToFit.FILL);
        } else {
            this.f11686so.set(this.oJ);
            RectF rectF7 = this.f11686so;
            float f18 = this.Ry;
            rectF7.inset(f18 / 2.0f, f18 / 2.0f);
            this.kkU.reset();
            this.kkU.setRectToRect(this.tB, this.f11686so, Matrix.ScaleToFit.FILL);
        }
        this.ZYk.set(this.f11686so);
        this.WcQ = true;
    }

    public ZYk ZYk(Shader.TileMode tileMode) {
        if (this.PiB != tileMode) {
            this.PiB = tileMode;
            this.WcQ = true;
            invalidateSelf();
        }
        return this;
    }

    private static boolean ZYk(boolean[] zArr) {
        for (boolean z10 : zArr) {
            if (z10) {
                return false;
            }
        }
        return true;
    }

    private void oJ(Canvas canvas) {
        if (ZYk(this.eZI) || this.awB == 0.0f) {
            return;
        }
        RectF rectF = this.ZYk;
        float f10 = rectF.left;
        float f11 = rectF.top;
        float width = rectF.width() + f10;
        float height = this.ZYk.height() + f11;
        float f12 = this.awB;
        if (!this.eZI[0]) {
            this.dLZ.set(f10, f11, f10 + f12, f11 + f12);
            canvas.drawRect(this.dLZ, this.Pfn);
        }
        if (!this.eZI[1]) {
            this.dLZ.set(width - f12, f11, width, f12);
            canvas.drawRect(this.dLZ, this.Pfn);
        }
        if (!this.eZI[2]) {
            this.dLZ.set(width - f12, height - f12, width, height);
            canvas.drawRect(this.dLZ, this.Pfn);
        }
        if (this.eZI[3]) {
            return;
        }
        this.dLZ.set(f10, height - f12, f12 + f10, height);
        canvas.drawRect(this.dLZ, this.Pfn);
    }

    public ZYk oJ(float f10, float f11, float f12, float f13) {
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f10));
        hashSet.add(Float.valueOf(f11));
        hashSet.add(Float.valueOf(f12));
        hashSet.add(Float.valueOf(f13));
        hashSet.remove(Float.valueOf(0.0f));
        if (hashSet.size() <= 1) {
            if (!hashSet.isEmpty()) {
                float floatValue = ((Float) hashSet.iterator().next()).floatValue();
                if (!Float.isInfinite(floatValue) && !Float.isNaN(floatValue) && floatValue >= 0.0f) {
                    this.awB = floatValue;
                } else {
                    throw new IllegalArgumentException("Invalid radius value: ".concat(String.valueOf(floatValue)));
                }
            } else {
                this.awB = 0.0f;
            }
            boolean[] zArr = this.eZI;
            zArr[0] = f10 > 0.0f;
            zArr[1] = f11 > 0.0f;
            zArr[2] = f12 > 0.0f;
            zArr[3] = f13 > 0.0f;
            return this;
        }
        throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
    }

    public ZYk oJ(float f10) {
        this.Ry = f10;
        this.jFA.setStrokeWidth(f10);
        return this;
    }

    public ZYk oJ(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.RZ = colorStateList;
        this.jFA.setColor(colorStateList.getColorForState(getState(), ViewCompat.MEASURED_STATE_MASK));
        return this;
    }

    public ZYk oJ(boolean z10) {
        this.f11685si = z10;
        return this;
    }

    public ZYk oJ(ImageView.ScaleType scaleType) {
        if (scaleType == null) {
            scaleType = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.QSm != scaleType) {
            this.QSm = scaleType;
            oJ();
        }
        return this;
    }

    public ZYk oJ(Shader.TileMode tileMode) {
        if (this.BTZ != tileMode) {
            this.BTZ = tileMode;
            this.WcQ = true;
            invalidateSelf();
        }
        return this;
    }

    private static boolean oJ(boolean[] zArr) {
        for (boolean z10 : zArr) {
            if (z10) {
                return true;
            }
        }
        return false;
    }
}
