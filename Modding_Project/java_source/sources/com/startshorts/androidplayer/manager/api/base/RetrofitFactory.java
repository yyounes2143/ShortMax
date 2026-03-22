package com.startshorts.androidplayer.manager.api.base;

import com.startshorts.androidplayer.bean.api.ApiConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.base.p;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import fu.d0;
import fu.e;
import fu.h;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Cache;
import okhttp3.Call;
import okhttp3.ConnectionPool;
import okhttp3.ConnectionSpec;
import okhttp3.Dispatcher;
import okhttp3.Dns;
import okhttp3.EventListener;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RetrofitFactory.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRetrofitFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetrofitFactory.kt\ncom/startshorts/androidplayer/manager/api/base/RetrofitFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n1863#2,2:153\n1863#2,2:155\n1863#2,2:157\n*S KotlinDebug\n*F\n+ 1 RetrofitFactory.kt\ncom/startshorts/androidplayer/manager/api/base/RetrofitFactory\n*L\n85#1:153,2\n114#1:155,2\n117#1:157,2\n*E\n"})
/* loaded from: classes6.dex */
public final class RetrofitFactory {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final RetrofitFactory f41776a = new RetrofitFactory();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static OkHttpClient f41777b;

    /* compiled from: RetrofitFactory.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a extends ProxySelector {
        a() {
        }

        @Override // java.net.ProxySelector
        public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
            try {
                ProxySelector proxySelector = ProxySelector.getDefault();
                if (proxySelector != null) {
                    proxySelector.connectFailed(uri, socketAddress, iOException);
                }
            } catch (Exception unused) {
            }
        }

        @Override // java.net.ProxySelector
        public List<Proxy> select(URI uri) {
            List<Proxy> select;
            try {
                ProxySelector proxySelector = ProxySelector.getDefault();
                if (proxySelector == null || (select = proxySelector.select(uri)) == null) {
                    return CollectionsKt.e(Proxy.NO_PROXY);
                }
                return select;
            } catch (Exception unused) {
                return CollectionsKt.e(Proxy.NO_PROXY);
            }
        }
    }

    /* compiled from: RetrofitFactory.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b extends EventListener {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ApiConfig f41778c;

        b(ApiConfig apiConfig) {
            this.f41778c = apiConfig;
        }

        @Override // okhttp3.EventListener
        public void f(Call call) {
            String str;
            Dispatcher dispatcher;
            Intrinsics.checkNotNullParameter(call, "call");
            super.f(call);
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            String str2 = "";
            if (!this.f41778c.isAttributionService()) {
                str = "";
            } else {
                str = "Attribution ";
            }
            sb2.append(str);
            sb2.append("[CallStart] 调用}");
            logger.h("HttpLoggingInterceptor", sb2.toString());
            RetrofitFactory retrofitFactory = RetrofitFactory.f41776a;
            OkHttpClient okHttpClient = RetrofitFactory.f41777b;
            if (okHttpClient != null) {
                dispatcher = okHttpClient.p();
            } else {
                dispatcher = null;
            }
            p.a aVar = p.f41802a;
            List<String> d10 = retrofitFactory.d(dispatcher, aVar.c(), this.f41778c.isAttributionService());
            if (!d10.isEmpty()) {
                StringBuilder sb3 = new StringBuilder();
                if (this.f41778c.isAttributionService()) {
                    str2 = "Attribution ";
                }
                sb3.append(str2);
                sb3.append("[CallStart] 当前 ");
                sb3.append(aVar.c());
                sb3.append(" 的排队请求: ");
                sb3.append(CollectionsKt.A0(d10, null, null, null, 0, null, null, 63, null));
                logger.h("HttpLoggingInterceptor", sb3.toString());
            }
        }
    }

    private RetrofitFactory() {
    }

    @NotNull
    public final kotlinx.coroutines.r b() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "cancelAllRequests", false, new RetrofitFactory$cancelAllRequests$1(null), 2, null);
    }

    public final synchronized <T> T c(@NotNull ApiConfig config, @NotNull Class<T> service) {
        d0.b bVar;
        try {
            Intrinsics.checkNotNullParameter(config, "config");
            Intrinsics.checkNotNullParameter(service, "service");
            OkHttpClient.Builder builder = new OkHttpClient.Builder();
            builder.U(new a());
            EventListener.Factory okHttpEventListener = config.getOkHttpEventListener();
            if (okHttpEventListener != null) {
                builder.l(okHttpEventListener);
            }
            if (id.a.f53392a.c()) {
                builder.k(new b(config));
            }
            if (config.getWriteTimeout() != -1) {
                builder.Y(config.getWriteTimeout(), TimeUnit.MILLISECONDS);
            }
            if (config.getConnectTimeout() != -1) {
                builder.f(config.getConnectTimeout(), TimeUnit.MILLISECONDS);
            }
            if (config.getReadTimeout() != -1) {
                builder.V(config.getReadTimeout(), TimeUnit.MILLISECONDS);
            }
            List<Interceptor> okHttpInterceptors = config.getOkHttpInterceptors();
            if (okHttpInterceptors != null) {
                for (Interceptor interceptor : okHttpInterceptors) {
                    builder.a(interceptor);
                }
            }
            Interceptor networkInterceptor = config.getNetworkInterceptor();
            if (networkInterceptor != null) {
                builder.b(networkInterceptor);
            }
            ConnectionPool connectionPool = config.getConnectionPool();
            if (connectionPool != null) {
                builder.g(connectionPool);
            }
            Dns dns = config.getDns();
            if (dns != null) {
                builder.j(dns);
            }
            builder.h(CollectionsKt.q(ConnectionSpec.f63396i, ConnectionSpec.f63397j, ConnectionSpec.f63398k));
            Cache cache = config.getCache();
            if (cache != null) {
                builder.d(cache);
            }
            OkHttpClient c10 = builder.c();
            f41777b = c10;
            Logger.f41511a.h("RetrofitFactory", "OkHttp version(4.12.0)");
            bVar = new d0.b();
            String baseUrl = config.getBaseUrl();
            Intrinsics.checkNotNull(baseUrl);
            bVar.c(baseUrl);
            bVar.g(c10);
            List<h.a> converterFactories = config.getConverterFactories();
            if (converterFactories != null) {
                for (h.a aVar : converterFactories) {
                    bVar.b(aVar);
                }
            }
            List<e.a> callAdapterFactories = config.getCallAdapterFactories();
            if (callAdapterFactories != null) {
                for (e.a aVar2 : callAdapterFactories) {
                    bVar.a(aVar2);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return (T) bVar.e().b(service);
    }

    @NotNull
    public final List<String> d(@Nullable Dispatcher dispatcher, @NotNull String targetHost, boolean z10) {
        String str;
        String str2;
        String str3;
        Intrinsics.checkNotNullParameter(targetHost, "targetHost");
        List<String> synchronizedList = Collections.synchronizedList(new ArrayList());
        if (dispatcher != null) {
            synchronized (dispatcher) {
                try {
                    Logger logger = Logger.f41511a;
                    StringBuilder sb2 = new StringBuilder();
                    if (z10) {
                        str = "Attribution ";
                    } else {
                        str = "";
                    }
                    sb2.append(str);
                    sb2.append("[CallStart] getQueuedUrlsForHost 调用}");
                    logger.h("HttpLoggingInterceptor", sb2.toString());
                    List<Call> j10 = dispatcher.j();
                    StringBuilder sb3 = new StringBuilder();
                    if (z10) {
                        str2 = "Attribution ";
                    } else {
                        str2 = "";
                    }
                    sb3.append(str2);
                    sb3.append("[CallStart] queuedCallSize: ");
                    sb3.append(j10.size());
                    sb3.append("  runningCallSize:");
                    sb3.append(dispatcher.k());
                    logger.h("HttpLoggingInterceptor", sb3.toString());
                    for (Call call : j10) {
                        try {
                            Request request = call.request();
                            Logger logger2 = Logger.f41511a;
                            StringBuilder sb4 = new StringBuilder();
                            if (z10) {
                                str3 = "Attribution ";
                            } else {
                                str3 = "";
                            }
                            sb4.append(str3);
                            sb4.append("[CallStart] queuedCallsUrl: ");
                            sb4.append(request.l());
                            sb4.append('}');
                            logger2.h("HttpLoggingInterceptor", sb4.toString());
                            if (Intrinsics.areEqual(request.l().i(), targetHost)) {
                                synchronizedList.add(request.l().toString());
                            }
                        } catch (Exception unused) {
                        }
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        Intrinsics.checkNotNull(synchronizedList);
        return synchronizedList;
    }
}
