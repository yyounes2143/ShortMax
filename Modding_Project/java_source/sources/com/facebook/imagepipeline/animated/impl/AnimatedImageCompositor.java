package com.facebook.imagepipeline.animated.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import l3.d;
/* loaded from: classes3.dex */
public class AnimatedImageCompositor {

    /* renamed from: a  reason: collision with root package name */
    private final l3.a f15637a;

    /* renamed from: b  reason: collision with root package name */
    private final b f15638b;

    /* renamed from: c  reason: collision with root package name */
    private final Paint f15639c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f15640d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum FrameNeededResult {
        REQUIRED,
        NOT_REQUIRED,
        SKIP,
        ABORT
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f15641a;

        static {
            int[] iArr = new int[FrameNeededResult.values().length];
            f15641a = iArr;
            try {
                iArr[FrameNeededResult.REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15641a[FrameNeededResult.NOT_REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15641a[FrameNeededResult.ABORT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f15641a[FrameNeededResult.SKIP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        o2.a<Bitmap> getCachedBitmap(int i10);

        void onIntermediateResult(int i10, Bitmap bitmap);
    }

    public AnimatedImageCompositor(l3.a aVar, boolean z10, b bVar) {
        this.f15637a = aVar;
        this.f15638b = bVar;
        this.f15640d = z10;
        Paint paint = new Paint();
        this.f15639c = paint;
        paint.setColor(0);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
    }

    private void a(Canvas canvas, AnimatedDrawableFrameInfo animatedDrawableFrameInfo) {
        int i10 = animatedDrawableFrameInfo.f15631b;
        int i11 = animatedDrawableFrameInfo.f15632c;
        canvas.drawRect(i10, i11, i10 + animatedDrawableFrameInfo.f15633d, i11 + animatedDrawableFrameInfo.f15634e, this.f15639c);
    }

    private FrameNeededResult b(int i10) {
        AnimatedDrawableFrameInfo a10 = this.f15637a.a(i10);
        AnimatedDrawableFrameInfo.DisposalMethod disposalMethod = a10.f15636g;
        if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_DO_NOT) {
            return FrameNeededResult.REQUIRED;
        }
        if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
            if (c(a10)) {
                return FrameNeededResult.NOT_REQUIRED;
            }
            return FrameNeededResult.REQUIRED;
        } else if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS) {
            return FrameNeededResult.SKIP;
        } else {
            return FrameNeededResult.ABORT;
        }
    }

    private boolean c(AnimatedDrawableFrameInfo animatedDrawableFrameInfo) {
        if (animatedDrawableFrameInfo.f15631b == 0 && animatedDrawableFrameInfo.f15632c == 0 && animatedDrawableFrameInfo.f15633d == this.f15637a.c() && animatedDrawableFrameInfo.f15634e == this.f15637a.h()) {
            return true;
        }
        return false;
    }

    private boolean d(int i10) {
        if (i10 == 0) {
            return true;
        }
        AnimatedDrawableFrameInfo a10 = this.f15637a.a(i10);
        AnimatedDrawableFrameInfo a11 = this.f15637a.a(i10 - 1);
        if (a10.f15635f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND && c(a10)) {
            return true;
        }
        if (a11.f15636g == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND && c(a11)) {
            return true;
        }
        return false;
    }

    private void e(Bitmap bitmap) {
        d d10 = this.f15637a.d();
        if (d10 == null) {
            return;
        }
        d10.c();
    }

    private int f(int i10, Canvas canvas) {
        while (i10 >= 0) {
            int i11 = a.f15641a[b(i10).ordinal()];
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 == 3) {
                        return i10;
                    }
                } else {
                    return i10 + 1;
                }
            } else {
                AnimatedDrawableFrameInfo a10 = this.f15637a.a(i10);
                o2.a<Bitmap> cachedBitmap = this.f15638b.getCachedBitmap(i10);
                if (cachedBitmap != null) {
                    try {
                        canvas.drawBitmap(cachedBitmap.s(), 0.0f, 0.0f, (Paint) null);
                        if (a10.f15636g == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
                            a(canvas, a10);
                        }
                        return i10 + 1;
                    } finally {
                        if (!this.f15640d) {
                            cachedBitmap.close();
                        }
                    }
                } else if (d(i10)) {
                    return i10;
                }
            }
            i10--;
        }
        return 0;
    }

    public void g(int i10, Bitmap bitmap) {
        this.f15637a.i(i10, new Canvas(bitmap));
    }

    public void h(int i10, Bitmap bitmap) {
        int i11;
        if (this.f15640d) {
            g(i10, bitmap);
            return;
        }
        Canvas canvas = new Canvas(bitmap);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        if (!d(i10)) {
            i11 = f(i10 - 1, canvas);
        } else {
            i11 = i10;
        }
        while (i11 < i10) {
            AnimatedDrawableFrameInfo a10 = this.f15637a.a(i11);
            AnimatedDrawableFrameInfo.DisposalMethod disposalMethod = a10.f15636g;
            if (disposalMethod != AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_PREVIOUS) {
                if (a10.f15635f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND) {
                    a(canvas, a10);
                }
                this.f15637a.f(i11, canvas);
                this.f15638b.onIntermediateResult(i11, bitmap);
                if (disposalMethod == AnimatedDrawableFrameInfo.DisposalMethod.DISPOSE_TO_BACKGROUND) {
                    a(canvas, a10);
                }
            }
            i11++;
        }
        AnimatedDrawableFrameInfo a11 = this.f15637a.a(i10);
        if (a11.f15635f == AnimatedDrawableFrameInfo.BlendOperation.NO_BLEND) {
            a(canvas, a11);
        }
        this.f15637a.f(i10, canvas);
        e(bitmap);
    }
}
