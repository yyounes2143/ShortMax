package androidx.savedstate.serialization.serializers;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: BuiltInSerializer.kt */
@Metadata
/* loaded from: classes2.dex */
public final class BuiltInSerializerKt {
    @NotNull
    public static final String decoderErrorMessage(@NotNull String serialName, @NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        return "Cannot deserialize " + serialName + " with '" + Reflection.getOrCreateKotlinClass(decoder.getClass()).getSimpleName() + "'. This serializer can only be used with SavedStateDecoder. Use 'decodeFromSavedState' instead.";
    }

    @NotNull
    public static final String encoderErrorMessage(@NotNull String serialName, @NotNull Encoder encoder) {
        Intrinsics.checkNotNullParameter(serialName, "serialName");
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        return "Cannot serialize " + serialName + " with '" + Reflection.getOrCreateKotlinClass(encoder.getClass()).getSimpleName() + "'. This serializer can only be used with SavedStateEncoder. Use 'encodeToSavedState' instead.";
    }
}
