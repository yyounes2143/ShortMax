package com.unity3d.ads.core.data.datasource;

import com.google.protobuf.ByteString;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ByteStringDataSource.kt */
@Metadata
/* loaded from: classes7.dex */
public interface ByteStringDataSource {
    @Nullable
    Object get(@NotNull c<? super ByteStringStoreOuterClass.ByteStringStore> cVar);

    @Nullable
    Object set(@NotNull ByteString byteString, @NotNull c<? super Unit> cVar);
}
