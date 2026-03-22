package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonExceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public final class JsonEncodingException extends JsonException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonEncodingException(@NotNull String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
