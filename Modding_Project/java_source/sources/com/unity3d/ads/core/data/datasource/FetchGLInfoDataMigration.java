package com.unity3d.ads.core.data.datasource;

import androidx.datastore.core.DataMigration;
import com.google.protobuf.ByteString;
import com.unity3d.ads.core.domain.GetOpenGLRendererInfo;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: FetchGLInfoDataMigration.kt */
@Metadata
/* loaded from: classes7.dex */
public final class FetchGLInfoDataMigration implements DataMigration<ByteStringStoreOuterClass.ByteStringStore> {
    @NotNull
    private final GetOpenGLRendererInfo getOpenGLRendererInfo;

    public FetchGLInfoDataMigration(@NotNull GetOpenGLRendererInfo getOpenGLRendererInfo) {
        Intrinsics.checkNotNullParameter(getOpenGLRendererInfo, "getOpenGLRendererInfo");
        this.getOpenGLRendererInfo = getOpenGLRendererInfo;
    }

    private final ByteString gatherOpenGLRendererInfo() {
        return this.getOpenGLRendererInfo.invoke();
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
        ByteString byteString;
        try {
            byteString = gatherOpenGLRendererInfo();
        } catch (Exception unused) {
            byteString = ByteString.EMPTY;
            Intrinsics.checkNotNullExpressionValue(byteString, "{\n            ByteString.EMPTY\n        }");
        }
        ByteStringStoreOuterClass.ByteStringStore build = ByteStringStoreOuterClass.ByteStringStore.newBuilder().setData(byteString).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n           …rer)\n            .build()");
        return build;
    }

    @Nullable
    /* renamed from: shouldMigrate  reason: avoid collision after fix types in other method */
    public Object shouldMigrate2(@NotNull ByteStringStoreOuterClass.ByteStringStore byteStringStore, @NotNull c<? super Boolean> cVar) {
        return kotlin.coroutines.jvm.internal.a.a(byteStringStore.getData().isEmpty());
    }
}
