package androidx.room.coroutines;

import gt.f;
import gt.g0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RunBlockingUninterruptible.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class RunBlockingUninterruptible_androidKt {
    public static final <T> T runBlockingUninterruptible(@NotNull Function2<? super g0, ? super rs.c<? super T>, ? extends Object> block) {
        Object b10;
        Intrinsics.checkNotNullParameter(block, "block");
        Thread.interrupted();
        b10 = f.b(null, new RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1(block, null), 1, null);
        return (T) b10;
    }
}
