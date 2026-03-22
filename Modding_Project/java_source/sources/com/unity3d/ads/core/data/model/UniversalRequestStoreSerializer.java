package com.unity3d.ads.core.data.model;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import com.google.protobuf.InvalidProtocolBufferException;
import com.unity3d.ads.datastore.UniversalRequestStoreOuterClass;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: UniversalRequestStoreSerializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UniversalRequestStoreSerializer implements Serializer<UniversalRequestStoreOuterClass.UniversalRequestStore> {
    @NotNull
    private final UniversalRequestStoreOuterClass.UniversalRequestStore defaultValue;

    public UniversalRequestStoreSerializer() {
        UniversalRequestStoreOuterClass.UniversalRequestStore defaultInstance = UniversalRequestStoreOuterClass.UniversalRequestStore.getDefaultInstance();
        Intrinsics.checkNotNullExpressionValue(defaultInstance, "getDefaultInstance()");
        this.defaultValue = defaultInstance;
    }

    @Override // androidx.datastore.core.Serializer
    @Nullable
    public Object readFrom(@NotNull InputStream inputStream, @NotNull c<? super UniversalRequestStoreOuterClass.UniversalRequestStore> cVar) {
        try {
            UniversalRequestStoreOuterClass.UniversalRequestStore parseFrom = UniversalRequestStoreOuterClass.UniversalRequestStore.parseFrom(inputStream);
            Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(input)");
            return parseFrom;
        } catch (InvalidProtocolBufferException e10) {
            throw new CorruptionException("Cannot read proto.", e10);
        }
    }

    @Override // androidx.datastore.core.Serializer
    public /* bridge */ /* synthetic */ Object writeTo(UniversalRequestStoreOuterClass.UniversalRequestStore universalRequestStore, OutputStream outputStream, c cVar) {
        return writeTo2(universalRequestStore, outputStream, (c<? super Unit>) cVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.datastore.core.Serializer
    @NotNull
    public UniversalRequestStoreOuterClass.UniversalRequestStore getDefaultValue() {
        return this.defaultValue;
    }

    @Nullable
    /* renamed from: writeTo  reason: avoid collision after fix types in other method */
    public Object writeTo2(@NotNull UniversalRequestStoreOuterClass.UniversalRequestStore universalRequestStore, @NotNull OutputStream outputStream, @NotNull c<? super Unit> cVar) {
        universalRequestStore.writeTo(outputStream);
        return Unit.f60915a;
    }
}
