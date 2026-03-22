package androidx.core.util;

import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformConsumer.kt */
@RequiresApi(24)
@Metadata
/* loaded from: classes.dex */
public final class ConsumerKt {
    @RequiresApi(24)
    @NotNull
    public static final <T> java.util.function.Consumer<T> asConsumer(@NotNull rs.c<? super T> cVar) {
        return new ContinuationConsumer(cVar);
    }
}
