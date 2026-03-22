package androidx.room.concurrent;

import androidx.annotation.RestrictTo;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Atomics.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public final class AtomicsKt {
    @NotNull
    public static final Void loop(@NotNull AtomicInteger atomicInteger, @NotNull Function1<? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(atomicInteger, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        while (true) {
            action.invoke(Integer.valueOf(atomicInteger.get()));
        }
    }
}
