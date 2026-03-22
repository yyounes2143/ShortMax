package io.ktor.client.plugins;

import io.ktor.client.HttpClient;
import io.ktor.http.URLUtilsKt;
import io.ktor.http.Url;
import io.ktor.http.f;
import io.ktor.http.h;
import io.ktor.http.k;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import wr.g;
import wr.l;
import wr.q;
import yr.s;
/* compiled from: DefaultRequest.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DefaultRequest {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Plugin f58888b = new Plugin(null);
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final yr.a<DefaultRequest> f58889c = new yr.a<>("DefaultRequest");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Function1<a, Unit> f58890a;

    /* compiled from: DefaultRequest.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDefaultRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultRequest.kt\nio/ktor/client/plugins/DefaultRequest$Plugin\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n1855#2,2:213\n*S KotlinDebug\n*F\n+ 1 DefaultRequest.kt\nio/ktor/client/plugins/DefaultRequest$Plugin\n*L\n115#1:213,2\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Plugin implements qr.d<a, DefaultRequest> {
        public /* synthetic */ Plugin(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final List<String> d(List<String> list, List<String> list2) {
            if (list2.isEmpty()) {
                return list;
            }
            if (list.isEmpty()) {
                return list2;
            }
            if (((CharSequence) CollectionsKt.r0(list2)).length() == 0) {
                return list2;
            }
            List d10 = CollectionsKt.d((list.size() + list2.size()) - 1);
            int size = list.size() - 1;
            for (int i10 = 0; i10 < size; i10++) {
                d10.add(list.get(i10));
            }
            d10.addAll(list2);
            return CollectionsKt.a(d10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void f(Url url, h hVar) {
            if (Intrinsics.areEqual(hVar.o(), k.f59275c.c())) {
                hVar.y(url.k());
            }
            if (hVar.j().length() > 0) {
                return;
            }
            h a10 = URLUtilsKt.a(url);
            a10.y(hVar.o());
            if (hVar.n() != 0) {
                a10.x(hVar.n());
            }
            a10.u(DefaultRequest.f58888b.d(a10.g(), hVar.g()));
            if (hVar.d().length() > 0) {
                a10.r(hVar.d());
            }
            q b10 = f.b(0, 1, null);
            s.c(b10, a10.e());
            a10.s(hVar.e());
            Iterator<T> it = b10.b().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                List list = (List) entry.getValue();
                if (!a10.e().contains(str)) {
                    a10.e().d(str, list);
                }
            }
            URLUtilsKt.g(hVar, a10);
        }

        @Override // qr.d
        /* renamed from: e */
        public void b(@NotNull DefaultRequest plugin, @NotNull HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            scope.p().l(sr.d.f66601h.a(), new DefaultRequest$Plugin$install$1(plugin, null));
        }

        @Override // qr.d
        @NotNull
        /* renamed from: g */
        public DefaultRequest a(@NotNull Function1<? super a, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            return new DefaultRequest(block, null);
        }

        @Override // qr.d
        @NotNull
        public yr.a<DefaultRequest> getKey() {
            return DefaultRequest.f58889c;
        }

        private Plugin() {
        }
    }

    /* compiled from: DefaultRequest.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements l {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final g f58894a = new g(0, 1, null);
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final h f58895b = new h(null, null, 0, null, null, null, null, null, false, 511, null);
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final yr.b f58896c = yr.d.a(true);

        @Override // wr.l
        @NotNull
        public g a() {
            return this.f58894a;
        }

        @NotNull
        public final yr.b b() {
            return this.f58896c;
        }

        @NotNull
        public final h c() {
            return this.f58895b;
        }
    }

    public /* synthetic */ DefaultRequest(Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private DefaultRequest(Function1<? super a, Unit> function1) {
        this.f58890a = function1;
    }
}
