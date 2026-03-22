package okhttp3.logging;

import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
/* compiled from: utf8.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Utf8Kt {
    public static final boolean a(@NotNull Buffer buffer) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        try {
            Buffer buffer2 = new Buffer();
            buffer.copyTo(buffer2, 0L, e.k(buffer.size(), 64L));
            for (int i10 = 0; i10 < 16; i10++) {
                if (!buffer2.exhausted()) {
                    int readUtf8CodePoint = buffer2.readUtf8CodePoint();
                    if (Character.isISOControl(readUtf8CodePoint) && !Character.isWhitespace(readUtf8CodePoint)) {
                        return false;
                    }
                } else {
                    return true;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
