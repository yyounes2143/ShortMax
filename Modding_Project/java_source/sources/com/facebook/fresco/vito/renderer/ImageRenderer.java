package com.facebook.fresco.vito.renderer;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import com.facebook.fresco.vito.renderer.util.ColorUtils;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageRenderer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImageRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer\n*L\n1#1,133:1\n47#1,2:134\n115#1,4:136\n49#1,3:140\n128#1,3:143\n120#1,3:146\n53#1:149\n115#1,4:150\n56#1:154\n128#1,3:155\n120#1,3:158\n58#1:161\n62#1,2:162\n120#1,3:164\n73#1,2:167\n96#1:169\n115#1,4:170\n128#1,3:174\n120#1,3:177\n115#1,4:180\n128#1,3:184\n120#1,3:187\n115#1,4:190\n128#1,3:194\n120#1,3:197\n115#1,4:200\n128#1,3:204\n120#1,3:207\n120#1,3:210\n*S KotlinDebug\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer\n*L\n36#1:134,2\n36#1:136,4\n36#1:140,3\n36#1:143,3\n36#1:146,3\n36#1:149\n36#1:150,4\n36#1:154\n36#1:155,3\n36#1:158,3\n36#1:161\n37#1:162,2\n37#1:164,3\n38#1:167,2\n38#1:169\n48#1:170,4\n51#1:174,3\n51#1:177,3\n53#1:180,4\n56#1:184,3\n56#1:187,3\n48#1:190,4\n51#1:194,3\n51#1:197,3\n53#1:200,4\n56#1:204,3\n56#1:207,3\n63#1:210,3\n*E\n"})
/* loaded from: classes3.dex */
public final class ImageRenderer {
    @NotNull
    public static final ImageRenderer INSTANCE = new ImageRenderer();

    private ImageRenderer() {
    }

