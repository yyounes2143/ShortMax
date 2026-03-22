package com.unity3d.ads.core.data.model;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import com.google.protobuf.InvalidProtocolBufferException;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ByteStringSerializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ByteStringSerializer implements Serializer<ByteStringStoreOuterClass.ByteStringStore> {
    @NotNull
    private final ByteStringStoreOuterClass.ByteStringStore defaultValue;

    public ByteStringSerializer() {
        ByteStringStoreOuterClass.ByteStringStore defaultInstance = ByteStringStoreOuterClass.ByteStringStore.getDefaultInstance();
        Intrinsics.checkNotNullExpressionValue(defaultInstance, "getDefaultInstance()");
        this.defaultValue = defaultInstance;
    }

    @Override // androidx.datastore.core.Serializer
    @Nullable
    public Object readFrom(@NotNull InputStream inputStream, @NotNull c<? super ByteStringStoreOuterClass.ByteStringStore> cVar) {
        try {
            ByteStringStoreOuterClass.ByteStringStore parseFrom = ByteStringStoreOuterClass.ByteStringStore.parseFrom(inputStream);
            Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(input)");
            return parseFrom;
        } catch (InvalidProtocolBufferException e10) {
            throw new CorruptionException("Cannot read proto.", e10);
        }
    }

    @Override // androidx.datastore.core.Serializer
    public /* bridge */ /* synthetic */ Object writeTo(ByteStringStoreOuterClass.ByteStringStore byteStringStore, OutputStream outputStream, c cVar) {
        return writeTo2(byteStringStore, outputStream, (c<? super Unit>) cVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.datastore.core.Serializer
    @NotNull
    public ByteStringStoreOuterClass.ByteStringStore getDefaultValue() {
        return this.defaultValue;
    }

    @Nullable
    /* renamed from: writeTo  reason: avoid collision after fix types in other method */
    public Object writeTo2(@NotNull ByteStringStoreOuterClass.ByteStringStore byteStringStore, @NotNull OutputStream outputStream, @NotNull c<? super Unit> cVar) {
        byteStringStore.writeTo(outputStream);
        return Unit.f60915a;
    }
}
