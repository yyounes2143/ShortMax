package com.unity3d.ads.core.data.model;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import com.google.protobuf.InvalidProtocolBufferException;
import com.unity3d.ads.datastore.WebviewConfigurationStore;
import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: WebViewConfigurationStoreSerializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class WebViewConfigurationStoreSerializer implements Serializer<WebviewConfigurationStore.WebViewConfigurationStore> {
    @NotNull
    private final WebviewConfigurationStore.WebViewConfigurationStore defaultValue;

    public WebViewConfigurationStoreSerializer() {
        WebviewConfigurationStore.WebViewConfigurationStore defaultInstance = WebviewConfigurationStore.WebViewConfigurationStore.getDefaultInstance();
        Intrinsics.checkNotNullExpressionValue(defaultInstance, "getDefaultInstance()");
        this.defaultValue = defaultInstance;
    }

    @Override // androidx.datastore.core.Serializer
    @Nullable
    public Object readFrom(@NotNull InputStream inputStream, @NotNull c<? super WebviewConfigurationStore.WebViewConfigurationStore> cVar) {
        try {
            WebviewConfigurationStore.WebViewConfigurationStore parseFrom = WebviewConfigurationStore.WebViewConfigurationStore.parseFrom(inputStream);
            Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(input)");
            return parseFrom;
        } catch (InvalidProtocolBufferException e10) {
            throw new CorruptionException("Cannot read proto.", e10);
        }
    }

    @Override // androidx.datastore.core.Serializer
    public /* bridge */ /* synthetic */ Object writeTo(WebviewConfigurationStore.WebViewConfigurationStore webViewConfigurationStore, OutputStream outputStream, c cVar) {
        return writeTo2(webViewConfigurationStore, outputStream, (c<? super Unit>) cVar);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.datastore.core.Serializer
    @NotNull
    public WebviewConfigurationStore.WebViewConfigurationStore getDefaultValue() {
        return this.defaultValue;
    }

    @Nullable
    /* renamed from: writeTo  reason: avoid collision after fix types in other method */
    public Object writeTo2(@NotNull WebviewConfigurationStore.WebViewConfigurationStore webViewConfigurationStore, @NotNull OutputStream outputStream, @NotNull c<? super Unit> cVar) {
        webViewConfigurationStore.writeTo(outputStream);
        return Unit.f60915a;
    }
}
