package androidx.core.util;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidXConsumer.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidXConsumerKt {
    @NotNull
    public static final <T> Consumer<T> asAndroidXConsumer(@NotNull rs.c<? super T> cVar) {
        return new AndroidXContinuationConsumer(cVar);
    }
}
