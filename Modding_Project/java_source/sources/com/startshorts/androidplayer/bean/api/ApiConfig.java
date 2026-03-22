package com.startshorts.androidplayer.bean.api;

import fu.e;
import fu.h;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okhttp3.ConnectionPool;
import okhttp3.Dns;
import okhttp3.EventListener;
import okhttp3.Interceptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApiConfig.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ApiConfig {
    @Nullable
    private String baseUrl;
    @Nullable
    private Cache cache;
    @Nullable
    private List<e.a> callAdapterFactories;
    @Nullable
    private ConnectionPool connectionPool;
    @Nullable
    private List<h.a> converterFactories;
    @Nullable
    private Dns dns;
    private boolean isAttributionService;
    @Nullable
    private Interceptor networkInterceptor;
    @Nullable
    private EventListener.Factory okHttpEventListener;
    @Nullable
    private List<Interceptor> okHttpInterceptors;
    private long connectTimeout = -1;
    private long readTimeout = -1;
    private long writeTimeout = -1;

    @NotNull
    public final ApiConfig addCallAdapter(@NotNull e.a factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (this.callAdapterFactories == null) {
            this.callAdapterFactories = new ArrayList();
        }
        List<e.a> list = this.callAdapterFactories;
        if (list != null) {
            list.add(factory);
        }
        return this;
    }

    @NotNull
    public final ApiConfig addConverter(@NotNull h.a factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        if (this.converterFactories == null) {
            this.converterFactories = new ArrayList();
        }
        List<h.a> list = this.converterFactories;
        if (list != null) {
            list.add(factory);
        }
        return this;
    }

    @NotNull
    public final ApiConfig addOkHttpInterceptor(@Nullable Interceptor interceptor) {
        if (interceptor != null) {
            if (this.okHttpInterceptors == null) {
                this.okHttpInterceptors = new ArrayList();
            }
            List<Interceptor> list = this.okHttpInterceptors;
            if (list != null) {
                list.add(interceptor);
            }
        }
        return this;
    }

    @Nullable
    public final String getBaseUrl() {
        return this.baseUrl;
    }

    @Nullable
    public final Cache getCache() {
        return this.cache;
    }

    @Nullable
    public final List<e.a> getCallAdapterFactories() {
        return this.callAdapterFactories;
    }

    public final long getConnectTimeout() {
        return this.connectTimeout;
    }

    @Nullable
    public final ConnectionPool getConnectionPool() {
        return this.connectionPool;
    }

    @Nullable
    public final List<h.a> getConverterFactories() {
        return this.converterFactories;
    }

    @Nullable
    public final Dns getDns() {
        return this.dns;
    }

    @Nullable
    public final Interceptor getNetworkInterceptor() {
        return this.networkInterceptor;
    }

    @Nullable
    public final EventListener.Factory getOkHttpEventListener() {
        return this.okHttpEventListener;
    }

    @Nullable
    public final List<Interceptor> getOkHttpInterceptors() {
        return this.okHttpInterceptors;
    }

    public final long getReadTimeout() {
        return this.readTimeout;
    }

    public final long getWriteTimeout() {
        return this.writeTimeout;
    }

    public final boolean isAttributionService() {
        return this.isAttributionService;
    }

    public final void setAttributionService(boolean z10) {
        this.isAttributionService = z10;
    }

    public final void setBaseUrl(@Nullable String str) {
        this.baseUrl = str;
    }

    public final void setCache(@Nullable Cache cache) {
        this.cache = cache;
    }

    public final void setConnectTimeout(long j10) {
        this.connectTimeout = j10;
    }

    public final void setConnectionPool(@Nullable ConnectionPool connectionPool) {
        this.connectionPool = connectionPool;
    }

    public final void setDns(@Nullable Dns dns) {
        this.dns = dns;
    }

    public final void setNetworkInterceptor(@Nullable Interceptor interceptor) {
        this.networkInterceptor = interceptor;
    }

    public final void setOkHttpEventListener(@Nullable EventListener.Factory factory) {
        this.okHttpEventListener = factory;
    }

    public final void setReadTimeout(long j10) {
        this.readTimeout = j10;
    }

    public final void setWriteTimeout(long j10) {
        this.writeTimeout = j10;
    }

    @NotNull
    public String toString() {
        return "ApiConfig(baseUrl=" + this.baseUrl + ", connectTimeout=" + this.connectTimeout + ", readTimeout=" + this.readTimeout + ", writeTimeout=" + this.writeTimeout + ", okHttpEventListener=" + this.okHttpEventListener + ", okHttpInterceptors=" + this.okHttpInterceptors + ", networkInterceptor=" + this.networkInterceptor + ", converterFactories=" + this.converterFactories + ", callAdapterFactories=" + this.callAdapterFactories + ", connectionPool=" + this.connectionPool + ", dns=" + this.dns + ')';
    }
}
