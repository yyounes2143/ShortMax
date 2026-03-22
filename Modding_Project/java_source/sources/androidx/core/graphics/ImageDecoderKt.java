package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.graphics.drawable.Drawable;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageDecoder.kt */
@Metadata
@SuppressLint({"ClassVerificationFailure"})
/* loaded from: classes.dex */
public final class ImageDecoderKt {
    @RequiresApi(28)
    @NotNull
    public static final Bitmap decodeBitmap(@NotNull ImageDecoder.Source source, @NotNull final at.n<? super ImageDecoder, ? super ImageDecoder.ImageInfo, ? super ImageDecoder.Source, Unit> nVar) {
        Bitmap decodeBitmap;
        decodeBitmap = ImageDecoder.decodeBitmap(source, r.a(new ImageDecoder$OnHeaderDecodedListener() { // from class: androidx.core.graphics.ImageDecoderKt$decodeBitmap$1
            public final void onHeaderDecoded(@NotNull ImageDecoder imageDecoder, @NotNull ImageDecoder.ImageInfo imageInfo, @NotNull ImageDecoder.Source source2) {
                nVar.invoke(imageDecoder, imageInfo, source2);
            }
        }));
        return decodeBitmap;
    }

    @RequiresApi(28)
    @NotNull
    public static final Drawable decodeDrawable(@NotNull ImageDecoder.Source source, @NotNull final at.n<? super ImageDecoder, ? super ImageDecoder.ImageInfo, ? super ImageDecoder.Source, Unit> nVar) {
        Drawable decodeDrawable;
        decodeDrawable = ImageDecoder.decodeDrawable(source, r.a(new ImageDecoder$OnHeaderDecodedListener() { // from class: androidx.core.graphics.ImageDecoderKt$decodeDrawable$1
            public final void onHeaderDecoded(@NotNull ImageDecoder imageDecoder, @NotNull ImageDecoder.ImageInfo imageInfo, @NotNull ImageDecoder.Source source2) {
                nVar.invoke(imageDecoder, imageInfo, source2);
            }
        }));
        return decodeDrawable;
    }
}
