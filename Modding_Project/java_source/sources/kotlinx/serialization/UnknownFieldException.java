package kotlinx.serialization;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: SerializationExceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public final class UnknownFieldException extends SerializationException {
    public UnknownFieldException(@Nullable String str) {
        super(str);
    }

    public UnknownFieldException(int i10) {
        this("An unknown field for index " + i10);
    }
}
