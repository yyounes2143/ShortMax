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
/* compiled from: OreoDecoder.kt */
@Metadata
@TargetApi(26)
/* loaded from: classes3.dex */
public final class c extends b {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final f f3047h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull i bitmapPool, @NotNull Pools.Pool<ByteBuffer> decodeBuffers, @NotNull f platformDecoderOptions) {
        super(bitmapPool, decodeBuffers, platformDecoderOptions);
        Intrinsics.checkNotNullParameter(bitmapPool, "bitmapPool");
        Intrinsics.checkNotNullParameter(decodeBuffers, "decodeBuffers");
        Intrinsics.checkNotNullParameter(platformDecoderOptions, "platformDecoderOptions");
        this.f3047h = platformDecoderOptions;
    }

    @Override // c4.b
    public int d(int i10, int i11, @NotNull BitmapFactory.Options options) {
        Bitmap.Config config;
        Intrinsics.checkNotNullParameter(options, "options");
        config = options.outConfig;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        return com.facebook.imageutils.d.i(i10, i11, config);
    }
}
