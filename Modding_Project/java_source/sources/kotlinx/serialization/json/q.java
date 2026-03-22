package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonEncoder.kt */
@Metadata
/* loaded from: classes8.dex */
public interface q extends Encoder, kotlinx.serialization.encoding.d {
    @NotNull
    a a();

    void b(@NotNull JsonElement jsonElement);
}
