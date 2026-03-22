package st;

import kotlin.Metadata;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: KSerializer.kt */
@Metadata
/* loaded from: classes8.dex */
public interface l<T> {
    @NotNull
    SerialDescriptor getDescriptor();

    void serialize(@NotNull Encoder encoder, T t10);
}
