package ys;

import kotlin.Metadata;
import ms.d;
import org.jetbrains.annotations.Nullable;
/* compiled from: AutoCloseableJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    public static final void a(@Nullable AutoCloseable autoCloseable, @Nullable Throwable th2) {
        if (autoCloseable != null) {
            if (th2 == null) {
                autoCloseable.close();
                return;
            }
            try {
                autoCloseable.close();
            } catch (Throwable th3) {
                d.a(th2, th3);
            }
        }
    }
}
