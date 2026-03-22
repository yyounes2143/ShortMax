package androidx.datastore.core.okio;

import kotlin.Metadata;
import kotlin.Unit;
import okio.BufferedSink;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: OkioSerializer.kt */
@Metadata
/* loaded from: classes2.dex */
public interface OkioSerializer<T> {
    T getDefaultValue();

    @Nullable
    Object readFrom(@NotNull BufferedSource bufferedSource, @NotNull c<? super T> cVar);

    @Nullable
    Object writeTo(T t10, @NotNull BufferedSink bufferedSink, @NotNull c<? super Unit> cVar);
}
