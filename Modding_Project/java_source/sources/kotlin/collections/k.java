package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AbstractSet.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class k<E> extends b<E> implements Set<E>, KMappedMarker {
    @NotNull
    public static final a Companion = new a(null);

    /* compiled from: AbstractSet.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(@NotNull Set<?> c10, @NotNull Set<?> other) {
            Intrinsics.checkNotNullParameter(c10, "c");
            Intrinsics.checkNotNullParameter(other, "other");
            if (c10.size() != other.size()) {
                return false;
            }
            return c10.containsAll(other);
        }

        public final int b(@NotNull Collection<?> c10) {
            int i10;
            Intrinsics.checkNotNullParameter(c10, "c");
            int i11 = 0;
            for (Object obj : c10) {
                if (obj != null) {
                    i10 = obj.hashCode();
                } else {
                    i10 = 0;
                }
                i11 += i10;
            }
            return i11;
        }

        private a() {
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        return Companion.a(this, (Set) obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Companion.b(this);
    }

    @Override // kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<E> iterator() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
