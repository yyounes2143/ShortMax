package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: PreservingByteStringPreferenceMigration.kt */
@Metadata
/* loaded from: classes7.dex */
public final class PreservingByteStringPreferenceMigration implements DataMigration<ByteStringStoreOuterClass.ByteStringStore> {
    @NotNull
    private final Context context;
    @NotNull
    private final GetByteStringData getByteStringData;
    @NotNull
    private final String key;
    @NotNull
    private final String name;

    public PreservingByteStringPreferenceMigration(@NotNull Context context, @NotNull String name, @NotNull String key, @NotNull GetByteStringData getByteStringData) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(getByteStringData, "getByteStringData");
        this.context = context;
        this.name = name;
        this.key = key;
        this.getByteStringData = getByteStringData;
    }

    @Override // androidx.datastore.core.DataMigration
    @Nullable
    public Object cleanUp(@NotNull c<? super Unit> cVar) {
        return Unit.f60915a;
    }

    @Override // androidx.datastore.core.DataMigration
    public /* bridge */ /* synthetic */ Object shouldMigrate(ByteStringStoreOuterClass.ByteStringStore byteStringStore, c cVar) {
        return shouldMigrate2(byteStringStore, (c<? super Boolean>) cVar);
    }

    @Override // androidx.datastore.core.DataMigration
    @Nullable
    public Object migrate(@NotNull ByteStringStoreOuterClass.ByteStringStore byteStringStore, @NotNull c<? super ByteStringStoreOuterClass.ByteStringStore> cVar) {
        String string;
        if (!byteStringStore.getData().isEmpty() || (string = this.context.getSharedPreferences(this.name, 0).getString(this.key, null)) == null || string.length() == 0) {
            return byteStringStore;
        }
        ByteStringStoreOuterClass.ByteStringStore build = ByteStringStoreOuterClass.ByteStringStore.newBuilder().setData(this.getByteStringData.invoke(string)).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n           …                 .build()");
        return build;
    }

    @Nullable
    /* renamed from: shouldMigrate  reason: avoid collision after fix types in other method */
    public Object shouldMigrate2(@NotNull ByteStringStoreOuterClass.ByteStringStore byteStringStore, @NotNull c<? super Boolean> cVar) {
        return kotlin.coroutines.jvm.internal.a.a(byteStringStore.getData().isEmpty());
    }
}
