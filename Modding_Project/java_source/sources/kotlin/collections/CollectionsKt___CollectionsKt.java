package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: _Collections.kt */
@Metadata
@SourceDebugExtension({"SMAP\n_Collections.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,3686:1\n295#1,2:3687\n528#1,7:3689\n543#1,6:3696\n865#1,2:3703\n796#1:3705\n1872#1,2:3706\n797#1,2:3708\n1874#1:3710\n799#1:3711\n1872#1,3:3712\n817#1,2:3715\n855#1,2:3717\n1261#1,4:3727\n1230#1,4:3731\n1246#1,4:3735\n1293#1,4:3739\n1454#1,5:3743\n1469#1,5:3748\n1510#1,3:3753\n1513#1,3:3763\n1528#1,3:3766\n1531#1,3:3776\n1628#1,3:3793\n1598#1,4:3796\n1587#1:3800\n1872#1,2:3801\n1874#1:3804\n1588#1:3805\n1872#1,3:3806\n1619#1:3809\n1863#1:3810\n1864#1:3812\n1620#1:3813\n1863#1,2:3814\n1872#1,3:3816\n2853#1,3:3819\n2856#1,6:3823\n2878#1,3:3829\n2881#1,7:3833\n865#1,2:3840\n827#1:3842\n855#1,2:3843\n827#1:3845\n855#1,2:3846\n827#1:3848\n855#1,2:3849\n3408#1,8:3855\n3436#1,7:3863\n3467#1,10:3870\n1#2:3702\n1#2:3803\n1#2:3811\n1#2:3822\n1#2:3832\n37#3:3719\n36#3,3:3720\n37#3:3723\n36#3,3:3724\n381#4,7:3756\n381#4,7:3769\n381#4,7:3779\n381#4,7:3786\n32#5,2:3851\n32#5,2:3853\n*S KotlinDebug\n*F\n+ 1 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n174#1:3687,2\n184#1:3689,7\n194#1:3696,6\n774#1:3703,2\n785#1:3705\n785#1:3706,2\n785#1:3708,2\n785#1:3710\n785#1:3711\n796#1:3712,3\n808#1:3715,2\n827#1:3717,2\n1188#1:3727,4\n1203#1:3731,4\n1217#1:3735,4\n1280#1:3739,4\n1368#1:3743,5\n1381#1:3748,5\n1485#1:3753,3\n1485#1:3763,3\n1498#1:3766,3\n1498#1:3776,3\n1557#1:3793,3\n1567#1:3796,4\n1577#1:3800\n1577#1:3801,2\n1577#1:3804\n1577#1:3805\n1587#1:3806,3\n1611#1:3809\n1611#1:3810\n1611#1:3812\n1611#1:3813\n1619#1:3814,2\n2653#1:3816,3\n2953#1:3819,3\n2953#1:3823,6\n2970#1:3829,3\n2970#1:3833,7\n3146#1:3840,2\n3154#1:3842\n3154#1:3843,2\n3164#1:3845\n3164#1:3846,2\n3174#1:3848\n3174#1:3849,2\n3397#1:3855,8\n3425#1:3863,7\n3454#1:3870,10\n1577#1:3803\n1611#1:3811\n2953#1:3822\n2970#1:3832\n1040#1:3719\n1040#1:3720,3\n1083#1:3723\n1083#1:3724,3\n1485#1:3756,7\n1498#1:3769,7\n1512#1:3779,7\n1530#1:3786,7\n3342#1:3851,2\n3384#1:3853,2\n*E\n"})
/* loaded from: classes8.dex */
public class CollectionsKt___CollectionsKt extends f0 {

    /* compiled from: Sequences.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,22:1\n3527#2:23\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a<T> implements Sequence<T> {

        /* renamed from: a */
        final /* synthetic */ Iterable f60923a;

        public a(Iterable iterable) {
            this.f60923a = iterable;
        }

