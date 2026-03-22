package yr;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableSet;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DelegatingMutableSet.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDelegatingMutableSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DelegatingMutableSet.kt\nio/ktor/util/DelegatingMutableSet\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,59:1\n1549#2:60\n1620#2,3:61\n1549#2:64\n1620#2,3:65\n*S KotlinDebug\n*F\n+ 1 DelegatingMutableSet.kt\nio/ktor/util/DelegatingMutableSet\n*L\n13#1:60\n13#1:61,3\n14#1:64\n14#1:65,3\n*E\n"})
/* loaded from: classes8.dex */
public class l<From, To> implements Set<To>, KMutableSet {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Set<From> f71148a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Function1<From, To> f71149b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Function1<To, From> f71150c;

    /* renamed from: d  reason: collision with root package name */
    private final int f71151d;

    /* compiled from: DelegatingMutableSet.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<To>, KMutableIterator {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final Iterator<From> f71152a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ l<From, To> f71153b;

        a(l<From, To> lVar) {
            this.f71153b = lVar;
            this.f71152a = ((l) lVar).f71148a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f71152a.hasNext();
        }

        @Override // java.util.Iterator
        public To next() {
            return (To) ((l) this.f71153b).f71149b.invoke(this.f71152a.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f71152a.remove();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public l(@NotNull Set<From> delegate, @NotNull Function1<? super From, ? extends To> convertTo, @NotNull Function1<? super To, ? extends From> convert) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(convertTo, "convertTo");
        Intrinsics.checkNotNullParameter(convert, "convert");
        this.f71148a = delegate;
        this.f71149b = convertTo;
        this.f71150c = convert;
        this.f71151d = delegate.size();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(To to2) {
        return this.f71148a.add(this.f71150c.invoke(to2));
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(@NotNull Collection<? extends To> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.f71148a.addAll(d(elements));
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        this.f71148a.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return this.f71148a.contains(this.f71150c.invoke(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.f71148a.containsAll(d(elements));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public Collection<From> d(@NotNull Collection<? extends To> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Collection<? extends To> collection2 = collection;
        ArrayList arrayList = new ArrayList(CollectionsKt.z(collection2, 10));
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            arrayList.add(this.f71150c.invoke(it.next()));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public Collection<To> e(@NotNull Collection<? extends From> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Collection<? extends From> collection2 = collection;
        ArrayList arrayList = new ArrayList(CollectionsKt.z(collection2, 10));
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            arrayList.add(this.f71149b.invoke(it.next()));
        }
        return arrayList;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof Set)) {
            return false;
        }
        Collection<To> e10 = e(this.f71148a);
        if (!((Set) obj).containsAll(e10) || !e10.containsAll((Collection) obj)) {
            return false;
        }
        return true;
    }

    public int f() {
        return this.f71151d;
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        return this.f71148a.hashCode();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.f71148a.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<To> iterator() {
        return new a(this);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        return this.f71148a.remove(this.f71150c.invoke(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.f71148a.removeAll(d(elements));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.f71148a.retainAll(d(elements));
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return f();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @NotNull
    public String toString() {
        return e(this.f71148a).toString();
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }
}
