package c4;

import android.os.Build;
import androidx.core.util.Pools;
import b4.d0;
import b4.i;
import com.facebook.common.memory.DecodeBufferHelper;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformDecoderFactory.kt */
@Metadata
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f3048a = new e();

    private e() {
    }

    @NotNull
    public static final d a(@NotNull d0 poolFactory, boolean z10, boolean z11, @NotNull f platformDecoderOptions) {
        Intrinsics.checkNotNullParameter(poolFactory, "poolFactory");
        Intrinsics.checkNotNullParameter(platformDecoderOptions, "platformDecoderOptions");
        if (Build.VERSION.SDK_INT >= 26) {
            i b10 = poolFactory.b();
            Intrinsics.checkNotNullExpressionValue(b10, "getBitmapPool(...)");
            return new c(b10, b(poolFactory, z11), platformDecoderOptions);
        }
        i b11 = poolFactory.b();
        Intrinsics.checkNotNullExpressionValue(b11, "getBitmapPool(...)");
        return new a(b11, b(poolFactory, z11), platformDecoderOptions);
    }

    @NotNull
    public static final Pools.Pool<ByteBuffer> b(@NotNull d0 poolFactory, boolean z10) {
        Intrinsics.checkNotNullParameter(poolFactory, "poolFactory");
        if (z10) {
            DecodeBufferHelper INSTANCE = DecodeBufferHelper.f15313a;
            Intrinsics.checkNotNullExpressionValue(INSTANCE, "INSTANCE");
            return INSTANCE;
        }
        int e10 = poolFactory.e();
        Pools.SynchronizedPool synchronizedPool = new Pools.SynchronizedPool(e10);
        for (int i10 = 0; i10 < e10; i10++) {
            ByteBuffer allocate = ByteBuffer.allocate(DecodeBufferHelper.c());
            Intrinsics.checkNotNullExpressionValue(allocate, "allocate(...)");
            synchronizedPool.release(allocate);
        }
        return synchronizedPool;
    }
}
