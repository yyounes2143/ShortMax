package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlinx.serialization.encoding.Decoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonDecoder.kt */
@Metadata
/* loaded from: classes8.dex */
public interface f extends Decoder, kotlinx.serialization.encoding.c {
    @NotNull
    a a();

    @NotNull
    JsonElement b();
}
