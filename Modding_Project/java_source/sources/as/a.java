package as;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConcurrentMapJvm.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a<Key, Value> implements Map<Key, Value>, KMutableMap {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentHashMap<Key, Value> f2043a;

    public a(int i10) {
        this.f2043a = new ConcurrentHashMap<>(i10);
    }

    @NotNull
    public Set<Map.Entry<Key, Value>> a() {
        Set<Map.Entry<Key, Value>> entrySet = this.f2043a.entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet, "delegate.entries");
        return entrySet;
    }

    @NotNull
    public Set<Key> b() {
        Set<Key> keySet = this.f2043a.keySet();
        Intrinsics.checkNotNullExpressionValue(keySet, "delegate.keys");
        return keySet;
    }

    public int c() {
        return this.f2043a.size();
    }

    @Override // java.util.Map
    public void clear() {
        this.f2043a.clear();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return this.f2043a.containsKey(obj);
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return this.f2043a.containsValue(obj);
    }

    @NotNull
    public Collection<Value> d() {
        Collection<Value> values = this.f2043a.values();
        Intrinsics.checkNotNullExpressionValue(values, "delegate.values");
        return values;
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<Key, Value>> entrySet() {
        return a();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
        return Intrinsics.areEqual(obj, this.f2043a);
    }

    @Override // java.util.Map
    @Nullable
    public Value get(Object obj) {
        return this.f2043a.get(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.f2043a.hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f2043a.isEmpty();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Key> keySet() {
        return b();
    }

    @Override // java.util.Map
    @Nullable
    public Value put(Key key, Value value) {
        return this.f2043a.put(key, value);
    }

    @Override // java.util.Map
    public void putAll(@NotNull Map<? extends Key, ? extends Value> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        this.f2043a.putAll(from);
    }

    @Override // java.util.Map
    @Nullable
    public Value remove(Object obj) {
        return this.f2043a.remove(obj);
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return c();
    }

    @NotNull
    public String toString() {
        return "ConcurrentMapJvm by " + this.f2043a;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<Value> values() {
        return d();
    }

    @Override // java.util.Map
    public boolean remove(Object obj, Object obj2) {
        return this.f2043a.remove(obj, obj2);
    }

    public /* synthetic */ a(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 32 : i10);
    }
}
