package androidx.savedstate.serialization;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: SavedStateDecoder.android.kt */
@Metadata
/* loaded from: classes2.dex */
final class EmptyArrayDecoder extends kotlinx.serialization.encoding.a {
    @NotNull
    public static final EmptyArrayDecoder INSTANCE = new EmptyArrayDecoder();
    @NotNull
    private static final xt.a serializersModule = xt.b.a();

    private EmptyArrayDecoder() {
    }

    @Override // kotlinx.serialization.encoding.c
    public int decodeElementIndex(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return -1;
    }

    @Override // kotlinx.serialization.encoding.Decoder, kotlinx.serialization.encoding.c
    @NotNull
    public xt.a getSerializersModule() {
        return serializersModule;
    }
}
