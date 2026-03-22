package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MutexUtils.kt */
@Metadata
/* loaded from: classes2.dex */
public final class MutexUtilsKt {
    public static final <R> R withTryLock(@NotNull qt.a aVar, @Nullable Object obj, @NotNull Function1<? super Boolean, ? extends R> block) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        boolean tryLock = aVar.tryLock(obj);
        try {
            return block.invoke(Boolean.valueOf(tryLock));
        } finally {
            InlineMarker.finallyStart(1);
            if (tryLock) {
                aVar.unlock(obj);
            }
            InlineMarker.finallyEnd(1);
        }
    }

    public static /* synthetic */ Object withTryLock$default(qt.a aVar, Object obj, Function1 block, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            obj = null;
        }
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        boolean tryLock = aVar.tryLock(obj);
        try {
            return block.invoke(Boolean.valueOf(tryLock));
        } finally {
            InlineMarker.finallyStart(1);
            if (tryLock) {
                aVar.unlock(obj);
            }
            InlineMarker.finallyEnd(1);
        }
    }
}
