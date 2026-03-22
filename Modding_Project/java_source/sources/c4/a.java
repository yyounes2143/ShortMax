package c4;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.core.util.Pools;
import b4.i;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArtDecoder.kt */
@Metadata
@TargetApi(21)
/* loaded from: classes3.dex */
public final class a extends b {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull i bitmapPool, @NotNull Pools.Pool<ByteBuffer> decodeBuffers, @NotNull f platformDecoderOptions) {
        super(bitmapPool, decodeBuffers, platformDecoderOptions);
        Intrinsics.checkNotNullParameter(bitmapPool, "bitmapPool");
        Intrinsics.checkNotNullParameter(decodeBuffers, "decodeBuffers");
        Intrinsics.checkNotNullParameter(platformDecoderOptions, "platformDecoderOptions");
    }

    @Override // c4.b
    public int d(int i10, int i11, @NotNull BitmapFactory.Options options) {
        Intrinsics.checkNotNullParameter(options, "options");
        Bitmap.Config config = options.inPreferredConfig;
        if (config != null) {
            return com.facebook.imageutils.d.i(i10, i11, config);
        }
        throw new IllegalStateException("Required value was null.");
    }
}
