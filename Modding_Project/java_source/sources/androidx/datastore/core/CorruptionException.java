package androidx.datastore.core;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CorruptionException.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CorruptionException extends IOException {
    public /* synthetic */ CorruptionException(String str, Throwable th2, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i10 & 2) != 0 ? null : th2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CorruptionException(@NotNull String message, @Nullable Throwable th2) {
        super(message, th2);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
