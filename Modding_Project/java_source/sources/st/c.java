package st;

import kotlin.Metadata;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: KSerializer.kt */
@Metadata
/* loaded from: classes8.dex */
public interface c<T> {
    T deserialize(@NotNull Decoder decoder);

    @NotNull
    SerialDescriptor getDescriptor();
}
