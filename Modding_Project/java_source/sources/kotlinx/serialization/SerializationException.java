package kotlinx.serialization;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: SerializationExceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public class SerializationException extends IllegalArgumentException {
    public SerializationException() {
    }

    public SerializationException(@Nullable String str) {
        super(str);
    }

    public SerializationException(@Nullable String str, @Nullable Throwable th2) {
        super(str, th2);
    }
}
