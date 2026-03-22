package androidx.credentials.exceptions.domerrors;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DomError.kt */
@Metadata
/* loaded from: classes.dex */
public abstract class DomError {
    @NotNull
    private final String type;

    public DomError(@NotNull String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting(otherwise = 3)
    @NotNull
    public String getType() {
        return this.type;
    }
}