        @Override // kotlin.sequences.Sequence
        public Iterator<T> iterator() {
            return this.f60923a.iterator();
        }
    }

    public static /* synthetic */ String A0(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function1 function1, int i11, Object obj) {
        CharSequence charSequence5;
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence6 = "";
        if ((i11 & 2) != 0) {
            charSequence5 = "";
        } else {
            charSequence5 = charSequence2;
        }
        if ((i11 & 4) == 0) {
            charSequence6 = charSequence3;
        }
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            function1 = null;
        }
        return z0(iterable, charSequence, charSequence5, charSequence6, i12, charSequence7, function1);
    }

    public static final <T> T B0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) CollectionsKt.C0((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T next = it.next();
            while (it.hasNext()) {
                next = it.next();
            }
            return next;
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static <T> T C0(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (!list.isEmpty()) {
            return list.get(CollectionsKt.p(list));
        }
        throw new NoSuchElementException("List is empty.");
    }

    @Nullable
    public static <T> T D0(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(list.size() - 1);
    }

    @Nullable
    public static <T extends Comparable<? super T>> T E0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) < 0) {
                next = next2;
            }
        }
        return next;
    }

    @Nullable
    public static Float F0(@NotNull Iterable<Float> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Iterator<Float> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = it.next().floatValue();
        while (it.hasNext()) {
            floatValue = Math.max(floatValue, it.next().floatValue());
        }
        return Float.valueOf(floatValue);
    }

    @Nullable
    public static <T extends Comparable<? super T>> T G0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        T next = it.next();
        while (it.hasNext()) {
            T next2 = it.next();
            if (next.compareTo(next2) > 0) {
                next = next2;
            }
        }
        return next;
    }

    @Nullable
    public static Float H0(@NotNull Iterable<Float> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Iterator<Float> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        float floatValue = it.next().floatValue();
        while (it.hasNext()) {
            floatValue = Math.min(floatValue, it.next().floatValue());
        }
        return Float.valueOf(floatValue);
    }

    @NotNull
    public static <T> List<T> I0(@NotNull Iterable<? extends T> iterable, T t10) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        ArrayList arrayList = new ArrayList(CollectionsKt.z(iterable, 10));
        boolean z10 = false;
        for (T t11 : iterable) {
            boolean z11 = true;
            if (!z10 && Intrinsics.areEqual(t11, t10)) {
                z10 = true;
                z11 = false;
            }
            if (z11) {
                arrayList.add(t11);
            }
        }
        return arrayList;
    }

    @NotNull
    public static <T> List<T> J0(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends T> elements) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (iterable instanceof Collection) {
            return CollectionsKt.K0((Collection) iterable, elements);
        }
        ArrayList arrayList = new ArrayList();
        CollectionsKt.E(arrayList, iterable);
        CollectionsKt.E(arrayList, elements);
        return arrayList;
    }

    @NotNull
    public static <T> List<T> K0(@NotNull Collection<? extends T> collection, @NotNull Iterable<? extends T> elements) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(elements, "elements");
        if (elements instanceof Collection) {
            Collection collection2 = (Collection) elements;
            ArrayList arrayList = new ArrayList(collection.size() + collection2.size());
            arrayList.addAll(collection);
            arrayList.addAll(collection2);
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(collection);
        CollectionsKt.E(arrayList2, elements);
        return arrayList2;
    }

    @NotNull
    public static <T> List<T> L0(@NotNull Collection<? extends T> collection, T t10) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(t10);
        return arrayList;
    }

    public static <T> T M0(@NotNull Collection<? extends T> collection, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        if (!collection.isEmpty()) {
            return (T) CollectionsKt.l0(collection, random.g(collection.size()));
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    @NotNull
    public static <T> List<T> N0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if ((iterable instanceof Collection) && ((Collection) iterable).size() <= 1) {
            return CollectionsKt.d1(iterable);
        }
        List<T> f12 = f1(iterable);
        f0.c0(f12);
        return f12;
    }

    public static final <T> void O0(@NotNull List<T> list, @NotNull Random random) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(random, "random");
        for (int p10 = CollectionsKt.p(list); p10 > 0; p10--) {
            int g10 = random.g(p10 + 1);
            list.set(g10, list.set(p10, list.get(g10)));
        }
    }

    public static <T> T P0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) Q0((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            T next = it.next();
            if (!it.hasNext()) {
                return next;
            }
            throw new IllegalArgumentException("Collection has more than one element.");
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static final <T> T Q0(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        int size = list.size();
        if (size != 0) {
            if (size == 1) {
                return list.get(0);
            }
            throw new IllegalArgumentException("List has more than one element.");
        }
        throw new NoSuchElementException("List is empty.");
    }

    @Nullable
    public static <T> T R0(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.size() == 1) {
            return list.get(0);
        }
        return null;
    }

    @NotNull
    public static <T> List<T> S0(@NotNull List<? extends T> list, @NotNull IntRange indices) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(indices, "indices");
        if (indices.isEmpty()) {
            return CollectionsKt.n();
        }
        return CollectionsKt.d1(list.subList(indices.getStart().intValue(), indices.getEndInclusive().intValue() + 1));
    }

    @NotNull
    public static <T extends Comparable<? super T>> List<T> T0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 1) {
                return CollectionsKt.d1(iterable);
            }
            Object[] array = collection.toArray(new Comparable[0]);
            n.R((Comparable[]) array);
            return n.g(array);
        }
        List<T> f12 = f1(iterable);
        CollectionsKt.C(f12);
        return f12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> List<T> U0(@NotNull Iterable<? extends T> iterable, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 1) {
                return CollectionsKt.d1(iterable);
            }
            Object[] array = collection.toArray(new Object[0]);
            q.S(array, comparator);
            return n.g(array);
        }
        List<T> f12 = f1(iterable);
        CollectionsKt.D(f12, comparator);
        return f12;
    }

    @NotNull
    public static <T> List<T> V0(@NotNull Iterable<? extends T> iterable, int i10) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (i10 >= 0) {
            if (i10 == 0) {
                return CollectionsKt.n();
            }
            if (iterable instanceof Collection) {
                if (i10 >= ((Collection) iterable).size()) {
                    return CollectionsKt.d1(iterable);
                }
                if (i10 == 1) {
                    return CollectionsKt.e(CollectionsKt.q0(iterable));
                }
            }
            ArrayList arrayList = new ArrayList(i10);
            int i11 = 0;
            for (T t10 : iterable) {
                arrayList.add(t10);
                i11++;
                if (i11 == i10) {
                    break;
                }
            }
            return y.u(arrayList);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static <T> List<T> W0(@NotNull List<? extends T> list, int i10) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (i10 >= 0) {
            if (i10 == 0) {
                return CollectionsKt.n();
            }
            int size = list.size();
            if (i10 >= size) {
                return CollectionsKt.d1(list);
            }
            if (i10 == 1) {
                return CollectionsKt.e(CollectionsKt.C0(list));
            }
            ArrayList arrayList = new ArrayList(i10);
            if (list instanceof RandomAccess) {
                for (int i11 = size - i10; i11 < size; i11++) {
                    arrayList.add(list.get(i11));
                }
            } else {
                ListIterator<? extends T> listIterator = list.listIterator(size - i10);
                while (listIterator.hasNext()) {
                    arrayList.add(listIterator.next());
                }
            }
            return arrayList;
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static boolean[] X0(@NotNull Collection<Boolean> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        boolean[] zArr = new boolean[collection.size()];
        int i10 = 0;
        for (Boolean bool : collection) {
            zArr[i10] = bool.booleanValue();
            i10++;
        }
        return zArr;
    }

    @NotNull
    public static byte[] Y0(@NotNull Collection<Byte> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        byte[] bArr = new byte[collection.size()];
        int i10 = 0;
        for (Byte b10 : collection) {
            bArr[i10] = b10.byteValue();
            i10++;
        }
        return bArr;
    }

    @NotNull
    public static final <T, C extends Collection<? super T>> C Z0(@NotNull Iterable<? extends T> iterable, @NotNull C destination) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        for (T t10 : iterable) {
            destination.add(t10);
        }
        return destination;
    }

    @NotNull
    public static float[] a1(@NotNull Collection<Float> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        float[] fArr = new float[collection.size()];
        int i10 = 0;
        for (Float f10 : collection) {
            fArr[i10] = f10.floatValue();
            i10++;
        }
        return fArr;
    }

    @NotNull
    public static <T> HashSet<T> b1(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        return (HashSet) Z0(iterable, new HashSet(p0.e(CollectionsKt.z(iterable, 12))));
    }

    @NotNull
    public static int[] c1(@NotNull Collection<Integer> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        int[] iArr = new int[collection.size()];
        int i10 = 0;
        for (Integer num : collection) {
            iArr[i10] = num.intValue();
            i10++;
        }
        return iArr;
    }

    @NotNull
    public static <T> List<T> d1(@NotNull Iterable<? extends T> iterable) {
        Object next;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    return CollectionsKt.g1(collection);
                }
                if (iterable instanceof List) {
                    next = ((List) iterable).get(0);
                } else {
                    next = collection.iterator().next();
                }
                return CollectionsKt.e(next);
            }
            return CollectionsKt.n();
        }
        return y.u(f1(iterable));
    }

    @NotNull
    public static <T> Sequence<T> e0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        return new a(iterable);
    }

    @NotNull
    public static long[] e1(@NotNull Collection<Long> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        long[] jArr = new long[collection.size()];
        int i10 = 0;
        for (Long l10 : collection) {
            jArr[i10] = l10.longValue();
            i10++;
        }
        return jArr;
    }

    @NotNull
    public static <T> List<List<T>> f0(@NotNull Iterable<? extends T> iterable, int i10) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        return CollectionsKt.j1(iterable, i10, i10, true);
    }

    @NotNull
    public static final <T> List<T> f1(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            return CollectionsKt.g1((Collection) iterable);
        }
        return (List) Z0(iterable, new ArrayList());
    }

    @Nullable
    public static <T> T firstOrNull(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static <T> boolean g0(@NotNull Iterable<? extends T> iterable, T t10) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(t10);
        }
        if (CollectionsKt.u0(iterable, t10) >= 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public static <T> List<T> g1(@NotNull Collection<? extends T> collection) {
        Intrinsics.checkNotNullParameter(collection, "<this>");
        return new ArrayList(collection);
    }

    public static <T> int h0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        Iterator<? extends T> it = iterable.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            it.next();
            i10++;
            if (i10 < 0) {
                CollectionsKt.x();
            }
        }
        return i10;
    }

    @NotNull
    public static <T> Set<T> h1(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            return new LinkedHashSet((Collection) iterable);
        }
        return (Set) Z0(iterable, new LinkedHashSet());
    }

    @NotNull
    public static <T> List<T> i0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        return CollectionsKt.d1(CollectionsKt.h1(iterable));
    }

    @NotNull
    public static <T> Set<T> i1(@NotNull Iterable<? extends T> iterable) {
        Object next;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    return (Set) Z0(iterable, new LinkedHashSet(p0.e(collection.size())));
                }
                if (iterable instanceof List) {
                    next = ((List) iterable).get(0);
                } else {
                    next = collection.iterator().next();
                }
                return y0.d(next);
            }
            return y0.f();
        }
        return a1.i((Set) Z0(iterable, new LinkedHashSet()));
    }

    @NotNull
    public static <T> List<T> j0(@NotNull Iterable<? extends T> iterable, int i10) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (i10 >= 0) {
            if (i10 == 0) {
                return CollectionsKt.d1(iterable);
            }
            if (iterable instanceof Collection) {
                int size = ((Collection) iterable).size() - i10;
                if (size <= 0) {
                    return CollectionsKt.n();
                }
                if (size == 1) {
                    return CollectionsKt.e(B0(iterable));
                }
                arrayList = new ArrayList(size);
                if (iterable instanceof List) {
                    if (iterable instanceof RandomAccess) {
                        List list = (List) iterable;
                        int size2 = list.size();
                        while (i10 < size2) {
                            arrayList.add(list.get(i10));
                            i10++;
                        }
                    } else {
                        ListIterator listIterator = ((List) iterable).listIterator(i10);
                        while (listIterator.hasNext()) {
                            arrayList.add(listIterator.next());
                        }
                    }
                    return arrayList;
                }
            } else {
                arrayList = new ArrayList();
            }
            int i11 = 0;
            for (T t10 : iterable) {
                if (i11 >= i10) {
                    arrayList.add(t10);
                } else {
                    i11++;
                }
            }
            return y.u(arrayList);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static <T> List<List<T>> j1(@NotNull Iterable<? extends T> iterable, int i10, int i11, boolean z10) {
        int i12;
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        SlidingWindowKt.a(i10, i11);
        if ((iterable instanceof RandomAccess) && (iterable instanceof List)) {
            List list = (List) iterable;
            int size = list.size();
            int i13 = size / i11;
            if (size % i11 == 0) {
                i12 = 0;
            } else {
                i12 = 1;
            }
            ArrayList arrayList = new ArrayList(i13 + i12);
            int i14 = 0;
            while (i14 >= 0 && i14 < size) {
                int j10 = kotlin.ranges.e.j(i10, size - i14);
                if (j10 < i10 && !z10) {
                    break;
                }
                ArrayList arrayList2 = new ArrayList(j10);
                for (int i15 = 0; i15 < j10; i15++) {
                    arrayList2.add(list.get(i15 + i14));
                }
                arrayList.add(arrayList2);
                i14 += i11;
            }
            return arrayList;
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator b10 = SlidingWindowKt.b(iterable.iterator(), i10, i11, z10, false);
        while (b10.hasNext()) {
            arrayList3.add((List) b10.next());
        }
        return arrayList3;
    }

    @NotNull
    public static <T> List<T> k0(@NotNull List<? extends T> list, int i10) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (i10 >= 0) {
            return CollectionsKt.V0(list, kotlin.ranges.e.e(list.size() - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static final <T, R> List<R> k1(@NotNull Iterable<? extends T> iterable, int i10, int i11, boolean z10, @NotNull Function1<? super List<? extends T>, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        SlidingWindowKt.a(i10, i11);
        int i12 = 1;
        if ((iterable instanceof RandomAccess) && (iterable instanceof List)) {
            List list = (List) iterable;
            int size = list.size();
            int i13 = size / i11;
            int i14 = 0;
            if (size % i11 == 0) {
                i12 = 0;
            }
            ArrayList arrayList = new ArrayList(i13 + i12);
            v0 v0Var = new v0(list);
            while (i14 >= 0 && i14 < size) {
                int j10 = kotlin.ranges.e.j(i10, size - i14);
                if (!z10 && j10 < i10) {
                    break;
                }
                v0Var.e(i14, j10 + i14);
                arrayList.add(transform.invoke(v0Var));
                i14 += i11;
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator b10 = SlidingWindowKt.b(iterable.iterator(), i10, i11, z10, true);
        while (b10.hasNext()) {
            arrayList2.add(transform.invoke((List) b10.next()));
        }
        return arrayList2;
    }

    public static <T> T l0(@NotNull Iterable<? extends T> iterable, final int i10) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) ((List) iterable).get(i10);
        }
        return (T) n0(iterable, i10, new Function1() { // from class: kotlin.collections.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object m02;
                m02 = CollectionsKt___CollectionsKt.m0(i10, ((Integer) obj).intValue());
                return m02;
            }
        });
    }

    public static /* synthetic */ List l1(Iterable iterable, int i10, int i11, boolean z10, Function1 function1, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i11 = 1;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return k1(iterable, i10, i11, z10, function1);
    }

    public static final Object m0(int i10, int i11) {
        throw new IndexOutOfBoundsException("Collection doesn't contain element at index " + i10 + '.');
    }

    @NotNull
    public static <T, R> List<Pair<T, R>> m1(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends R> other) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Iterator<? extends T> it = iterable.iterator();
        Iterator<? extends R> it2 = other.iterator();
        ArrayList arrayList = new ArrayList(Math.min(CollectionsKt.z(iterable, 10), CollectionsKt.z(other, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList.add(ms.k.a(it.next(), it2.next()));
        }
        return arrayList;
    }

    public static final <T> T n0(@NotNull Iterable<? extends T> iterable, int i10, @NotNull Function1<? super Integer, ? extends T> defaultValue) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (i10 >= 0 && i10 < list.size()) {
                return (T) list.get(i10);
            }
            return defaultValue.invoke(Integer.valueOf(i10));
        } else if (i10 < 0) {
            return defaultValue.invoke(Integer.valueOf(i10));
        } else {
            int i11 = 0;
            for (T t10 : iterable) {
                int i12 = i11 + 1;
                if (i10 == i11) {
                    return t10;
                }
                i11 = i12;
            }
            return defaultValue.invoke(Integer.valueOf(i10));
        }
    }

    @NotNull
    public static <T> List<T> o0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        return (List) CollectionsKt.p0(iterable, new ArrayList());
    }

    @NotNull
    public static <C extends Collection<? super T>, T> C p0(@NotNull Iterable<? extends T> iterable, @NotNull C destination) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        for (T t10 : iterable) {
            if (t10 != null) {
                destination.add(t10);
            }
        }
        return destination;
    }

    public static <T> T q0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof List) {
            return (T) CollectionsKt.r0((List) iterable);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (it.hasNext()) {
            return it.next();
        }
        throw new NoSuchElementException("Collection is empty.");
    }

    public static <T> T r0(@NotNull List<? extends T> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (!list.isEmpty()) {
            return list.get(0);
        }
        throw new NoSuchElementException("List is empty.");
    }

    @Nullable
    public static <T> T s0(@NotNull Iterable<? extends T> iterable) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (list.isEmpty()) {
                return null;
            }
            return (T) list.get(0);
        }
        Iterator<? extends T> it = iterable.iterator();
        if (!it.hasNext()) {
            return null;
        }
        return it.next();
    }

    @Nullable
    public static <T> T t0(@NotNull List<? extends T> list, int i10) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (i10 >= 0 && i10 < list.size()) {
            return list.get(i10);
        }
        return null;
    }

    public static <T> int u0(@NotNull Iterable<? extends T> iterable, T t10) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(t10);
        }
        int i10 = 0;
        for (T t11 : iterable) {
            if (i10 < 0) {
                CollectionsKt.y();
            }
            if (Intrinsics.areEqual(t10, t11)) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static <T> int v0(@NotNull List<? extends T> list, T t10) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        return list.indexOf(t10);
    }

    @NotNull
    public static <T> Set<T> w0(@NotNull Iterable<? extends T> iterable, @NotNull Iterable<? extends T> other) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        Set<T> h12 = CollectionsKt.h1(iterable);
        CollectionsKt.U(h12, other);
        return h12;
    }

    @NotNull
    public static final <T, A extends Appendable> A x0(@NotNull Iterable<? extends T> iterable, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (T t10 : iterable) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            StringsKt.a(buffer, t10, function1);
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static /* synthetic */ Appendable y0(Iterable iterable, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function1 function1, int i11, Object obj) {
        CharSequence charSequence5;
        CharSequence charSequence6;
        int i12;
        CharSequence charSequence7;
        Function1 function12;
        if ((i11 & 2) != 0) {
            charSequence5 = ", ";
        } else {
            charSequence5 = charSequence;
        }
        CharSequence charSequence8 = "";
        if ((i11 & 4) != 0) {
            charSequence6 = "";
        } else {
            charSequence6 = charSequence2;
        }
        if ((i11 & 8) == 0) {
            charSequence8 = charSequence3;
        }
        if ((i11 & 16) != 0) {
            i12 = -1;
        } else {
            i12 = i10;
        }
        if ((i11 & 32) != 0) {
            charSequence7 = "...";
        } else {
            charSequence7 = charSequence4;
        }
        if ((i11 & 64) != 0) {
            function12 = null;
        } else {
            function12 = function1;
        }
        return x0(iterable, appendable, charSequence5, charSequence6, charSequence8, i12, charSequence7, function12);
    }

    @NotNull
    public static final <T> String z0(@NotNull Iterable<? extends T> iterable, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(iterable, "<this>");
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        return ((StringBuilder) x0(iterable, new StringBuilder(), separator, prefix, postfix, i10, truncated, function1)).toString();
    }
}
