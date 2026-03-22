package io.ktor.client;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import or.d;
import org.jetbrains.annotations.NotNull;
import qr.e;
import yr.a;
import yr.b;
import yr.n;
/* compiled from: HttpClientConfig.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpClientConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientConfig.kt\nio/ktor/client/HttpClientConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1855#2,2:131\n1855#2,2:133\n*S KotlinDebug\n*F\n+ 1 HttpClientConfig.kt\nio/ktor/client/HttpClientConfig\n*L\n104#1:131,2\n105#1:133,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HttpClientConfig<T extends d> {

    /* renamed from: g */
    private boolean f58779g;
    @NotNull

    /* renamed from: a */
    private final Map<a<?>, Function1<HttpClient, Unit>> f58773a = new LinkedHashMap();
    @NotNull

    /* renamed from: b */
    private final Map<a<?>, Function1<Object, Unit>> f58774b = new LinkedHashMap();
    @NotNull

    /* renamed from: c */
    private final Map<String, Function1<HttpClient, Unit>> f58775c = new LinkedHashMap();
    @NotNull

    /* renamed from: d */
    private Function1<? super T, Unit> f58776d = new Function1<T, Unit>() { // from class: io.ktor.client.HttpClientConfig$engineConfig$1
        /* JADX WARN: Incorrect types in method signature: (TT;)V */
        public final void b(@NotNull d dVar) {
            Intrinsics.checkNotNullParameter(dVar, "$this$null");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
            b((d) obj);
            return Unit.f60915a;
        }
    };

    /* renamed from: e */
    private boolean f58777e = true;

    /* renamed from: f */
    private boolean f58778f = true;

    /* renamed from: h */
    private boolean f58780h = n.f71155a.b();

    public static /* synthetic */ void j(HttpClientConfig httpClientConfig, qr.d dVar, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = new Function1() { // from class: io.ktor.client.HttpClientConfig$install$1
                /* renamed from: invoke  reason: collision with other method in class */
                public final void m4946invoke(@NotNull Object obj2) {
                    Intrinsics.checkNotNullParameter(obj2, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    m4946invoke(obj2);
                    return Unit.f60915a;
                }
            };
        }
        httpClientConfig.i(dVar, function1);
    }

    public final boolean b() {
        return this.f58780h;
    }

    @NotNull
    public final Function1<T, Unit> c() {
        return (Function1<? super T, Unit>) this.f58776d;
    }

    public final boolean d() {
        return this.f58779g;
    }

    public final boolean e() {
        return this.f58777e;
    }

    public final boolean f() {
        return this.f58778f;
    }

    public final void g(@NotNull HttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        Iterator<T> it = this.f58773a.values().iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(client);
        }
        Iterator<T> it2 = this.f58775c.values().iterator();
        while (it2.hasNext()) {
            ((Function1) it2.next()).invoke(client);
        }
    }

    public final void h(@NotNull String key, @NotNull Function1<? super HttpClient, Unit> block) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(block, "block");
        this.f58775c.put(key, block);
    }

    public final <TBuilder, TPlugin> void i(@NotNull final qr.d<? extends TBuilder, TPlugin> plugin, @NotNull final Function1<? super TBuilder, Unit> configure) {
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        Intrinsics.checkNotNullParameter(configure, "configure");
        final Function1<Object, Unit> function1 = this.f58774b.get(plugin.getKey());
        this.f58774b.put(plugin.getKey(), new Function1<Object, Unit>() { // from class: io.ktor.client.HttpClientConfig$install$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2(obj);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Object obj) {
                Intrinsics.checkNotNullParameter(obj, "$this$null");
                Function1<Object, Unit> function12 = function1;
                if (function12 != null) {
                    function12.invoke(obj);
                }
                configure.invoke(obj);
            }
        });
        if (this.f58773a.containsKey(plugin.getKey())) {
            return;
        }
        this.f58773a.put(plugin.getKey(), new Function1<HttpClient, Unit>() { // from class: io.ktor.client.HttpClientConfig$install$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            public final void b(@NotNull HttpClient scope) {
                Map map;
                Intrinsics.checkNotNullParameter(scope, "scope");
                map = ((HttpClientConfig) scope.d()).f58774b;
                Object obj = map.get(plugin.getKey());
                Intrinsics.checkNotNull(obj);
                Object a10 = plugin.a((Function1) obj);
                plugin.b(a10, scope);
                ((b) scope.m().c(e.a(), new Function0<b>() { // from class: io.ktor.client.HttpClientConfig$install$3$attributes$1
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    /* renamed from: b */
                    public final b invoke() {
                        return yr.d.a(true);
                    }
                })).a(plugin.getKey(), a10);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(HttpClient httpClient) {
                b(httpClient);
                return Unit.f60915a;
            }
        });
    }

    public final void k(@NotNull HttpClientConfig<? extends T> other) {
        Intrinsics.checkNotNullParameter(other, "other");
        this.f58777e = other.f58777e;
        this.f58778f = other.f58778f;
        this.f58779g = other.f58779g;
        this.f58773a.putAll(other.f58773a);
        this.f58774b.putAll(other.f58774b);
        this.f58775c.putAll(other.f58775c);
    }
}
