package com.applovin.shadow.okhttp3.internal.proxy;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NullProxySelector.kt */
@Metadata
@SourceDebugExtension({"SMAP\nNullProxySelector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NullProxySelector.kt\nokhttp3/internal/proxy/NullProxySelector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"})
/* loaded from: classes2.dex */
public final class NullProxySelector extends ProxySelector {
    @NotNull
    public static final NullProxySelector INSTANCE = new NullProxySelector();

    private NullProxySelector() {
    }

    @Override // java.net.ProxySelector
    @NotNull
    public List<Proxy> select(@Nullable URI uri) {
        if (uri != null) {
            return CollectionsKt.e(Proxy.NO_PROXY);
        }
        throw new IllegalArgumentException("uri must not be null");
    }

    @Override // java.net.ProxySelector
    public void connectFailed(@Nullable URI uri, @Nullable SocketAddress socketAddress, @Nullable IOException iOException) {
    }
}
