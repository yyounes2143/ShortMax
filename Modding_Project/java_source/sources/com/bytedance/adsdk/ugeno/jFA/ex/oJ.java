package com.bytedance.adsdk.ugeno.jFA.ex;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.Log;
import android.widget.ImageView;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ugeno.core.IAnimation;
import com.bytedance.adsdk.ugeno.ex;
import com.bytedance.adsdk.ugeno.oJ.cFZ;
import com.bytedance.adsdk.ugeno.oJ.so;
/* loaded from: classes3.dex */
public class oJ extends ImageView implements IAnimation, cFZ {
    static final /* synthetic */ boolean ZYk = true;
    private boolean BTZ;
    private final float[] Pfn;
    private boolean PiB;
    private ex QSm;
    private Shader.TileMode RZ;
    private Shader.TileMode Ry;
    private boolean WcQ;
    private int awB;

    /* renamed from: ba  reason: collision with root package name */
    private Drawable f11687ba;
    private ColorStateList cFZ;
    private Drawable dLZ;
    private int eZI;
    private ColorFilter jFA;
    private boolean kkU;

    /* renamed from: oq  reason: collision with root package name */
    private so f11688oq;

    /* renamed from: si  reason: collision with root package name */
    private ImageView.ScaleType f11689si;

    /* renamed from: so  reason: collision with root package name */
    private float f11690so;
    private float tB;
    public static final Shader.TileMode oJ = Shader.TileMode.CLAMP;
    private static final ImageView.ScaleType[] ex = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* renamed from: com.bytedance.adsdk.ugeno.jFA.ex.oJ$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            oJ = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                oJ[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                oJ[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                oJ[ImageView.ScaleType.CENTER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                oJ[ImageView.ScaleType.CENTER_CROP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                oJ[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public oJ(Context context) {
        super(context);
        this.Pfn = new float[]{0.0f, 0.0f, 0.0f, 0.0f};
        this.cFZ = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
        this.f11690so = 0.0f;
        this.jFA = null;
        this.kkU = false;
        this.BTZ = false;
        this.PiB = false;
        this.WcQ = false;
        Shader.TileMode tileMode = oJ;
        this.Ry = tileMode;
        this.RZ = tileMode;
        this.f11688oq = new so(this);
    }

    private Drawable ZYk() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i10 = this.eZI;
        if (i10 != 0) {
            try {
                drawable = resources.getDrawable(i10);
            } catch (Exception e10) {
                Log.w("RoundedImageView", "Unable to find resource: " + this.eZI, e10);
                this.eZI = 0;
            }
        }
        return ZYk.oJ(drawable);
    }

    private void ex() {
        Drawable drawable = this.dLZ;
        if (drawable != null && this.kkU) {
            Drawable mutate = drawable.mutate();
            this.dLZ = mutate;
            if (this.BTZ) {
                mutate.setColorFilter(this.jFA);
            }
        }
    }

    private Drawable oJ() {
        Resources resources = getResources();
        Drawable drawable = null;
        if (resources == null) {
            return null;
        }
        int i10 = this.awB;
        if (i10 != 0) {
            try {
                drawable = resources.getDrawable(i10);
            } catch (Exception e10) {
                Log.w("RoundedImageView", "Unable to find resource: " + this.awB, e10);
                this.awB = 0;
            }
        }
        return ZYk.oJ(drawable);
    }

    private void tB() {
        oJ(this.dLZ, this.f11689si);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        ex exVar = this.QSm;
        if (exVar != null) {
            exVar.ZYk(canvas);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public int getBorderColor() {
        return this.cFZ.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.cFZ;
    }

    public float getBorderRadius() {
        return this.f11688oq.oJ();
    }

    public float getBorderWidth() {
        return this.f11690so;
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float f10 = 0.0f;
        for (float f11 : this.Pfn) {
            f10 = Math.max(f11, f10);
        }
        return f10;
    }

    @Override // com.bytedance.adsdk.ugeno.core.IAnimation, com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getRipple() {
        return this.tB;
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getRubIn() {
        return this.f11688oq.getRubIn();
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f11689si;
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getShine() {
        return this.f11688oq.getShine();
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.cFZ
    public float getStretch() {
        return this.f11688oq.getStretch();
    }

    public Shader.TileMode getTileModeX() {
        return this.Ry;
    }

    public Shader.TileMode getTileModeY() {
        return this.RZ;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ex exVar = this.QSm;
        if (exVar != null) {
            exVar.cFZ();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ex exVar = this.QSm;
        if (exVar != null) {
            exVar.so();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ex exVar = this.QSm;
        if (exVar != null) {
            exVar.oJ(canvas, this);
            this.QSm.oJ(canvas);
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        ex exVar = this.QSm;
        if (exVar != null) {
            exVar.oJ(i10, i11, i12, i13);
        }
        super.onLayout(z10, i10, i11, i12, i13);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        ex exVar = this.QSm;
        if (exVar != null) {
            int[] oJ2 = exVar.oJ(i10, i11);
            super.onMeasure(oJ2[0], oJ2[1]);
            return;
        }
        super.onMeasure(i10, i11);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        ex exVar = this.QSm;
        if (exVar != null) {
            exVar.ZYk(i10, i11, i12, i12);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        ColorDrawable colorDrawable = new ColorDrawable(i10);
        this.f11687ba = colorDrawable;
        setBackgroundDrawable(colorDrawable);
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.f11687ba = drawable;
        oJ(true);
        super.setBackgroundDrawable(this.f11687ba);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        if (this.eZI != i10) {
            this.eZI = i10;
            Drawable ZYk2 = ZYk();
            this.f11687ba = ZYk2;
            setBackgroundDrawable(ZYk2);
        }
    }

    public void setBorderColor(int i10) {
        setBorderColor(ColorStateList.valueOf(i10));
    }

    public void setBorderRadius(float f10) {
        so soVar = this.f11688oq;
        if (soVar != null) {
            soVar.oJ(f10);
        }
    }

    public void setBorderWidth(int i10) {
        setBorderWidth(getResources().getDimension(i10));
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.jFA != colorFilter) {
            this.jFA = colorFilter;
            this.BTZ = true;
            this.kkU = true;
            ex();
            invalidate();
        }
    }

    public void setCornerRadius(float f10) {
        oJ(f10, f10, f10, f10);
    }

    public void setCornerRadiusDimen(int i10) {
        float dimension = getResources().getDimension(i10);
        oJ(dimension, dimension, dimension, dimension);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.awB = 0;
        this.dLZ = ZYk.oJ(bitmap);
        tB();
        super.setImageDrawable(this.dLZ);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.awB = 0;
        this.dLZ = ZYk.oJ(drawable);
        tB();
        super.setImageDrawable(drawable);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        if (this.awB != i10) {
            this.awB = i10;
            this.dLZ = oJ();
            tB();
            super.setImageDrawable(this.dLZ);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean z10) {
        this.PiB = z10;
        tB();
        oJ(false);
        invalidate();
    }

    @Override // com.bytedance.adsdk.ugeno.core.IAnimation
    public void setRipple(float f10) {
        this.tB = f10;
        so soVar = this.f11688oq;
        if (soVar != null) {
            soVar.ZYk(f10);
        }
        postInvalidate();
    }

    public void setRubIn(float f10) {
        so soVar = this.f11688oq;
        if (soVar != null) {
            soVar.Pfn(f10);
        }
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (!ZYk && scaleType == null) {
            throw new AssertionError();
        }
        if (this.f11689si != scaleType) {
            this.f11689si = scaleType;
            int i10 = AnonymousClass1.oJ[scaleType.ordinal()];
            if (i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) {
                super.setScaleType(ImageView.ScaleType.FIT_XY);
            } else {
                super.setScaleType(scaleType);
            }
            tB();
            oJ(false);
            invalidate();
        }
    }

    public void setShine(float f10) {
        so soVar = this.f11688oq;
        if (soVar != null) {
            soVar.tB(f10);
        }
    }

    public void setStretch(float f10) {
        so soVar = this.f11688oq;
        if (soVar != null) {
            soVar.ex(f10);
        }
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.Ry == tileMode) {
            return;
        }
        this.Ry = tileMode;
        tB();
        oJ(false);
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.RZ == tileMode) {
            return;
        }
        this.RZ = tileMode;
        tB();
        oJ(false);
        invalidate();
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.cFZ.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK);
        }
        this.cFZ = colorStateList;
        tB();
        oJ(false);
        if (this.f11690so > 0.0f) {
            invalidate();
        }
    }

    public void setBorderWidth(float f10) {
        if (this.f11690so == f10) {
            return;
        }
        this.f11690so = f10;
        tB();
        oJ(false);
        invalidate();
    }

    private void oJ(boolean z10) {
        if (this.WcQ) {
            if (z10) {
                this.f11687ba = ZYk.oJ(this.f11687ba);
            }
            oJ(this.f11687ba, ImageView.ScaleType.FIT_XY);
        }
    }

    private void oJ(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof ZYk) {
            ZYk zYk = (ZYk) drawable;
            zYk.oJ(scaleType).oJ(this.f11690so).oJ(this.cFZ).oJ(this.PiB).oJ(this.Ry).ZYk(this.RZ);
            float[] fArr = this.Pfn;
            if (fArr != null) {
                zYk.oJ(fArr[0], fArr[1], fArr[2], fArr[3]);
            }
            ex();
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i10 = 0; i10 < numberOfLayers; i10++) {
                oJ(layerDrawable.getDrawable(i10), scaleType);
            }
        }
    }

    public void oJ(float f10, float f11, float f12, float f13) {
        float[] fArr = this.Pfn;
        if (fArr[0] == f10 && fArr[1] == f11 && fArr[2] == f13 && fArr[3] == f12) {
            return;
        }
        fArr[0] = f10;
        fArr[1] = f11;
        fArr[3] = f12;
        fArr[2] = f13;
        tB();
        oJ(false);
        invalidate();
    }

    public void oJ(ex exVar) {
        this.QSm = exVar;
    }
}
