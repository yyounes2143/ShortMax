package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.Arrays;
import java.util.Collection;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.n;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SmallPersistentVector.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSmallPersistentVector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmallPersistentVector.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector\n+ 2 extensions.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/ExtensionsKt\n*L\n1#1,161:1\n41#2:162\n41#2:163\n*S KotlinDebug\n*F\n+ 1 SmallPersistentVector.kt\nandroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector\n*L\n48#1:162\n91#1:163\n*E\n"})
/* loaded from: classes.dex */
public final class SmallPersistentVector<E> extends AbstractPersistentList<E> implements ImmutableList<E> {
    @NotNull
    private final Object[] buffer;
    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    @NotNull
    private static final SmallPersistentVector EMPTY = new SmallPersistentVector(new Object[0]);

    /* compiled from: SmallPersistentVector.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final SmallPersistentVector getEMPTY() {
            return SmallPersistentVector.EMPTY;
        }

        private Companion() {
        }
    }

    public SmallPersistentVector(@NotNull Object[] objArr) {
        boolean z10;
        this.buffer = objArr;
        if (objArr.length <= 32) {
            z10 = true;
        } else {
            z10 = false;
        }
        CommonFunctionsKt.m1490assert(z10);
    }

    private final Object[] bufferOfSize(int i10) {
        return new Object[i10];
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    public /* bridge */ /* synthetic */ PersistentCollection add(Object obj) {
        return add((SmallPersistentVector<E>) obj);
    }

    @Override // kotlin.collections.d, java.util.List
    public E get(int i10) {
        ListImplementation.checkElementIndex$runtime(i10, size());
        return (E) this.buffer[i10];
    }

    @Override // kotlin.collections.d, kotlin.collections.b
    public int getSize() {
        return this.buffer.length;
    }

    @Override // kotlin.collections.d, java.util.List
    public int indexOf(Object obj) {
        return n.y0(this.buffer, obj);
    }

    @Override // kotlin.collections.d, java.util.List
    public int lastIndexOf(Object obj) {
        return n.Y0(this.buffer, obj);
    }

    @Override // kotlin.collections.d, java.util.List
    @NotNull
    public ListIterator<E> listIterator(int i10) {
        ListImplementation.checkPositionIndex$runtime(i10, size());
        return new BufferIterator(this.buffer, i10, size());
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> removeAt(int i10) {
        ListImplementation.checkElementIndex$runtime(i10, size());
        if (size() == 1) {
            return EMPTY;
        }
        Object[] copyOf = Arrays.copyOf(this.buffer, size() - 1);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        n.n(this.buffer, copyOf, i10, i10 + 1, size());
        return new SmallPersistentVector(copyOf);
    }

    @Override // kotlin.collections.d, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> set(int i10, E e10) {
        ListImplementation.checkElementIndex$runtime(i10, size());
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        copyOf[i10] = e10;
        return new SmallPersistentVector(copyOf);
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentList<E> add(E e10) {
        if (size() < 32) {
            Object[] copyOf = Arrays.copyOf(this.buffer, size() + 1);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            copyOf[size()] = e10;
            return new SmallPersistentVector(copyOf);
        }
        return new PersistentVector(this.buffer, UtilsKt.presizedBufferWith(e10), size() + 1, 0);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentList<E> addAll(@NotNull Collection<? extends E> collection) {
        if (size() + collection.size() <= 32) {
            Object[] copyOf = Arrays.copyOf(this.buffer, size() + collection.size());
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            int size = size();
            for (E e10 : collection) {
                copyOf[size] = e10;
                size++;
            }
            return new SmallPersistentVector(copyOf);
        }
        PersistentList.Builder<E> builder = builder();
        builder.addAll(collection);
        return builder.build();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentList.Builder<E> builder() {
        return new PersistentVectorBuilder(this, null, this.buffer, 0);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection
    @NotNull
    public PersistentList<E> removeAll(@NotNull Function1<? super E, Boolean> function1) {
        Object[] objArr = this.buffer;
        int size = size();
        int size2 = size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size2; i10++) {
            Object obj = this.buffer[i10];
            if (function1.invoke(obj).booleanValue()) {
                if (!z10) {
                    Object[] objArr2 = this.buffer;
                    objArr = Arrays.copyOf(objArr2, objArr2.length);
                    Intrinsics.checkNotNullExpressionValue(objArr, "copyOf(...)");
                    z10 = true;
                    size = i10;
                }
            } else if (z10) {
                objArr[size] = obj;
                size++;
            }
        }
        if (size == size()) {
            return this;
        }
        if (size == 0) {
            return EMPTY;
        }
        return new SmallPersistentVector(n.y(objArr, 0, size));
    }

    @Override // java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> add(int i10, E e10) {
        ListImplementation.checkPositionIndex$runtime(i10, size());
        if (i10 == size()) {
            return add((SmallPersistentVector<E>) e10);
        }
        if (size() < 32) {
            Object[] bufferOfSize = bufferOfSize(size() + 1);
            n.u(this.buffer, bufferOfSize, 0, 0, i10, 6, null);
            n.n(this.buffer, bufferOfSize, i10 + 1, i10, size());
            bufferOfSize[i10] = e10;
            return new SmallPersistentVector(bufferOfSize);
        }
        Object[] objArr = this.buffer;
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
        n.n(this.buffer, copyOf, i10 + 1, i10, size() - 1);
        copyOf[i10] = e10;
        return new PersistentVector(copyOf, UtilsKt.presizedBufferWith(this.buffer[31]), size() + 1, 0);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    @NotNull
    public PersistentList<E> addAll(int i10, @NotNull Collection<? extends E> collection) {
        ListImplementation.checkPositionIndex$runtime(i10, size());
        if (size() + collection.size() <= 32) {
            Object[] bufferOfSize = bufferOfSize(size() + collection.size());
            n.u(this.buffer, bufferOfSize, 0, 0, i10, 6, null);
            n.n(this.buffer, bufferOfSize, collection.size() + i10, i10, size());
            for (E e10 : collection) {
                bufferOfSize[i10] = e10;
                i10++;
            }
            return new SmallPersistentVector(bufferOfSize);
        }
        PersistentList.Builder<E> builder = builder();
        builder.addAll(i10, collection);
        return builder.build();
    }
}
