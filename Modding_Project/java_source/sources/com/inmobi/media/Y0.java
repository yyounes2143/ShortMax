package com.inmobi.media;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Y0 extends Animation {

    /* renamed from: b  reason: collision with root package name */
    public final float f24379b;

    /* renamed from: c  reason: collision with root package name */
    public final float f24380c;

    /* renamed from: e  reason: collision with root package name */
    public Camera f24382e;

    /* renamed from: a  reason: collision with root package name */
    public final float f24378a = 90.0f;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f24381d = true;

    public Y0(float f10, float f11) {
        this.f24379b = f10;
        this.f24380c = f11;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f10, Transformation t10) {
        Intrinsics.checkNotNullParameter(t10, "t");
        float f11 = ((this.f24378a - 0.0f) * f10) + 0.0f;
        float f12 = this.f24379b;
        float f13 = this.f24380c;
        Camera camera = this.f24382e;
        Matrix matrix = t10.getMatrix();
        if (camera != null) {
            camera.save();
            if (this.f24381d) {
                camera.translate(0.0f, 0.0f, f10 * 0.0f);
            } else {
                camera.translate(0.0f, 0.0f, (1.0f - f10) * 0.0f);
            }
            camera.rotateX(f11);
            camera.getMatrix(matrix);
            camera.restore();
        }
        matrix.preTranslate(-f12, -f13);
        matrix.postTranslate(f12, f13);
    }

    @Override // android.view.animation.Animation
    public final void initialize(int i10, int i11, int i12, int i13) {
        super.initialize(i10, i11, i12, i13);
        this.f24382e = new Camera();
    }
}
