package com.airbnb.lottie.model.layer;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.CallSuper;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.core.graphics.PaintCompat;
import androidx.core.view.ViewCompat;
import c1.j;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.model.layer.Layer;
import d1.p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import u0.a;
import u0.h;
import u0.s;
import z0.i;
/* compiled from: BaseLayer.java */
/* loaded from: classes2.dex */
public abstract class a implements t0.e, a.b, x0.e {
    @Nullable
    private Paint A;
    float B;
    @Nullable
    BlurMaskFilter C;
    @Nullable
    s0.a D;

    /* renamed from: a  reason: collision with root package name */
    private final Path f4626a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final Matrix f4627b = new Matrix();

    /* renamed from: c  reason: collision with root package name */
    private final Matrix f4628c = new Matrix();

    /* renamed from: d  reason: collision with root package name */
    private final Paint f4629d = new s0.a(1);

    /* renamed from: e  reason: collision with root package name */
    private final Paint f4630e;

    /* renamed from: f  reason: collision with root package name */
    private final Paint f4631f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f4632g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f4633h;

    /* renamed from: i  reason: collision with root package name */
    private final RectF f4634i;

    /* renamed from: j  reason: collision with root package name */
    private final RectF f4635j;

    /* renamed from: k  reason: collision with root package name */
    private final RectF f4636k;

    /* renamed from: l  reason: collision with root package name */
    private final RectF f4637l;

    /* renamed from: m  reason: collision with root package name */
    private final RectF f4638m;

    /* renamed from: n  reason: collision with root package name */
    private final String f4639n;

    /* renamed from: o  reason: collision with root package name */
    protected final Matrix f4640o;

    /* renamed from: p  reason: collision with root package name */
    final LottieDrawable f4641p;

    /* renamed from: q  reason: collision with root package name */
    final Layer f4642q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private h f4643r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private u0.d f4644s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private a f4645t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private a f4646u;

    /* renamed from: v  reason: collision with root package name */
    private List<a> f4647v;

    /* renamed from: w  reason: collision with root package name */
    private final List<u0.a<?, ?>> f4648w;

    /* renamed from: x  reason: collision with root package name */
    public final s f4649x;

