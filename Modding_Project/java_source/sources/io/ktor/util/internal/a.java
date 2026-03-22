package io.ktor.util.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ExceptionUtilsJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    public static final void a(@NotNull Throwable th2, @NotNull Throwable cause) {
        Intrinsics.checkNotNullParameter(th2, "<this>");
        Intrinsics.checkNotNullParameter(cause, "cause");
        th2.initCause(cause);
    }
}
