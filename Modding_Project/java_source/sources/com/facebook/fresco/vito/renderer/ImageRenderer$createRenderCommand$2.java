package com.facebook.fresco.vito.renderer;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: ImageRenderer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImageRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2\n+ 2 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer\n*L\n1#1,133:1\n128#2,3:134\n*S KotlinDebug\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$2\n*L\n104#1:134,3\n*E\n"})
/* loaded from: classes3.dex */
public final class ImageRenderer$createRenderCommand$2 implements Function1<Canvas, Unit> {
    final /* synthetic */ Matrix $imageTransformation;
    final /* synthetic */ Paint $paint;
    final /* synthetic */ Shape $shape;
    final /* synthetic */ DrawableImageDataModel $this_createRenderCommand;

    public ImageRenderer$createRenderCommand$2(DrawableImageDataModel drawableImageDataModel, Paint paint, Matrix matrix, Shape shape) {
        this.$this_createRenderCommand = drawableImageDataModel;
        this.$paint = paint;
        this.$imageTransformation = matrix;
        this.$shape = shape;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Canvas canvas) {
        invoke2(canvas);
        return Unit.f60915a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        this.$this_createRenderCommand.getDrawable().setBounds(0, 0, this.$this_createRenderCommand.getWidth(), this.$this_createRenderCommand.getHeight());
        if (this.$this_createRenderCommand.getDrawable().getColorFilter() != null) {
            this.$this_createRenderCommand.getDrawable().setColorFilter(null);
        }
        Bitmap createBitmap = Bitmap.createBitmap(this.$this_createRenderCommand.getWidth(), this.$this_createRenderCommand.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        this.$this_createRenderCommand.getDrawable().draw(new Canvas(createBitmap));
        ImageRenderer imageRenderer = ImageRenderer.INSTANCE;
        Paint paint = this.$paint;
        Matrix matrix = this.$imageTransformation;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(createBitmap, tileMode, tileMode));
        paint.getShader().setLocalMatrix(matrix);
        this.$shape.draw(canvas, this.$paint);
    }
}
