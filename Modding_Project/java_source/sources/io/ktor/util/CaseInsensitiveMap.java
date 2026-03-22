package io.ktor.util;

import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yr.f;
import yr.l;
import yr.t;
/* compiled from: CaseInsensitiveMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCaseInsensitiveMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaseInsensitiveMap.kt\nio/ktor/util/CaseInsensitiveMap\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,78:1\n215#2,2:79\n*S KotlinDebug\n*F\n+ 1 CaseInsensitiveMap.kt\nio/ktor/util/CaseInsensitiveMap\n*L\n30#1:79,2\n*E\n"})
/* loaded from: classes8.dex */
public final class CaseInsensitiveMap<Value> implements Map<String, Value>, KMutableMap {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<f, Value> f59288a = new LinkedHashMap();

    public boolean a(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f59288a.containsKey(new f(key));
    }

    @Nullable
    public Value b(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f59288a.get(t.a(key));
    }

    @NotNull
    public Set<Map.Entry<String, Value>> c() {
        return new l(this.f59288a.entrySet(), new Function1<Map.Entry<f, Value>, Map.Entry<String, Value>>() { // from class: io.ktor.util.CaseInsensitiveMap$entries$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            /* renamed from: b */
            public final Map.Entry<String, Value> invoke(@NotNull Map.Entry<f, Value> $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                return new a($receiver.getKey().a(), $receiver.getValue());
            }
        }, new Function1<Map.Entry<String, Value>, Map.Entry<f, Value>>() { // from class: io.ktor.util.CaseInsensitiveMap$entries$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            /* renamed from: b */
            public final Map.Entry<f, Value> invoke(@NotNull Map.Entry<String, Value> $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                return new a(t.a($receiver.getKey()), $receiver.getValue());
            }
        });
    }

    @Override // java.util.Map
    public void clear() {
        this.f59288a.clear();
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (!(obj instanceof String)) {
            return false;
        }
        return a((String) obj);
    }

    @Override // java.util.Map
    public boolean containsValue(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        return this.f59288a.containsValue(obj);
    }

    @NotNull
    public Set<String> d() {
        return new l(this.f59288a.keySet(), new Function1<f, String>() { // from class: io.ktor.util.CaseInsensitiveMap$keys$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            /* renamed from: b */
            public final String invoke(@NotNull f $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                return $receiver.a();
            }
        }, new Function1<String, f>() { // from class: io.ktor.util.CaseInsensitiveMap$keys$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            /* renamed from: b */
            public final f invoke(@NotNull String $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
                return t.a($receiver);
            }
        });
    }

    public int e() {
        return this.f59288a.size();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<String, Value>> entrySet() {
        return c();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof CaseInsensitiveMap)) {
            return Intrinsics.areEqual(((CaseInsensitiveMap) obj).f59288a, this.f59288a);
        }
        return false;
    }

    @NotNull
    public Collection<Value> f() {
        return this.f59288a.values();
    }

    @Override // java.util.Map
    public final /* bridge */ Value get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        return b((String) obj);
    }

    @Override // java.util.Map
    @Nullable
    /* renamed from: h */
    public Value put(@NotNull String key, @NotNull Value value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return this.f59288a.put(t.a(key), value);
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.f59288a.hashCode();
    }

    @Nullable
    public Value i(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f59288a.remove(t.a(key));
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f59288a.isEmpty();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<String> keySet() {
        return d();
    }

    @Override // java.util.Map
    public void putAll(@NotNull Map<? extends String, ? extends Value> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        for (Map.Entry<? extends String, ? extends Value> entry : from.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final /* bridge */ Value remove(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        return i((String) obj);
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return e();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<Value> values() {
        return f();
    }
}
