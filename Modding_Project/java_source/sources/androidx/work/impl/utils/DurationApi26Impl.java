package androidx.work.impl.utils;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.time.Duration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DurationApi26.kt */
@RequiresApi(26)
@Metadata
/* loaded from: classes2.dex */
public final class DurationApi26Impl {
    @DoNotInline
    public static final long toMillisCompat(@NotNull Duration duration) {
        Intrinsics.checkNotNullParameter(duration, "<this>");
        return duration.toMillis();
    }
}
