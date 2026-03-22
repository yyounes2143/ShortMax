package androidx.compose.runtime.tooling;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: SourceInformation.kt */
@Metadata
/* loaded from: classes.dex */
final class ParseException extends Exception {
    @NotNull
    private final String message;

    public ParseException(@NotNull String str) {
        super(str);
        this.message = str;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getMessage() {
        return this.message;
    }
}
