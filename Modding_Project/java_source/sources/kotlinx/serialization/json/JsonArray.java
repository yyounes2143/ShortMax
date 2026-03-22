package kotlinx.serialization.json;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JsonElement.kt */
@st.k(with = b.class)
@Metadata
/* loaded from: classes8.dex */
public final class JsonArray extends JsonElement implements List<JsonElement>, KMappedMarker {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<JsonElement> f61936a;

    /* compiled from: JsonElement.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {
        private Companion() {
        }

        @NotNull
        public final KSerializer<JsonArray> serializer() {
            return b.f61948a;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public JsonArray(@NotNull List<? extends JsonElement> content) {
        super(null);
        Intrinsics.checkNotNullParameter(content, "content");
        this.f61936a = content;
    }

    public boolean a(@NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.f61936a.contains(element);
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ void add(int i10, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i10, Collection<? extends JsonElement> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    @NotNull
    /* renamed from: c */
    public JsonElement get(int i10) {
        return this.f61936a.get(i10);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof JsonElement)) {
            return false;
        }
        return a((JsonElement) obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.f61936a.containsAll(elements);
    }

    public int d() {
        return this.f61936a.size();
    }

    public int e(@NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.f61936a.indexOf(element);
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(@Nullable Object obj) {
        return Intrinsics.areEqual(this.f61936a, obj);
    }

    public int f(@NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.f61936a.lastIndexOf(element);
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        return this.f61936a.hashCode();
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof JsonElement)) {
            return -1;
        }
        return e((JsonElement) obj);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.f61936a.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<JsonElement> iterator() {
        return this.f61936a.iterator();
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof JsonElement)) {
            return -1;
        }
        return f((JsonElement) obj);
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<JsonElement> listIterator() {
        return this.f61936a.listIterator();
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ JsonElement remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void replaceAll(UnaryOperator<JsonElement> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ JsonElement set(int i10, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return d();
    }

    @Override // java.util.List
    public void sort(Comparator<? super JsonElement> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    @NotNull
    public List<JsonElement> subList(int i10, int i11) {
        return this.f61936a.subList(i10, i11);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @NotNull
    public String toString() {
        return CollectionsKt.A0(this.f61936a, ",", "[", "]", 0, null, null, 56, null);
    }

    @Override // java.util.List, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends JsonElement> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<JsonElement> listIterator(int i10) {
        return this.f61936a.listIterator(i10);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }
}
