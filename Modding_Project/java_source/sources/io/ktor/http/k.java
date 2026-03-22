package io.ktor.http;

import androidx.webkit.ProxyConfig;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yr.t;
/* compiled from: URLProtocol.kt */
@Metadata
@SourceDebugExtension({"SMAP\nURLProtocol.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLProtocol.kt\nio/ktor/http/URLProtocol\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,69:1\n1064#2,2:70\n1#3:72\n1194#4,2:73\n1222#4,4:75\n*S KotlinDebug\n*F\n+ 1 URLProtocol.kt\nio/ktor/http/URLProtocol\n*L\n16#1:70,2\n49#1:73,2\n49#1:75,4\n*E\n"})
/* loaded from: classes8.dex */
public final class k {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f59275c = new a(null);
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final k f59276d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final k f59277e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final k f59278f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final k f59279g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final k f59280h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final Map<String, k> f59281i;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f59282a;

    /* renamed from: b  reason: collision with root package name */
    private final int f59283b;

    /* compiled from: URLProtocol.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final k a(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            String c10 = t.c(name);
            k kVar = k.f59275c.b().get(c10);
            if (kVar == null) {
                return new k(c10, 0);
            }
            return kVar;
        }

        @NotNull
        public final Map<String, k> b() {
            return k.f59281i;
        }

        @NotNull
        public final k c() {
            return k.f59276d;
        }

        private a() {
        }
    }

    static {
        k kVar = new k(ProxyConfig.MATCH_HTTP, 80);
        f59276d = kVar;
        k kVar2 = new k("https", 443);
        f59277e = kVar2;
        k kVar3 = new k("ws", 80);
        f59278f = kVar3;
        k kVar4 = new k("wss", 443);
        f59279g = kVar4;
        k kVar5 = new k("socks", 1080);
        f59280h = kVar5;
        List q10 = CollectionsKt.q(kVar, kVar2, kVar3, kVar4, kVar5);
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.e.e(p0.e(CollectionsKt.z(q10, 10)), 16));
        for (Object obj : q10) {
            linkedHashMap.put(((k) obj).f59282a, obj);
        }
        f59281i = linkedHashMap;
    }

    public k(@NotNull String name, int i10) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f59282a = name;
        this.f59283b = i10;
        for (int i11 = 0; i11 < name.length(); i11++) {
            if (!yr.g.a(name.charAt(i11))) {
                throw new IllegalArgumentException("All characters should be lower case");
            }
        }
    }

    public final int c() {
        return this.f59283b;
    }

    @NotNull
    public final String d() {
        return this.f59282a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (Intrinsics.areEqual(this.f59282a, kVar.f59282a) && this.f59283b == kVar.f59283b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (this.f59282a.hashCode() * 31) + Integer.hashCode(this.f59283b);
    }

    @NotNull
    public String toString() {
        return "URLProtocol(name=" + this.f59282a + ", defaultPort=" + this.f59283b + ')';
    }
}
