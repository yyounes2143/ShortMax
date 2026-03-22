package com.mbridge.msdk.video.dynview.shape;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
/* compiled from: BackgroundDrawable.java */
/* loaded from: classes6.dex */
public class a extends ShapeDrawable {

    /* renamed from: a  reason: collision with root package name */
    private int f30770a;

    /* renamed from: b  reason: collision with root package name */
    private float f30771b;

    /* renamed from: c  reason: collision with root package name */
    private float f30772c;

    /* renamed from: d  reason: collision with root package name */
    private int f30773d;

    /* renamed from: e  reason: collision with root package name */
    private int f30774e;

    /* renamed from: f  reason: collision with root package name */
    private Bitmap f30775f;

    /* renamed from: g  reason: collision with root package name */
    private Bitmap f30776g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f30777h;

    /* renamed from: i  reason: collision with root package name */
    private Paint f30778i;

    /* renamed from: j  reason: collision with root package name */
    private Matrix f30779j;

    /* compiled from: BackgroundDrawable.java */
    /* loaded from: classes6.dex */
    public static class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private RectShape f30780a;

        /* renamed from: b  reason: collision with root package name */
        private Bitmap f30781b;

        /* renamed from: c  reason: collision with root package name */
        private Bitmap f30782c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f30783d;

        /* renamed from: e  reason: collision with root package name */
        private int f30784e;

        /* renamed from: f  reason: collision with root package name */
        private int f30785f;

        /* renamed from: g  reason: collision with root package name */
        private int f30786g;

        /* renamed from: h  reason: collision with root package name */
        private float f30787h;

        /* renamed from: i  reason: collision with root package name */
        private float f30788i;

        private b() {
            this.f30785f = 100;
            this.f30786g = 10;
            this.f30780a = new RectShape();
        }

        @Override // com.mbridge.msdk.video.dynview.shape.a.c
        public c a(Bitmap bitmap) {
            this.f30782c = bitmap;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.shape.a.c
        public c b(Bitmap bitmap) {
            this.f30781b = bitmap;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.shape.a.c
        public c a(boolean z10) {
            this.f30783d = z10;
            return this;
        }

        public c b(float f10) {
            this.f30787h = f10;
            return this;
        }

        public c a(int i10) {
            this.f30784e = i10;
            return this;
        }

        @Override // com.mbridge.msdk.video.dynview.shape.a.c
        public c a(float f10) {
            this.f30788i = f10;
            return this;
        }

        public a a() {
            return new a(this);
        }
    }

    /* compiled from: BackgroundDrawable.java */
    /* loaded from: classes6.dex */
    public interface c {
        c a(float f10);

        c a(Bitmap bitmap);

        c a(boolean z10);

        c b(Bitmap bitmap);
    }

    private void a(Canvas canvas) {
        float f10 = this.f30771b / 2.0f;
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(0.0f, this.f30772c);
        path.lineTo((f10 - this.f30773d) - this.f30774e, this.f30772c);
        path.lineTo((this.f30773d + f10) - this.f30774e, 0.0f);
        if (this.f30777h) {
            try {
                a(canvas, path);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            Bitmap bitmap = this.f30775f;
            if (bitmap != null && !bitmap.isRecycled()) {
                try {
                    a(canvas, path, this.f30775f);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        Path path2 = new Path();
        path2.moveTo(this.f30773d + f10 + this.f30774e, 0.0f);
        path2.lineTo(this.f30771b, 0.0f);
        path2.lineTo(this.f30771b, this.f30772c);
        path2.lineTo((f10 - this.f30773d) + this.f30774e, this.f30772c);
        if (this.f30777h) {
            try {
                a(canvas, path2);
                return;
            } catch (Exception e12) {
                e12.printStackTrace();
                return;
            }
        }
        Bitmap bitmap2 = this.f30776g;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            return;
        }
        try {
            a(canvas, path2, this.f30776g);
        } catch (Exception e13) {
            e13.printStackTrace();
        }
    }

    private void b(Canvas canvas) {
        float f10 = this.f30772c / 2.0f;
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.lineTo(0.0f, (this.f30773d + f10) - this.f30774e);
        path.lineTo(this.f30771b, (f10 - this.f30773d) - this.f30774e);
        path.lineTo(this.f30771b, 0.0f);
        if (this.f30777h) {
            try {
                a(canvas, path);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else {
            Bitmap bitmap = this.f30775f;
            if (bitmap != null && !bitmap.isRecycled()) {
                try {
                    a(canvas, path, this.f30775f);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
        Path path2 = new Path();
        path2.moveTo(0.0f, this.f30773d + f10 + this.f30774e);
        path2.lineTo(0.0f, this.f30772c);
        path2.lineTo(this.f30771b, this.f30772c);
        path2.lineTo(this.f30771b, (f10 - this.f30773d) + this.f30774e);
        if (this.f30777h) {
            try {
                a(canvas, path2);
                return;
            } catch (Exception e12) {
                e12.printStackTrace();
                return;
            }
        }
        Bitmap bitmap2 = this.f30776g;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            try {
                a(canvas, path2, this.f30776g);
            } catch (Exception e13) {
                e13.printStackTrace();
            }
        }
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f30770a == 1) {
            b(canvas);
        } else {
            a(canvas);
        }
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    private a(b bVar) {
        super(bVar.f30780a);
        this.f30777h = false;
        this.f30775f = bVar.f30781b;
        this.f30776g = bVar.f30782c;
        this.f30777h = bVar.f30783d;
        this.f30770a = bVar.f30784e;
        this.f30773d = bVar.f30785f;
        this.f30774e = bVar.f30786g;
        this.f30771b = bVar.f30787h;
        this.f30772c = bVar.f30788i;
        Paint paint = new Paint();
        this.f30778i = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f30778i.setAntiAlias(true);
        this.f30779j = new Matrix();
    }

    private void a(Canvas canvas, Path path, Bitmap bitmap) {
        if (canvas == null || path == null || bitmap == null || bitmap.isRecycled()) {
            return;
        }
        if (bitmap.getWidth() != 0 && bitmap.getHeight() != 0) {
            float max = Math.max(this.f30771b / bitmap.getWidth(), this.f30772c / bitmap.getHeight());
            if (this.f30779j == null) {
                this.f30779j = new Matrix();
            }
            this.f30779j.reset();
            this.f30779j.preScale(max, max);
        }
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        bitmapShader.setLocalMatrix(this.f30779j);
        this.f30778i.setShader(bitmapShader);
        canvas.drawPath(path, this.f30778i);
    }

    private void a(Canvas canvas, Path path) {
        this.f30778i.setColor(Color.parseColor("#40EAEAEA"));
        canvas.drawPath(path, this.f30778i);
    }

    public static b a() {
        return new b();
    }
}
