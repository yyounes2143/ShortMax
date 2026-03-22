package com.inmobi.media;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Z0 extends Animation {

    /* renamed from: b  reason: collision with root package name */
    public final float f24429b;

    /* renamed from: c  reason: collision with root package name */
    public final float f24430c;

    /* renamed from: e  reason: collision with root package name */
    public Camera f24432e;

    /* renamed from: a  reason: collision with root package name */
    public final float f24428a = 90.0f;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f24431d = true;

    public Z0(float f10, float f11) {
        this.f24429b = f10;
        this.f24430c = f11;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f10, Transformation t10) {
        Intrinsics.checkNotNullParameter(t10, "t");
        float f11 = ((this.f24428a - 0.0f) * f10) + 0.0f;
        float f12 = this.f24429b;
        float f13 = this.f24430c;
        Camera camera = this.f24432e;
        Matrix matrix = t10.getMatrix();
        if (camera != null) {
            camera.save();
            if (this.f24431d) {
                camera.translate(0.0f, 0.0f, f10 * 0.0f);
            } else {
                camera.translate(0.0f, 0.0f, (1.0f - f10) * 0.0f);
            }
            camera.rotateY(f11);
            camera.getMatrix(matrix);
            camera.restore();
        }
        matrix.preTranslate(-f12, -f13);
        matrix.postTranslate(f12, f13);
    }

    @Override // android.view.animation.Animation
    public final void initialize(int i10, int i11, int i12, int i13) {
        super.initialize(i10, i11, i12, i13);
        this.f24432e = new Camera();
    }
}
