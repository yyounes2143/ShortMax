package androidx.datastore.core.handlers;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.CorruptionHandler;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ReplaceFileCorruptionHandler.jvm.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ReplaceFileCorruptionHandler<T> implements CorruptionHandler<T> {
    @NotNull
    private final Function1<CorruptionException, T> produceNewData;

    /* JADX WARN: Multi-variable type inference failed */
    public ReplaceFileCorruptionHandler(@NotNull Function1<? super CorruptionException, ? extends T> produceNewData) {
        Intrinsics.checkNotNullParameter(produceNewData, "produceNewData");
        this.produceNewData = produceNewData;
    }

    @Override // androidx.datastore.core.CorruptionHandler
    @Nullable
    public Object handleCorruption(@NotNull CorruptionException corruptionException, @NotNull c<? super T> cVar) throws IOException {
        return this.produceNewData.invoke(corruptionException);
    }
}
