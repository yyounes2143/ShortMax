package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
/* compiled from: NullLayer.java */
/* loaded from: classes2.dex */
public class d extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
    }

    @Override // com.airbnb.lottie.model.layer.a, t0.e
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        super.c(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // com.airbnb.lottie.model.layer.a
    void u(Canvas canvas, Matrix matrix, int i10, @Nullable com.airbnb.lottie.utils.a aVar) {
    }
}
