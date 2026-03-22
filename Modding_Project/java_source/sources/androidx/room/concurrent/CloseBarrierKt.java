package androidx.room.concurrent;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CloseBarrier.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CloseBarrierKt {
    public static final void ifNotClosed(@NotNull CloseBarrier closeBarrier, @NotNull Function0<Unit> action) {
        Intrinsics.checkNotNullParameter(closeBarrier, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        if (!closeBarrier.block$room_runtime()) {
            return;
        }
        try {
            action.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            closeBarrier.unblock$room_runtime();
            InlineMarker.finallyEnd(1);
        }
    }
}
