package com.unity3d.ads.core.data.datasource;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.manager.StorageManager;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.datastore.ByteStringStoreKt;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import com.unity3d.services.core.device.Storage;
import com.unity3d.services.core.device.StorageManager;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidLegacyConfigStoreDataSource.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidLegacyConfigStoreDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidLegacyConfigStoreDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource\n+ 2 ByteStringStoreKt.kt\ncom/unity3d/ads/datastore/ByteStringStoreKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n10#2:43\n1#3:44\n*S KotlinDebug\n*F\n+ 1 AndroidLegacyConfigStoreDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource\n*L\n26#1:43\n26#1:44\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidLegacyConfigStoreDataSource implements ByteStringDataSource {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String KEY_CONFIGURATION_STORE = "configuration.store";
    @NotNull
    private final StorageManager storageManager;

    /* compiled from: AndroidLegacyConfigStoreDataSource.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AndroidLegacyConfigStoreDataSource(@NotNull StorageManager storageManager) {
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        this.storageManager = storageManager;
    }

    @Override // com.unity3d.ads.core.data.datasource.ByteStringDataSource
    @Nullable
    public Object get(@NotNull c<? super ByteStringStoreOuterClass.ByteStringStore> cVar) {
        String str;
        Object d10;
        ByteString byteString;
        Object obj = this.storageManager.getStorage(StorageManager.StorageType.PRIVATE).get(KEY_CONFIGURATION_STORE);
        ByteString byteString2 = null;
        if (obj instanceof String) {
            str = (String) obj;
        } else {
            str = null;
        }
        try {
            Result.a aVar = Result.f60901b;
            if (str != null) {
                byteString = ProtobufExtensionsKt.fromBase64(str, true);
            } else {
                byteString = null;
            }
            d10 = Result.d(byteString);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            d10 = Result.d(f.a(th2));
        }
        if (!Result.i(d10)) {
            byteString2 = d10;
        }
        ByteString EMPTY = byteString2;
        ByteStringStoreKt.Dsl.Companion companion = ByteStringStoreKt.Dsl.Companion;
        ByteStringStoreOuterClass.ByteStringStore.Builder newBuilder = ByteStringStoreOuterClass.ByteStringStore.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        ByteStringStoreKt.Dsl _create = companion._create(newBuilder);
        if (EMPTY == null) {
            EMPTY = ByteString.EMPTY;
            Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
        }
        _create.setData(EMPTY);
        return _create._build();
    }

    @Override // com.unity3d.ads.core.data.datasource.ByteStringDataSource
    @Nullable
    public Object set(@NotNull ByteString byteString, @NotNull c<? super Unit> cVar) {
        Storage storage = this.storageManager.getStorage(StorageManager.StorageType.PRIVATE);
        storage.set(KEY_CONFIGURATION_STORE, ProtobufExtensionsKt.toBase64(byteString, true));
        storage.writeStorage();
        return Unit.f60915a;
    }
}
