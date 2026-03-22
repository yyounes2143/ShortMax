package kotlinx.serialization.json;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wt.x0;
/* compiled from: JsonElement.kt */
@st.k(with = a0.class)
@Metadata
/* loaded from: classes8.dex */
public final class JsonObject extends JsonElement implements Map<String, JsonElement>, KMappedMarker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, JsonElement> f61938a;

    /* compiled from: JsonElement.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final KSerializer<JsonObject> serializer() {
            return a0.f61943a;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public JsonObject(@NotNull Map<String, ? extends JsonElement> content) {
        super(null);
        Intrinsics.checkNotNullParameter(content, "content");
        this.f61938a = content;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence m(Map.Entry entry) {
        Intrinsics.checkNotNullParameter(entry, "<destruct>");
        StringBuilder sb2 = new StringBuilder();
        x0.c(sb2, (String) entry.getKey());
        sb2.append(':');
        sb2.append((JsonElement) entry.getValue());
        String sb3 = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
        return sb3;
    }

    public boolean c(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f61938a.containsKey(key);
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement compute(String str, BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement computeIfAbsent(String str, Function<? super String, ? extends JsonElement> function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement computeIfPresent(String str, BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (!(obj instanceof String)) {
            return false;
        }
        return c((String) obj);
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (!(obj instanceof JsonElement)) {
            return false;
        }
        return d((JsonElement) obj);
    }

    public boolean d(@NotNull JsonElement value) {
        Intrinsics.checkNotNullParameter(value, "value");
        return this.f61938a.containsValue(value);
    }

    @Nullable
    public JsonElement e(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.f61938a.get(key);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<String, JsonElement>> entrySet() {
        return f();
    }

    @Override // java.util.Map
    public boolean equals(@Nullable Object obj) {
        return Intrinsics.areEqual(this.f61938a, obj);
    }

    @NotNull
    public Set<Map.Entry<String, JsonElement>> f() {
        return this.f61938a.entrySet();
    }

    @Override // java.util.Map
    public final /* bridge */ /* synthetic */ JsonElement get(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        return e((String) obj);
    }

    @NotNull
    public Set<String> h() {
        return this.f61938a.keySet();
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.f61938a.hashCode();
    }

    public int i() {
        return this.f61938a.size();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.f61938a.isEmpty();
    }

    @NotNull
    public Collection<JsonElement> j() {
        return this.f61938a.values();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<String> keySet() {
        return h();
    }

    @Override // java.util.Map
    /* renamed from: l */
    public JsonElement remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement merge(String str, JsonElement jsonElement, BiFunction<? super JsonElement, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement put(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends JsonElement> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement putIfAbsent(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ JsonElement replace(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void replaceAll(BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return i();
    }

    @NotNull
    public String toString() {
        return CollectionsKt.A0(this.f61938a.entrySet(), ",", "{", "}", 0, null, new Function1() { // from class: kotlinx.serialization.json.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence m10;
                m10 = JsonObject.m((Map.Entry) obj);
                return m10;
            }
        }, 24, null);
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<JsonElement> values() {
        return j();
    }

    @Override // java.util.Map
    public /* bridge */ /* synthetic */ boolean replace(String str, JsonElement jsonElement, JsonElement jsonElement2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
