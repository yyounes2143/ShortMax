package com.unity3d.ads.core.data.datasource;

import androidx.datastore.core.DataStore;
import com.google.protobuf.ByteString;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidByteStringDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidByteStringDataSource implements ByteStringDataSource {
    @NotNull
    private final DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore;

    public AndroidByteStringDataSource(@NotNull DataStore<ByteStringStoreOuterClass.ByteStringStore> dataStore) {
        Intrinsics.checkNotNullParameter(dataStore, "dataStore");
        this.dataStore = dataStore;
    }

    @Override // com.unity3d.ads.core.data.datasource.ByteStringDataSource
    @Nullable
    public Object get(@NotNull c<? super ByteStringStoreOuterClass.ByteStringStore> cVar) {
        return kotlinx.coroutines.flow.c.y(kotlinx.coroutines.flow.c.i(this.dataStore.getData(), new AndroidByteStringDataSource$get$2(null)), cVar);
    }

    @Override // com.unity3d.ads.core.data.datasource.ByteStringDataSource
    @Nullable
    public Object set(@NotNull ByteString byteString, @NotNull c<? super Unit> cVar) {
        Object updateData = this.dataStore.updateData(new AndroidByteStringDataSource$set$2(byteString, null), cVar);
        if (updateData == kotlin.coroutines.intrinsics.a.f()) {
            return updateData;
        }
        return Unit.f60915a;
    }
}
