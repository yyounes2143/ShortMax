package androidx.datastore.core;

import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Serializer.kt */
@Metadata
/* loaded from: classes2.dex */
public interface Serializer<T> {
    T getDefaultValue();

    @Nullable
    Object readFrom(@NotNull InputStream inputStream, @NotNull c<? super T> cVar);

    @Nullable
    Object writeTo(T t10, @NotNull OutputStream outputStream, @NotNull c<? super Unit> cVar);
}
