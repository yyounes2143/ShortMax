package kotlin.jvm.internal;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CollectionToArray.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCollectionToArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n1#1,88:1\n63#1,22:89\n63#1,22:111\n*S KotlinDebug\n*F\n+ 1 CollectionToArray.kt\nkotlin/jvm/internal/CollectionToArray\n*L\n22#1:89,22\n37#1:111,22\n*E\n"})
/* loaded from: classes8.dex */
public final class CollectionToArray {
    @NotNull
    private static final Object[] EMPTY = new Object[0];
    private static final int MAX_SIZE = 2147483645;

    @c
    @NotNull
    public static final Object[] toArray(@NotNull Collection<?> collection, @Nullable Object[] objArr) {
        Object[] objArr2;
        Intrinsics.checkNotNullParameter(collection, "collection");
        objArr.getClass();
        int size = collection.size();
        int i10 = 0;
        if (size == 0) {
            if (objArr.length > 0) {
                objArr[0] = null;
                return objArr;
            }
            return objArr;
        }
        Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            if (objArr.length > 0) {
                objArr[0] = null;
                return objArr;
            }
            return objArr;
        }
        if (size <= objArr.length) {
            objArr2 = objArr;
        } else {
            Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), size);
            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr2 = (Object[]) newInstance;
        }
        while (true) {
            int i11 = i10 + 1;
            objArr2[i10] = it.next();
            if (i11 >= objArr2.length) {
                if (!it.hasNext()) {
                    return objArr2;
                }
                int i12 = ((i11 * 3) + 1) >>> 1;
                if (i12 <= i11) {
                    i12 = MAX_SIZE;
                    if (i11 >= MAX_SIZE) {
                        throw new OutOfMemoryError();
                    }
                }
                objArr2 = Arrays.copyOf(objArr2, i12);
            } else if (!it.hasNext()) {
                if (objArr2 == objArr) {
                    objArr[i11] = null;
                    return objArr;
                }
                Object[] copyOf = Arrays.copyOf(objArr2, i11);
                Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                return copyOf;
            }
            i10 = i11;
        }
    }

    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    private static final Object[] toArrayImpl(Collection<?> collection, Function0<Object[]> function0, Function1<? super Integer, Object[]> function1, Function2<? super Object[], ? super Integer, Object[]> function2) {
        int size = collection.size();
        if (size == 0) {
            return function0.invoke();
        }
        Iterator<?> it = collection.iterator();
        if (!it.hasNext()) {
            return function0.invoke();
        }
        int i10 = 0;
        ?? r32 = function1.invoke(Integer.valueOf(size));
        while (true) {
            int i11 = i10 + 1;
            r32[i10] = it.next();
            if (i11 >= r32.length) {
                if (!it.hasNext()) {
                    return r32;
                }
                int i12 = ((i11 * 3) + 1) >>> 1;
                if (i12 <= i11) {
                    i12 = MAX_SIZE;
                    if (i11 >= MAX_SIZE) {
                        throw new OutOfMemoryError();
                    }
                }
                r32 = Arrays.copyOf((Object[]) r32, i12);
            } else if (!it.hasNext()) {
                return function2.invoke(r32, Integer.valueOf(i11));
            }
            i10 = i11;
            r32 = r32;
        }
    }

    @c
    @NotNull
    public static final Object[] toArray(@NotNull Collection<?> collection) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        int size = collection.size();
        if (size != 0) {
            Iterator<?> it = collection.iterator();
            if (it.hasNext()) {
                Object[] objArr = new Object[size];
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    objArr[i10] = it.next();
                    if (i11 >= objArr.length) {
                        if (!it.hasNext()) {
                            return objArr;
                        }
                        int i12 = ((i11 * 3) + 1) >>> 1;
                        if (i12 <= i11) {
                            i12 = MAX_SIZE;
                            if (i11 >= MAX_SIZE) {
                                throw new OutOfMemoryError();
                            }
                        }
                        objArr = Arrays.copyOf(objArr, i12);
                    } else if (!it.hasNext()) {
                        Object[] copyOf = Arrays.copyOf(objArr, i11);
                        Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                        return copyOf;
                    }
                    i10 = i11;
                }
            }
        }
        return EMPTY;
    }
}