    /* renamed from: y  reason: collision with root package name */
    private boolean f4650y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f4651z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseLayer.java */
    /* renamed from: com.airbnb.lottie.model.layer.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C0095a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f4652a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f4653b;

        static {
            int[] iArr = new int[Mask.MaskMode.values().length];
            f4653b = iArr;
            try {
                iArr[Mask.MaskMode.MASK_MODE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4653b[Mask.MaskMode.MASK_MODE_SUBTRACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4653b[Mask.MaskMode.MASK_MODE_INTERSECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4653b[Mask.MaskMode.MASK_MODE_ADD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[Layer.LayerType.values().length];
            f4652a = iArr2;
            try {
                iArr2[Layer.LayerType.SHAPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f4652a[Layer.LayerType.PRE_COMP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f4652a[Layer.LayerType.SOLID.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f4652a[Layer.LayerType.IMAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f4652a[Layer.LayerType.NULL.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f4652a[Layer.LayerType.TEXT.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f4652a[Layer.LayerType.UNKNOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(LottieDrawable lottieDrawable, Layer layer) {
        PorterDuff.Mode mode = PorterDuff.Mode.DST_IN;
        this.f4630e = new s0.a(1, mode);
        PorterDuff.Mode mode2 = PorterDuff.Mode.DST_OUT;
        this.f4631f = new s0.a(1, mode2);
        s0.a aVar = new s0.a(1);
        this.f4632g = aVar;
        this.f4633h = new s0.a(PorterDuff.Mode.CLEAR);
        this.f4634i = new RectF();
        this.f4635j = new RectF();
        this.f4636k = new RectF();
        this.f4637l = new RectF();
        this.f4638m = new RectF();
        this.f4640o = new Matrix();
        this.f4648w = new ArrayList();
        this.f4650y = true;
        this.B = 0.0f;
        this.f4641p = lottieDrawable;
        this.f4642q = layer;
        this.f4639n = layer.j() + "#draw";
        if (layer.i() == Layer.MatteType.INVERT) {
            aVar.setXfermode(new PorterDuffXfermode(mode2));
        } else {
            aVar.setXfermode(new PorterDuffXfermode(mode));
        }
        s b10 = layer.x().b();
        this.f4649x = b10;
        b10.e(this);
        if (layer.h() != null && !layer.h().isEmpty()) {
            h hVar = new h(layer.h());
            this.f4643r = hVar;
            for (u0.a<i, Path> aVar2 : hVar.a()) {
                aVar2.a(this);
            }
            for (u0.a<Integer, Integer> aVar3 : this.f4643r.c()) {
                j(aVar3);
                aVar3.a(this);
            }
        }
        P();
    }

    private void D(RectF rectF, Matrix matrix) {
        this.f4636k.set(0.0f, 0.0f, 0.0f, 0.0f);
        if (!B()) {
            return;
        }
        int size = this.f4643r.b().size();
        for (int i10 = 0; i10 < size; i10++) {
            Mask mask = this.f4643r.b().get(i10);
            Path h10 = this.f4643r.a().get(i10).h();
            if (h10 != null) {
                this.f4626a.set(h10);
                this.f4626a.transform(matrix);
                int i11 = C0095a.f4653b[mask.a().ordinal()];
                if (i11 != 1 && i11 != 2) {
                    if ((i11 == 3 || i11 == 4) && mask.d()) {
                        return;
                    }
                    this.f4626a.computeBounds(this.f4638m, false);
                    if (i10 == 0) {
                        this.f4636k.set(this.f4638m);
                    } else {
                        RectF rectF2 = this.f4636k;
                        rectF2.set(Math.min(rectF2.left, this.f4638m.left), Math.min(this.f4636k.top, this.f4638m.top), Math.max(this.f4636k.right, this.f4638m.right), Math.max(this.f4636k.bottom, this.f4638m.bottom));
                    }
                } else {
                    return;
                }
            }
        }
        if (!rectF.intersect(this.f4636k)) {
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void E(RectF rectF, Matrix matrix) {
        if (!C() || this.f4642q.i() == Layer.MatteType.INVERT) {
            return;
        }
        this.f4637l.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.f4645t.c(this.f4637l, matrix, true);
        if (!rectF.intersect(this.f4637l)) {
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void F() {
        this.f4641p.invalidateSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        boolean z10;
        if (this.f4644s.r() == 1.0f) {
            z10 = true;
        } else {
            z10 = false;
        }
        O(z10);
    }

    private void H(float f10) {
        this.f4641p.K().n().a(this.f4642q.j(), f10);
    }

    private void O(boolean z10) {
        if (z10 != this.f4650y) {
            this.f4650y = z10;
            F();
        }
    }

    private void P() {
        boolean z10 = true;
        if (!this.f4642q.f().isEmpty()) {
            u0.d dVar = new u0.d(this.f4642q.f());
            this.f4644s = dVar;
            dVar.m();
            this.f4644s.a(new a.b() { // from class: a1.a
                @Override // u0.a.b
                public final void f() {
                    com.airbnb.lottie.model.layer.a.this.G();
                }
            });
            if (this.f4644s.h().floatValue() != 1.0f) {
                z10 = false;
            }
            O(z10);
            j(this.f4644s);
            return;
        }
        O(true);
    }

    private void k(Canvas canvas, Matrix matrix, u0.a<i, Path> aVar, u0.a<Integer, Integer> aVar2) {
        this.f4626a.set(aVar.h());
        this.f4626a.transform(matrix);
        this.f4629d.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f4626a, this.f4629d);
    }

    private void l(Canvas canvas, Matrix matrix, u0.a<i, Path> aVar, u0.a<Integer, Integer> aVar2) {
        p.n(canvas, this.f4634i, this.f4630e);
        this.f4626a.set(aVar.h());
        this.f4626a.transform(matrix);
        this.f4629d.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f4626a, this.f4629d);
        canvas.restore();
    }

    private void m(Canvas canvas, Matrix matrix, u0.a<i, Path> aVar, u0.a<Integer, Integer> aVar2) {
        p.n(canvas, this.f4634i, this.f4629d);
        canvas.drawRect(this.f4634i, this.f4629d);
        this.f4626a.set(aVar.h());
        this.f4626a.transform(matrix);
        this.f4629d.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        canvas.drawPath(this.f4626a, this.f4631f);
        canvas.restore();
    }

    private void n(Canvas canvas, Matrix matrix, u0.a<i, Path> aVar, u0.a<Integer, Integer> aVar2) {
        p.n(canvas, this.f4634i, this.f4630e);
        canvas.drawRect(this.f4634i, this.f4629d);
        this.f4631f.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        this.f4626a.set(aVar.h());
        this.f4626a.transform(matrix);
        canvas.drawPath(this.f4626a, this.f4631f);
        canvas.restore();
    }

    private void o(Canvas canvas, Matrix matrix, u0.a<i, Path> aVar, u0.a<Integer, Integer> aVar2) {
        p.n(canvas, this.f4634i, this.f4631f);
        canvas.drawRect(this.f4634i, this.f4629d);
        this.f4631f.setAlpha((int) (aVar2.h().intValue() * 2.55f));
        this.f4626a.set(aVar.h());
        this.f4626a.transform(matrix);
        canvas.drawPath(this.f4626a, this.f4631f);
        canvas.restore();
    }

    private void p(Canvas canvas, Matrix matrix) {
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("Layer#saveLayer");
        }
        p.o(canvas, this.f4634i, this.f4630e, 19);
        if (Build.VERSION.SDK_INT < 28) {
            t(canvas);
        }
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("Layer#saveLayer");
        }
        for (int i10 = 0; i10 < this.f4643r.b().size(); i10++) {
            Mask mask = this.f4643r.b().get(i10);
            u0.a<i, Path> aVar = this.f4643r.a().get(i10);
            u0.a<Integer, Integer> aVar2 = this.f4643r.c().get(i10);
            int i11 = C0095a.f4653b[mask.a().ordinal()];
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 == 4) {
                            if (mask.d()) {
                                m(canvas, matrix, aVar, aVar2);
                            } else {
                                k(canvas, matrix, aVar, aVar2);
                            }
                        }
                    } else if (mask.d()) {
                        n(canvas, matrix, aVar, aVar2);
                    } else {
                        l(canvas, matrix, aVar, aVar2);
                    }
                } else {
                    if (i10 == 0) {
                        this.f4629d.setColor(ViewCompat.MEASURED_STATE_MASK);
                        this.f4629d.setAlpha(255);
                        canvas.drawRect(this.f4634i, this.f4629d);
                    }
                    if (mask.d()) {
                        o(canvas, matrix, aVar, aVar2);
                    } else {
                        q(canvas, matrix, aVar);
                    }
                }
            } else if (r()) {
                this.f4629d.setAlpha(255);
                canvas.drawRect(this.f4634i, this.f4629d);
            }
        }
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("Layer#restoreLayer");
        }
        canvas.restore();
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("Layer#restoreLayer");
        }
    }

    private void q(Canvas canvas, Matrix matrix, u0.a<i, Path> aVar) {
        this.f4626a.set(aVar.h());
        this.f4626a.transform(matrix);
        canvas.drawPath(this.f4626a, this.f4631f);
    }

    private boolean r() {
        if (this.f4643r.a().isEmpty()) {
            return false;
        }
        for (int i10 = 0; i10 < this.f4643r.b().size(); i10++) {
            if (this.f4643r.b().get(i10).a() != Mask.MaskMode.MASK_MODE_NONE) {
                return false;
            }
        }
        return true;
    }

    private void s() {
        if (this.f4647v != null) {
            return;
        }
        if (this.f4646u == null) {
            this.f4647v = Collections.emptyList();
            return;
        }
        this.f4647v = new ArrayList();
        for (a aVar = this.f4646u; aVar != null; aVar = aVar.f4646u) {
            this.f4647v.add(aVar);
        }
    }

    private void t(Canvas canvas) {
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("Layer#clearLayer");
        }
        RectF rectF = this.f4634i;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.f4633h);
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("Layer#clearLayer");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static a v(b bVar, Layer layer, LottieDrawable lottieDrawable, com.airbnb.lottie.i iVar) {
        switch (C0095a.f4652a[layer.g().ordinal()]) {
            case 1:
                return new e(lottieDrawable, layer, bVar, iVar);
            case 2:
                return new b(lottieDrawable, layer, iVar.o(layer.n()), iVar);
            case 3:
                return new f(lottieDrawable, layer);
            case 4:
                return new c(lottieDrawable, layer);
            case 5:
                return new d(lottieDrawable, layer);
            case 6:
                return new g(lottieDrawable, layer);
            default:
                d1.f.c("Unknown layer type " + layer.g());
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Layer A() {
        return this.f4642q;
    }

    boolean B() {
        h hVar = this.f4643r;
        if (hVar != null && !hVar.a().isEmpty()) {
            return true;
        }
        return false;
    }

    boolean C() {
        if (this.f4645t != null) {
            return true;
        }
        return false;
    }

    public void I(u0.a<?, ?> aVar) {
        this.f4648w.remove(aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void K(@Nullable a aVar) {
        this.f4645t = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void L(boolean z10) {
        if (z10 && this.A == null) {
            this.A = new s0.a();
        }
        this.f4651z = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void M(@Nullable a aVar) {
        this.f4646u = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void N(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("BaseLayer#setProgress");
            com.airbnb.lottie.d.b("BaseLayer#setProgress.transform");
        }
        this.f4649x.p(f10);
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("BaseLayer#setProgress.transform");
        }
        if (this.f4643r != null) {
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.b("BaseLayer#setProgress.mask");
            }
            for (int i10 = 0; i10 < this.f4643r.a().size(); i10++) {
                this.f4643r.a().get(i10).n(f10);
            }
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("BaseLayer#setProgress.mask");
            }
        }
        if (this.f4644s != null) {
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.b("BaseLayer#setProgress.inout");
            }
            this.f4644s.n(f10);
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("BaseLayer#setProgress.inout");
            }
        }
        if (this.f4645t != null) {
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.b("BaseLayer#setProgress.matte");
            }
            this.f4645t.N(f10);
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("BaseLayer#setProgress.matte");
            }
        }
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.b("BaseLayer#setProgress.animations." + this.f4648w.size());
        }
        for (int i11 = 0; i11 < this.f4648w.size(); i11++) {
            this.f4648w.get(i11).n(f10);
        }
        if (com.airbnb.lottie.d.h()) {
            com.airbnb.lottie.d.c("BaseLayer#setProgress.animations." + this.f4648w.size());
            com.airbnb.lottie.d.c("BaseLayer#setProgress");
        }
    }

    @Override // x0.e
    public void b(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
        a aVar = this.f4645t;
        if (aVar != null) {
            x0.d a10 = dVar2.a(aVar.getName());
            if (dVar.c(this.f4645t.getName(), i10)) {
                list.add(a10.i(this.f4645t));
            }
            if (dVar.g(this.f4645t.getName(), i10) && dVar.h(getName(), i10)) {
                this.f4645t.J(dVar, dVar.e(this.f4645t.getName(), i10) + i10, list, a10);
            }
        }
        if (!dVar.g(getName(), i10)) {
            return;
        }
        if (!"__container".equals(getName())) {
            dVar2 = dVar2.a(getName());
            if (dVar.c(getName(), i10)) {
                list.add(dVar2.i(this));
            }
        }
        if (dVar.h(getName(), i10)) {
            J(dVar, i10 + dVar.e(getName(), i10), list, dVar2);
        }
    }

    @Override // t0.e
    @CallSuper
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        this.f4634i.set(0.0f, 0.0f, 0.0f, 0.0f);
        s();
        this.f4640o.set(matrix);
        if (z10) {
            List<a> list = this.f4647v;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f4640o.preConcat(this.f4647v.get(size).f4649x.i());
                }
            } else {
                a aVar = this.f4646u;
                if (aVar != null) {
                    this.f4640o.preConcat(aVar.f4649x.i());
                }
            }
        }
        this.f4640o.preConcat(this.f4649x.i());
    }

    @Override // x0.e
    @CallSuper
    public <T> void e(T t10, @Nullable e1.c<T> cVar) {
        this.f4649x.f(t10, cVar);
    }

    @Override // u0.a.b
    public void f() {
        F();
    }

    @Override // t0.c
    public String getName() {
        return this.f4642q.j();
    }

    @Override // t0.e
    public void i(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
        int i11;
        Paint paint;
        Integer h10;
        com.airbnb.lottie.d.b(this.f4639n);
        if (this.f4650y && !this.f4642q.y()) {
            s();
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.b("Layer#parentMatrix");
            }
            this.f4627b.reset();
            this.f4627b.set(matrix);
            for (int size = this.f4647v.size() - 1; size >= 0; size--) {
                this.f4627b.preConcat(this.f4647v.get(size).f4649x.i());
            }
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("Layer#parentMatrix");
            }
            u0.a<?, Integer> k10 = this.f4649x.k();
            if (k10 != null && (h10 = k10.h()) != null) {
                i11 = h10.intValue();
            } else {
                i11 = 100;
            }
            int i12 = (int) ((((i10 / 255.0f) * i11) / 100.0f) * 255.0f);
            if (!C() && !B() && w() == LBlendMode.NORMAL) {
                this.f4627b.preConcat(this.f4649x.i());
                if (com.airbnb.lottie.d.h()) {
                    com.airbnb.lottie.d.b("Layer#drawLayer");
                }
                u(canvas, this.f4627b, i12, aVar);
                if (com.airbnb.lottie.d.h()) {
                    com.airbnb.lottie.d.c("Layer#drawLayer");
                }
                H(com.airbnb.lottie.d.c(this.f4639n));
                return;
            }
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.b("Layer#computeBounds");
            }
            c(this.f4634i, this.f4627b, false);
            E(this.f4634i, matrix);
            this.f4627b.preConcat(this.f4649x.i());
            D(this.f4634i, this.f4627b);
            this.f4635j.set(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight());
            canvas.getMatrix(this.f4628c);
            if (!this.f4628c.isIdentity()) {
                Matrix matrix2 = this.f4628c;
                matrix2.invert(matrix2);
                this.f4628c.mapRect(this.f4635j);
            }
            if (!this.f4634i.intersect(this.f4635j)) {
                this.f4634i.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
            if (com.airbnb.lottie.d.h()) {
                com.airbnb.lottie.d.c("Layer#computeBounds");
            }
            if (this.f4634i.width() >= 1.0f && this.f4634i.height() >= 1.0f) {
                if (com.airbnb.lottie.d.h()) {
                    com.airbnb.lottie.d.b("Layer#saveLayer");
                }
                this.f4629d.setAlpha(255);
                PaintCompat.setBlendMode(this.f4629d, w().toNativeBlendMode());
                p.n(canvas, this.f4634i, this.f4629d);
                if (com.airbnb.lottie.d.h()) {
                    com.airbnb.lottie.d.c("Layer#saveLayer");
                }
                if (w() != LBlendMode.MULTIPLY) {
                    t(canvas);
                } else if (Build.VERSION.SDK_INT < 29) {
                    if (this.D == null) {
                        s0.a aVar2 = new s0.a();
                        this.D = aVar2;
                        aVar2.setColor(-1);
                    }
                    RectF rectF = this.f4634i;
                    canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.D);
                }
                if (com.airbnb.lottie.d.h()) {
                    com.airbnb.lottie.d.b("Layer#drawLayer");
                }
                u(canvas, this.f4627b, i12, aVar);
                if (com.airbnb.lottie.d.h()) {
                    com.airbnb.lottie.d.c("Layer#drawLayer");
                }
                if (B()) {
                    p(canvas, this.f4627b);
                }
                if (C()) {
                    if (com.airbnb.lottie.d.h()) {
                        com.airbnb.lottie.d.b("Layer#drawMatte");
                        com.airbnb.lottie.d.b("Layer#saveLayer");
                    }
                    p.o(canvas, this.f4634i, this.f4632g, 19);
                    if (com.airbnb.lottie.d.h()) {
                        com.airbnb.lottie.d.c("Layer#saveLayer");
                    }
                    t(canvas);
                    this.f4645t.i(canvas, matrix, i10, null);
                    if (com.airbnb.lottie.d.h()) {
                        com.airbnb.lottie.d.b("Layer#restoreLayer");
                    }
                    canvas.restore();
                    if (com.airbnb.lottie.d.h()) {
                        com.airbnb.lottie.d.c("Layer#restoreLayer");
                        com.airbnb.lottie.d.c("Layer#drawMatte");
                    }
                }
                if (com.airbnb.lottie.d.h()) {
                    com.airbnb.lottie.d.b("Layer#restoreLayer");
                }
                canvas.restore();
                if (com.airbnb.lottie.d.h()) {
                    com.airbnb.lottie.d.c("Layer#restoreLayer");
                }
            }
            if (this.f4651z && (paint = this.A) != null) {
                paint.setStyle(Paint.Style.STROKE);
                this.A.setColor(-251901);
                this.A.setStrokeWidth(4.0f);
                canvas.drawRect(this.f4634i, this.A);
                this.A.setStyle(Paint.Style.FILL);
                this.A.setColor(1357638635);
                canvas.drawRect(this.f4634i, this.A);
            }
            H(com.airbnb.lottie.d.c(this.f4639n));
            return;
        }
        com.airbnb.lottie.d.c(this.f4639n);
    }

    public void j(@Nullable u0.a<?, ?> aVar) {
        if (aVar == null) {
            return;
        }
        this.f4648w.add(aVar);
    }

    abstract void u(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar);

    public LBlendMode w() {
        return this.f4642q.a();
    }

    @Nullable
    public z0.a x() {
        return this.f4642q.b();
    }

    public BlurMaskFilter y(float f10) {
        if (this.B == f10) {
            return this.C;
        }
        BlurMaskFilter blurMaskFilter = new BlurMaskFilter(f10 / 2.0f, BlurMaskFilter.Blur.NORMAL);
        this.C = blurMaskFilter;
        this.B = f10;
        return blurMaskFilter;
    }

    @Nullable
    public j z() {
        return this.f4642q.d();
    }

    @Override // t0.c
    public void g(List<t0.c> list, List<t0.c> list2) {
    }

    void J(x0.d dVar, int i10, List<x0.d> list, x0.d dVar2) {
    }
}
