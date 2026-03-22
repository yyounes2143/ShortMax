package com.airbnb.lottie.utils;

import android.graphics.Bitmap;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.RecordingCanvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.compose.ui.platform.h1;
import androidx.core.graphics.BlendModeCompat;
import androidx.core.graphics.PaintCompat;
import d1.p;
/* loaded from: classes2.dex */
public class OffscreenLayer {
    private static final Matrix B = new Matrix();
    @Nullable
    private com.airbnb.lottie.utils.a A;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Canvas f4743a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private b f4744b;

    /* renamed from: c  reason: collision with root package name */
    private RenderStrategy f4745c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private RectF f4746d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private RectF f4747e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Rect f4748f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private RectF f4749g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private RectF f4750h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Rect f4751i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private RectF f4752j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Paint f4753k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Bitmap f4754l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Canvas f4755m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Rect f4756n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private s0.a f4757o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    Matrix f4758p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    float[] f4759q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private Bitmap f4760r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private Bitmap f4761s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private Canvas f4762t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private Canvas f4763u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private s0.a f4764v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private BlurMaskFilter f4765w;

    /* renamed from: x  reason: collision with root package name */
    private float f4766x = 0.0f;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private RenderNode f4767y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private RenderNode f4768z;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public enum RenderStrategy {
        DIRECT,
        SAVE_LAYER,
        BITMAP,
        RENDER_NODE
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4769a;

        static {
            int[] iArr = new int[RenderStrategy.values().length];
            f4769a = iArr;
            try {
                iArr[RenderStrategy.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4769a[RenderStrategy.SAVE_LAYER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4769a[RenderStrategy.BITMAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4769a[RenderStrategy.RENDER_NODE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public int f4770a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public BlendModeCompat f4771b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public ColorFilter f4772c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public com.airbnb.lottie.utils.a f4773d;

        public b() {
            f();
        }

        public boolean a() {
            BlendModeCompat blendModeCompat = this.f4771b;
            if (blendModeCompat != null && blendModeCompat != BlendModeCompat.SRC_OVER) {
                return true;
            }
            return false;
        }

        public boolean b() {
            if (this.f4772c != null) {
                return true;
            }
            return false;
        }

        public boolean c() {
            if (this.f4773d != null) {
                return true;
            }
            return false;
        }

        public boolean d() {
            if (!e() && !a() && !c() && !b()) {
                return true;
            }
            return false;
        }

        public boolean e() {
            if (this.f4770a < 255) {
                return true;
            }
            return false;
        }

        public void f() {
            this.f4770a = 255;
            this.f4771b = null;
            this.f4772c = null;
            this.f4773d = null;
        }
    }

    private Bitmap a(RectF rectF, Bitmap.Config config) {
        return Bitmap.createBitmap(Math.max((int) Math.ceil(rectF.width() * 1.05d), 1), Math.max((int) Math.ceil(rectF.height() * 1.05d), 1), config);
    }

    private RectF b(RectF rectF, com.airbnb.lottie.utils.a aVar) {
        if (this.f4747e == null) {
            this.f4747e = new RectF();
        }
        if (this.f4749g == null) {
            this.f4749g = new RectF();
        }
        this.f4747e.set(rectF);
        this.f4747e.offsetTo(rectF.left + aVar.f(), rectF.top + aVar.g());
        this.f4747e.inset(-aVar.h(), -aVar.h());
        this.f4749g.set(rectF);
        this.f4747e.union(this.f4749g);
        return this.f4747e;
    }

    private RenderStrategy c(Canvas canvas, b bVar) {
        if (bVar.d()) {
            return RenderStrategy.DIRECT;
        }
        if (!bVar.c()) {
            return RenderStrategy.SAVE_LAYER;
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29 && canvas.isHardwareAccelerated()) {
            if (i10 <= 31) {
                return RenderStrategy.BITMAP;
            }
            return RenderStrategy.RENDER_NODE;
        }
        return RenderStrategy.BITMAP;
    }

    private void d(Bitmap bitmap) {
        bitmap.recycle();
    }

    private boolean g(@Nullable Bitmap bitmap, RectF rectF) {
        if (bitmap == null || rectF.width() >= bitmap.getWidth() || rectF.height() >= bitmap.getHeight() || rectF.width() < bitmap.getWidth() * 0.75f || rectF.height() < bitmap.getHeight() * 0.75f) {
            return true;
        }
        return false;
    }

    private void h(Canvas canvas, com.airbnb.lottie.utils.a aVar) {
        float f10;
        s0.a aVar2;
        RectF rectF = this.f4746d;
        if (rectF != null && this.f4754l != null) {
            RectF b10 = b(rectF, aVar);
            if (this.f4748f == null) {
                this.f4748f = new Rect();
            }
            this.f4748f.set((int) Math.floor(b10.left), (int) Math.floor(b10.top), (int) Math.ceil(b10.right), (int) Math.ceil(b10.bottom));
            float[] fArr = this.f4759q;
            float f11 = 1.0f;
            if (fArr != null) {
                f10 = fArr[0];
            } else {
                f10 = 1.0f;
            }
            if (fArr != null) {
                f11 = fArr[4];
            }
            if (this.f4750h == null) {
                this.f4750h = new RectF();
            }
            this.f4750h.set(b10.left * f10, b10.top * f11, b10.right * f10, b10.bottom * f11);
            if (this.f4751i == null) {
                this.f4751i = new Rect();
            }
            this.f4751i.set(0, 0, Math.round(this.f4750h.width()), Math.round(this.f4750h.height()));
            if (g(this.f4760r, this.f4750h)) {
                Bitmap bitmap = this.f4760r;
                if (bitmap != null) {
                    d(bitmap);
                }
                Bitmap bitmap2 = this.f4761s;
                if (bitmap2 != null) {
                    d(bitmap2);
                }
                this.f4760r = a(this.f4750h, Bitmap.Config.ARGB_8888);
                this.f4761s = a(this.f4750h, Bitmap.Config.ALPHA_8);
                this.f4762t = new Canvas(this.f4760r);
                this.f4763u = new Canvas(this.f4761s);
            } else {
                Canvas canvas2 = this.f4762t;
                if (canvas2 != null && this.f4763u != null && (aVar2 = this.f4757o) != null) {
                    canvas2.drawRect(this.f4751i, aVar2);
                    this.f4763u.drawRect(this.f4751i, this.f4757o);
                } else {
                    throw new IllegalStateException("If needNewBitmap() returns true, we should have a canvas and bitmap ready");
                }
            }
            if (this.f4761s != null) {
                if (this.f4764v == null) {
                    this.f4764v = new s0.a(1);
                }
                RectF rectF2 = this.f4746d;
                this.f4763u.drawBitmap(this.f4754l, Math.round((rectF2.left - b10.left) * f10), Math.round((rectF2.top - b10.top) * f11), (Paint) null);
                if (this.f4765w == null || this.f4766x != aVar.h()) {
                    float h10 = (aVar.h() * (f10 + f11)) / 2.0f;
                    if (h10 > 0.0f) {
                        this.f4765w = new BlurMaskFilter(h10, BlurMaskFilter.Blur.NORMAL);
                    } else {
                        this.f4765w = null;
                    }
                    this.f4766x = aVar.h();
                }
                this.f4764v.setColor(aVar.e());
                if (aVar.h() > 0.0f) {
                    this.f4764v.setMaskFilter(this.f4765w);
                } else {
                    this.f4764v.setMaskFilter(null);
                }
                this.f4764v.setFilterBitmap(true);
                this.f4762t.drawBitmap(this.f4761s, Math.round(aVar.f() * f10), Math.round(aVar.g() * f11), this.f4764v);
                canvas.drawBitmap(this.f4760r, this.f4751i, this.f4748f, this.f4753k);
                return;
            }
            throw new IllegalStateException("Expected to have allocated a shadow mask bitmap");
        }
        throw new IllegalStateException("Cannot render to bitmap outside a start()/finish() block");
    }

    private void i(Canvas canvas, com.airbnb.lottie.utils.a aVar) {
        float f10;
        RenderEffect createColorFilterEffect;
        RecordingCanvas beginRecording;
        if (this.f4767y != null && this.f4768z != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                float[] fArr = this.f4759q;
                float f11 = 1.0f;
                if (fArr != null) {
                    f10 = fArr[0];
                } else {
                    f10 = 1.0f;
                }
                if (fArr != null) {
                    f11 = fArr[4];
                }
                com.airbnb.lottie.utils.a aVar2 = this.A;
                if (aVar2 == null || !aVar.j(aVar2)) {
                    createColorFilterEffect = RenderEffect.createColorFilterEffect(new PorterDuffColorFilter(aVar.e(), PorterDuff.Mode.SRC_IN));
                    if (aVar.h() > 0.0f) {
                        float h10 = (aVar.h() * (f10 + f11)) / 2.0f;
                        createColorFilterEffect = RenderEffect.createBlurEffect(h10, h10, createColorFilterEffect, Shader.TileMode.CLAMP);
                    }
                    this.f4768z.setRenderEffect(createColorFilterEffect);
                    this.A = aVar;
                }
                RectF b10 = b(this.f4746d, aVar);
                RectF rectF = new RectF(b10.left * f10, b10.top * f11, b10.right * f10, b10.bottom * f11);
                this.f4768z.setPosition(0, 0, (int) rectF.width(), (int) rectF.height());
                beginRecording = this.f4768z.beginRecording((int) rectF.width(), (int) rectF.height());
                beginRecording.translate((-rectF.left) + (aVar.f() * f10), (-rectF.top) + (aVar.g() * f11));
                beginRecording.drawRenderNode(this.f4767y);
                this.f4768z.endRecording();
                canvas.save();
                canvas.translate(rectF.left, rectF.top);
                canvas.drawRenderNode(this.f4768z);
                canvas.restore();
                return;
            }
            throw new RuntimeException("RenderEffect is not supported on API level <31");
        }
        throw new IllegalStateException("Cannot render to render node outside a start()/finish() block");
    }

    public void e() {
        if (this.f4743a != null && this.f4744b != null && this.f4759q != null && this.f4746d != null) {
            int i10 = a.f4769a[this.f4745c.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            if (this.f4767y != null) {
                                if (Build.VERSION.SDK_INT >= 29) {
                                    this.f4743a.save();
                                    Canvas canvas = this.f4743a;
                                    float[] fArr = this.f4759q;
                                    canvas.scale(1.0f / fArr[0], 1.0f / fArr[4]);
                                    this.f4767y.endRecording();
                                    if (this.f4744b.c()) {
                                        i(this.f4743a, this.f4744b.f4773d);
                                    }
                                    this.f4743a.drawRenderNode(this.f4767y);
                                    this.f4743a.restore();
                                } else {
                                    throw new IllegalStateException("RenderNode not supported but we chose it as render strategy");
                                }
                            } else {
                                throw new IllegalStateException("RenderNode is not ready; should've been initialized at start() time");
                            }
                        }
                    } else if (this.f4754l != null) {
                        if (this.f4744b.c()) {
                            h(this.f4743a, this.f4744b.f4773d);
                        }
                        if (this.f4756n == null) {
                            this.f4756n = new Rect();
                        }
                        this.f4756n.set(0, 0, (int) (this.f4746d.width() * this.f4759q[0]), (int) (this.f4746d.height() * this.f4759q[4]));
                        this.f4743a.drawBitmap(this.f4754l, this.f4756n, this.f4746d, this.f4753k);
                    } else {
                        throw new IllegalStateException("Bitmap is not ready; should've been initialized at start() time");
                    }
                } else {
                    this.f4743a.restore();
                }
            } else {
                this.f4743a.restore();
            }
            this.f4743a = null;
            return;
        }
        throw new IllegalStateException("OffscreenBitmap: finish() call without matching start()");
    }

    public boolean f() {
        if (this.f4745c == RenderStrategy.RENDER_NODE) {
            return true;
        }
        return false;
    }

    public Canvas j(Canvas canvas, RectF rectF, b bVar) {
        RecordingCanvas beginRecording;
        if (this.f4743a == null) {
            if (this.f4759q == null) {
                this.f4759q = new float[9];
            }
            if (this.f4758p == null) {
                this.f4758p = new Matrix();
            }
            canvas.getMatrix(this.f4758p);
            this.f4758p.getValues(this.f4759q);
            float[] fArr = this.f4759q;
            float f10 = fArr[0];
            float f11 = fArr[4];
            if (this.f4752j == null) {
                this.f4752j = new RectF();
            }
            this.f4752j.set(rectF.left * f10, rectF.top * f11, rectF.right * f10, rectF.bottom * f11);
            this.f4743a = canvas;
            this.f4744b = bVar;
            this.f4745c = c(canvas, bVar);
            if (this.f4746d == null) {
                this.f4746d = new RectF();
            }
            this.f4746d.set((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
            if (this.f4753k == null) {
                this.f4753k = new s0.a();
            }
            this.f4753k.reset();
            int i10 = a.f4769a[this.f4745c.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            if (Build.VERSION.SDK_INT >= 29) {
                                if (this.f4767y == null) {
                                    this.f4767y = h1.a("OffscreenLayer.main");
                                }
                                if (bVar.c() && this.f4768z == null) {
                                    this.f4768z = h1.a("OffscreenLayer.shadow");
                                    this.A = null;
                                }
                                if (bVar.a() || bVar.b()) {
                                    if (this.f4753k == null) {
                                        this.f4753k = new s0.a();
                                    }
                                    this.f4753k.reset();
                                    PaintCompat.setBlendMode(this.f4753k, bVar.f4771b);
                                    this.f4753k.setColorFilter(bVar.f4772c);
                                    this.f4767y.setUseCompositingLayer(true, this.f4753k);
                                    if (bVar.c()) {
                                        RenderNode renderNode = this.f4768z;
                                        if (renderNode != null) {
                                            renderNode.setUseCompositingLayer(true, this.f4753k);
                                        } else {
                                            throw new IllegalStateException("Must initialize shadowRenderNode when we have shadow");
                                        }
                                    }
                                }
                                this.f4767y.setAlpha(bVar.f4770a / 255.0f);
                                if (bVar.c()) {
                                    RenderNode renderNode2 = this.f4768z;
                                    if (renderNode2 != null) {
                                        renderNode2.setAlpha(bVar.f4770a / 255.0f);
                                    } else {
                                        throw new IllegalStateException("Must initialize shadowRenderNode when we have shadow");
                                    }
                                }
                                this.f4767y.setHasOverlappingRendering(true);
                                RenderNode renderNode3 = this.f4767y;
                                RectF rectF2 = this.f4752j;
                                renderNode3.setPosition((int) rectF2.left, (int) rectF2.top, (int) rectF2.right, (int) rectF2.bottom);
                                beginRecording = this.f4767y.beginRecording((int) this.f4752j.width(), (int) this.f4752j.height());
                                beginRecording.setMatrix(B);
                                beginRecording.scale(f10, f11);
                                beginRecording.translate(-rectF.left, -rectF.top);
                                return beginRecording;
                            }
                            throw new IllegalStateException("RenderNode not supported but we chose it as render strategy");
                        }
                        throw new RuntimeException("Invalid render strategy for OffscreenLayer");
                    }
                    if (this.f4757o == null) {
                        s0.a aVar = new s0.a();
                        this.f4757o = aVar;
                        aVar.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                    }
                    if (g(this.f4754l, this.f4752j)) {
                        Bitmap bitmap = this.f4754l;
                        if (bitmap != null) {
                            d(bitmap);
                        }
                        this.f4754l = a(this.f4752j, Bitmap.Config.ARGB_8888);
                        this.f4755m = new Canvas(this.f4754l);
                    } else {
                        Canvas canvas2 = this.f4755m;
                        if (canvas2 != null) {
                            canvas2.setMatrix(B);
                            this.f4755m.drawRect(-1.0f, -1.0f, this.f4752j.width() + 1.0f, this.f4752j.height() + 1.0f, this.f4757o);
                        } else {
                            throw new IllegalStateException("If needNewBitmap() returns true, we should have a canvas ready");
                        }
                    }
                    PaintCompat.setBlendMode(this.f4753k, bVar.f4771b);
                    this.f4753k.setColorFilter(bVar.f4772c);
                    this.f4753k.setAlpha(bVar.f4770a);
                    Canvas canvas3 = this.f4755m;
                    canvas3.scale(f10, f11);
                    canvas3.translate(-rectF.left, -rectF.top);
                    return canvas3;
                }
                this.f4753k.setAlpha(bVar.f4770a);
                this.f4753k.setColorFilter(bVar.f4772c);
                if (bVar.a()) {
                    PaintCompat.setBlendMode(this.f4753k, bVar.f4771b);
                }
                p.n(canvas, rectF, this.f4753k);
                return canvas;
            }
            canvas.save();
            return canvas;
        }
        throw new IllegalStateException("Cannot nest start() calls on a single OffscreenBitmap - call finish() first");
    }
}
