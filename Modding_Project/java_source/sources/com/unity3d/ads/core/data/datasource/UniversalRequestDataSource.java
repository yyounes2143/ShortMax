package com.unity3d.ads.core.data.datasource;

import androidx.datastore.core.DataStore;
import com.google.protobuf.ByteString;
import com.unity3d.ads.datastore.UniversalRequestStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: UniversalRequestDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UniversalRequestDataSource {
    @NotNull
    private final DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> universalRequestStore;

    public UniversalRequestDataSource(@NotNull DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> universalRequestStore) {
        Intrinsics.checkNotNullParameter(universalRequestStore, "universalRequestStore");
        this.universalRequestStore = universalRequestStore;
    }

    @Nullable
    public final Object get(@NotNull c<? super UniversalRequestStoreOuterClass.UniversalRequestStore> cVar) {
        return kotlinx.coroutines.flow.c.y(kotlinx.coroutines.flow.c.i(this.universalRequestStore.getData(), new UniversalRequestDataSource$get$2(null)), cVar);
    }

    @Nullable
    public final Object remove(@NotNull String str, @NotNull c<? super Unit> cVar) {
        Object updateData = this.universalRequestStore.updateData(new UniversalRequestDataSource$remove$2(str, null), cVar);
        if (updateData == kotlin.coroutines.intrinsics.a.f()) {
            return updateData;
        }
        return Unit.f60915a;
    }

    @Nullable
    public final Object set(@NotNull String str, @NotNull ByteString byteString, @NotNull c<? super Unit> cVar) {
        Object updateData = this.universalRequestStore.updateData(new UniversalRequestDataSource$set$2(str, byteString, null), cVar);
        if (updateData == kotlin.coroutines.intrinsics.a.f()) {
            return updateData;
        }
        return Unit.f60915a;
    }
}
