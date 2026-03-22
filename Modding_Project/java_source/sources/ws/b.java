package ws;

import java.io.Closeable;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: Closeable.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b {
    public static final void a(@Nullable Closeable closeable, @Nullable Throwable th2) {
        if (closeable != null) {
            if (th2 == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th3) {
                ms.d.a(th2, th3);
            }
        }
    }
}
