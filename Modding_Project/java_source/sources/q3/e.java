package q3;

import b4.d0;
import b4.i;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformBitmapFactoryProvider.kt */
@Metadata
/* loaded from: classes3.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f65047a = new e();

    private e() {
    }

    @NotNull
    public static final d a(@NotNull d0 poolFactory, @NotNull c4.d platformDecoder, @NotNull t3.a closeableReferenceFactory) {
        Intrinsics.checkNotNullParameter(poolFactory, "poolFactory");
        Intrinsics.checkNotNullParameter(platformDecoder, "platformDecoder");
        Intrinsics.checkNotNullParameter(closeableReferenceFactory, "closeableReferenceFactory");
        i b10 = poolFactory.b();
        Intrinsics.checkNotNullExpressionValue(b10, "getBitmapPool(...)");
        return new a(b10, closeableReferenceFactory);
    }
}
