package io.ktor.util.pipeline;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PipelinePhase.kt */
@Metadata
/* loaded from: classes8.dex */
public final class InvalidPhaseException extends Throwable {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InvalidPhaseException(@NotNull String message) {
        super(message);
        Intrinsics.checkNotNullParameter(message, "message");
    }
}
