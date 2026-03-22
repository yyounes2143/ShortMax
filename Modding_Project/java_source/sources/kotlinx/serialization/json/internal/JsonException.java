package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.SerializationException;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonExceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public class JsonException extends SerializationException {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonException(@NotNull String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
