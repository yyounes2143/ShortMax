package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.d;
import org.jetbrains.annotations.NotNull;
/* compiled from: Closeable.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CloseableKt {
    public static final <T extends Closeable, R> R use(@NotNull T t10, @NotNull Function1<? super T, ? extends R> block) {
        Intrinsics.checkNotNullParameter(t10, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            R invoke = block.invoke(t10);
            InlineMarker.finallyStart(1);
            try {
                t10.close();
                th = null;
            } catch (Throwable th2) {
                th = th2;
            }
            if (th == null) {
                InlineMarker.finallyEnd(1);
                return invoke;
            }
            throw th;
        } catch (Throwable th3) {
            InlineMarker.finallyStart(1);
            try {
                t10.close();
            } catch (Throwable th4) {
                d.a(th3, th4);
            }
            throw th3;
        }
    }
}