    public static /* synthetic */ Function1 createImageDataModelRenderCommand$default(ImageRenderer imageRenderer, ImageDataModel imageDataModel, Shape shape, Paint paint, Matrix matrix, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            matrix = null;
        }
        return imageRenderer.createImageDataModelRenderCommand(imageDataModel, shape, paint, matrix);
    }

    public static /* synthetic */ Function1 createRenderCommand$default(ImageRenderer imageRenderer, BitmapImageDataModel bitmapImageDataModel, Shape shape, Paint paint, Matrix matrix, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            matrix = null;
        }
        Intrinsics.checkNotNullParameter(bitmapImageDataModel, "<this>");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(paint, "paint");
        if (shape instanceof RectShape) {
            return new ImageRenderer$bitmapRenderCommand$1(matrix, bitmapImageDataModel.getBitmap(), paint);
        }
        if (shape instanceof CircleShape) {
            if (!bitmapImageDataModel.isBitmapCircular()) {
                Bitmap bitmap = bitmapImageDataModel.getBitmap();
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
                paint.getShader().setLocalMatrix(matrix);
                return new ImageRenderer$paintRenderCommand$1(shape, paint);
            }
            return new ImageRenderer$bitmapRenderCommand$1(matrix, bitmapImageDataModel.getBitmap(), paint);
        }
        Bitmap bitmap2 = bitmapImageDataModel.getBitmap();
        Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(bitmap2, tileMode2, tileMode2));
        paint.getShader().setLocalMatrix(matrix);
        return new ImageRenderer$paintRenderCommand$1(shape, paint);
    }

    public static /* synthetic */ Paint setBitmap$default(ImageRenderer imageRenderer, Paint paint, Bitmap bitmap, Matrix matrix, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            matrix = null;
        }
        Intrinsics.checkNotNullParameter(paint, "<this>");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        paint.getShader().setLocalMatrix(matrix);
        return paint;
    }

    @NotNull
    public final Function1<Canvas, Unit> bitmapRenderCommand(@NotNull Paint paint, @NotNull Bitmap bitmap, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return new ImageRenderer$bitmapRenderCommand$1(matrix, bitmap, paint);
    }

    @NotNull
    public final Function1<Canvas, Unit> createImageDataModelRenderCommand(@NotNull ImageDataModel model, @NotNull Shape shape, @NotNull Paint paint, @Nullable Matrix matrix) {
        Function1<Canvas, Unit> imageRenderer$createRenderCommand$2;
        ImageRenderer$paintRenderCommand$1 imageRenderer$paintRenderCommand$1;
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(paint, "paint");
        if (model instanceof BitmapImageDataModel) {
            BitmapImageDataModel bitmapImageDataModel = (BitmapImageDataModel) model;
            if (shape instanceof RectShape) {
                return new ImageRenderer$bitmapRenderCommand$1(matrix, bitmapImageDataModel.getBitmap(), paint);
            }
            if (shape instanceof CircleShape) {
                if (!bitmapImageDataModel.isBitmapCircular()) {
                    Bitmap bitmap = bitmapImageDataModel.getBitmap();
                    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                    paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
                    paint.getShader().setLocalMatrix(matrix);
                    imageRenderer$paintRenderCommand$1 = new ImageRenderer$paintRenderCommand$1(shape, paint);
                } else {
                    return new ImageRenderer$bitmapRenderCommand$1(matrix, bitmapImageDataModel.getBitmap(), paint);
                }
            } else {
                Bitmap bitmap2 = bitmapImageDataModel.getBitmap();
                Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(bitmap2, tileMode2, tileMode2));
                paint.getShader().setLocalMatrix(matrix);
                imageRenderer$paintRenderCommand$1 = new ImageRenderer$paintRenderCommand$1(shape, paint);
            }
        } else if (model instanceof ColorIntImageDataModel) {
            paint.setColor(ColorUtils.Companion.multiplyColorAlpha(((ColorIntImageDataModel) model).getColorInt(), paint.getAlpha()));
            imageRenderer$paintRenderCommand$1 = new ImageRenderer$paintRenderCommand$1(shape, paint);
        } else if (model instanceof DrawableImageDataModel) {
            DrawableImageDataModel drawableImageDataModel = (DrawableImageDataModel) model;
            if (shape instanceof RectShape) {
                imageRenderer$createRenderCommand$2 = new ImageRenderer$createRenderCommand$1(drawableImageDataModel, matrix, shape, paint);
            } else {
                imageRenderer$createRenderCommand$2 = new ImageRenderer$createRenderCommand$2(drawableImageDataModel, paint, matrix, shape);
            }
            return imageRenderer$createRenderCommand$2;
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return imageRenderer$paintRenderCommand$1;
    }

    @NotNull
    public final Function1<Canvas, Unit> createRenderCommand(@NotNull BitmapImageDataModel bitmapImageDataModel, @NotNull Shape shape, @NotNull Paint paint, @Nullable Matrix matrix) {
        ImageRenderer$paintRenderCommand$1 imageRenderer$paintRenderCommand$1;
        Intrinsics.checkNotNullParameter(bitmapImageDataModel, "<this>");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(paint, "paint");
        if (shape instanceof RectShape) {
            return new ImageRenderer$bitmapRenderCommand$1(matrix, bitmapImageDataModel.getBitmap(), paint);
        }
        if (shape instanceof CircleShape) {
            if (!bitmapImageDataModel.isBitmapCircular()) {
                Bitmap bitmap = bitmapImageDataModel.getBitmap();
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
                paint.getShader().setLocalMatrix(matrix);
                imageRenderer$paintRenderCommand$1 = new ImageRenderer$paintRenderCommand$1(shape, paint);
            } else {
                return new ImageRenderer$bitmapRenderCommand$1(matrix, bitmapImageDataModel.getBitmap(), paint);
            }
        } else {
            Bitmap bitmap2 = bitmapImageDataModel.getBitmap();
            Shader.TileMode tileMode2 = Shader.TileMode.CLAMP;
            paint.setShader(new BitmapShader(bitmap2, tileMode2, tileMode2));
            paint.getShader().setLocalMatrix(matrix);
            imageRenderer$paintRenderCommand$1 = new ImageRenderer$paintRenderCommand$1(shape, paint);
        }
        return imageRenderer$paintRenderCommand$1;
    }

    @NotNull
    public final Function1<Canvas, Unit> paintRenderCommand(@NotNull Shape shape, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(paint, "paint");
        return new ImageRenderer$paintRenderCommand$1(shape, paint);
    }

    @NotNull
    public final Paint setBitmap(@NotNull Paint paint, @NotNull Bitmap bitmap, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(paint, "<this>");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        paint.getShader().setLocalMatrix(matrix);
        return paint;
    }

    @NotNull
    public final Function1<Canvas, Unit> createRenderCommand(@NotNull ColorIntImageDataModel colorIntImageDataModel, @NotNull Shape shape, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(colorIntImageDataModel, "<this>");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(paint, "paint");
        paint.setColor(ColorUtils.Companion.multiplyColorAlpha(colorIntImageDataModel.getColorInt(), paint.getAlpha()));
        return new ImageRenderer$paintRenderCommand$1(shape, paint);
    }

    public static /* synthetic */ Function1 createRenderCommand$default(ImageRenderer imageRenderer, DrawableImageDataModel drawableImageDataModel, Shape shape, Paint paint, Matrix matrix, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            matrix = null;
        }
        Intrinsics.checkNotNullParameter(drawableImageDataModel, "<this>");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(paint, "paint");
        return shape instanceof RectShape ? new ImageRenderer$createRenderCommand$1(drawableImageDataModel, matrix, shape, paint) : new ImageRenderer$createRenderCommand$2(drawableImageDataModel, paint, matrix, shape);
    }

    @NotNull
    public final Function1<Canvas, Unit> createRenderCommand(@NotNull DrawableImageDataModel drawableImageDataModel, @NotNull Shape shape, @NotNull Paint paint, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(drawableImageDataModel, "<this>");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(paint, "paint");
        return shape instanceof RectShape ? new ImageRenderer$createRenderCommand$1(drawableImageDataModel, matrix, shape, paint) : new ImageRenderer$createRenderCommand$2(drawableImageDataModel, paint, matrix, shape);
    }
}
