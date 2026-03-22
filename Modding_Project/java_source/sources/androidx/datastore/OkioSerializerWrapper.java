package androidx.datastore;

import androidx.datastore.core.Serializer;
import androidx.datastore.core.okio.OkioSerializer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSink;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: DataStoreDelegate.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class OkioSerializerWrapper<T> implements OkioSerializer<T> {
    @NotNull
    private final Serializer<T> delegate;

    public OkioSerializerWrapper(@NotNull Serializer<T> delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // androidx.datastore.core.okio.OkioSerializer
    public T getDefaultValue() {
        return this.delegate.getDefaultValue();
    }

    @Override // androidx.datastore.core.okio.OkioSerializer
    @Nullable
    public Object readFrom(@NotNull BufferedSource bufferedSource, @NotNull c<? super T> cVar) {
        return this.delegate.readFrom(bufferedSource.inputStream(), cVar);
    }

    @Override // androidx.datastore.core.okio.OkioSerializer
    @Nullable
    public Object writeTo(T t10, @NotNull BufferedSink bufferedSink, @NotNull c<? super Unit> cVar) {
        Object writeTo = this.delegate.writeTo(t10, bufferedSink.outputStream(), cVar);
        if (writeTo == a.f()) {
            return writeTo;
        }
        return Unit.f60915a;
    }
}
