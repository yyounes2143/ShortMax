package kotlin.sequences;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: _Sequences.kt */
@Metadata
@SourceDebugExtension({"SMAP\n_Sequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,3112:1\n183#1,2:3113\n320#1,7:3115\n1328#1,3:3123\n743#1,4:3126\n708#1,4:3130\n726#1,4:3134\n779#1,4:3138\n1021#1,3:3142\n1024#1,3:3152\n1041#1,3:3155\n1044#1,3:3165\n1328#1,3:3182\n1317#1,2:3185\n1#2:3122\n381#3,7:3145\n381#3,7:3158\n381#3,7:3168\n381#3,7:3175\n*S KotlinDebug\n*F\n+ 1 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n91#1:3113,2\n103#1:3115,7\n462#1:3123,3\n662#1:3126,4\n678#1:3130,4\n693#1:3134,4\n764#1:3138,4\n992#1:3142,3\n992#1:3152,3\n1007#1:3155,3\n1007#1:3165,3\n1110#1:3182,3\n1148#1:3185,2\n992#1:3145,7\n1007#1:3158,7\n1023#1:3168,7\n1043#1:3175,7\n*E\n"})
/* loaded from: classes8.dex */
public class SequencesKt___SequencesKt extends p {

    /* compiled from: Iterables.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nIterables.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Iterables.kt\nkotlin/collections/CollectionsKt__IterablesKt$Iterable$1\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,17:1\n2921#2:18\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a<T> implements Iterable<T>, KMappedMarker {

        /* renamed from: a */
        final /* synthetic */ Sequence f61090a;

        public a(Sequence sequence) {
            this.f61090a = sequence;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return this.f61090a.iterator();
        }
    }

    /* compiled from: _Sequences.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b<T> implements Sequence<T> {

        /* renamed from: a */
        final /* synthetic */ Sequence<T> f61091a;

        /* renamed from: b */
        final /* synthetic */ Comparator<? super T> f61092b;

        /* JADX WARN: Multi-variable type inference failed */
        b(Sequence<? extends T> sequence, Comparator<? super T> comparator) {
            this.f61091a = sequence;
            this.f61092b = comparator;
        }

        @Override // kotlin.sequences.Sequence
        public Iterator<T> iterator() {
            List Q = SequencesKt___SequencesKt.Q(this.f61091a);
            CollectionsKt.D(Q, this.f61092b);
            return Q.iterator();
        }
    }

    public static final <T> int A(@NotNull Sequence<? extends T> sequence, T t10) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        int i10 = 0;
        for (T t11 : sequence) {
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

    @NotNull
    public static final <T, A extends Appendable> A B(@NotNull Sequence<? extends T> sequence, @NotNull A buffer, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (T t10 : sequence) {
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

    @NotNull
    public static final <T> String C(@NotNull Sequence<? extends T> sequence, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(separator, "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter(truncated, "truncated");
        return ((StringBuilder) B(sequence, new StringBuilder(), separator, prefix, postfix, i10, truncated, function1)).toString();
    }

    public static /* synthetic */ String D(Sequence sequence, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function1 function1, int i11, Object obj) {
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
        return C(sequence, charSequence, charSequence5, charSequence6, i12, charSequence7, function1);
    }

    public static <T> T E(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Iterator<? extends T> it = sequence.iterator();
        if (it.hasNext()) {
            T next = it.next();
            while (it.hasNext()) {
                next = it.next();
            }
            return next;
        }
        throw new NoSuchElementException("Sequence is empty.");
    }

    @NotNull
    public static <T, R> Sequence<R> F(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        return new v(sequence, transform);
    }

    @NotNull
    public static <T, R> Sequence<R> G(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, ? extends R> transform) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        return v(new v(sequence, transform));
    }

    @Nullable
    public static <T extends Comparable<? super T>> T H(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Iterator<? extends T> it = sequence.iterator();
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

    @NotNull
    public static <T> Sequence<T> I(@NotNull Sequence<? extends T> sequence, @NotNull final Function1<? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        return j.F(sequence, new Function1() { // from class: kotlin.sequences.r
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object J;
                J = SequencesKt___SequencesKt.J(Function1.this, obj);
                return J;
            }
        });
    }

    public static final Object J(Function1 function1, Object obj) {
        function1.invoke(obj);
        return obj;
    }

    @NotNull
    public static <T, R> Sequence<R> K(@NotNull Sequence<? extends T> sequence, R r10, @NotNull Function2<? super R, ? super T, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(operation, "operation");
        return j.b(new SequencesKt___SequencesKt$runningFold$1(r10, sequence, operation, null));
    }

    @NotNull
    public static <T> Sequence<T> L(@NotNull Sequence<? extends T> sequence, @NotNull Comparator<? super T> comparator) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        return new b(sequence, comparator);
    }

    @NotNull
    public static <T> Sequence<T> M(@NotNull Sequence<? extends T> sequence, int i10) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        if (i10 >= 0) {
            if (i10 == 0) {
                return j.g();
            }
            if (sequence instanceof c) {
                return ((c) sequence).b(i10);
            }
            return new t(sequence, i10);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static <T> Sequence<T> N(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return new u(sequence, predicate);
    }

    @NotNull
    public static final <T, C extends Collection<? super T>> C O(@NotNull Sequence<? extends T> sequence, @NotNull C destination) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(destination, "destination");
        for (T t10 : sequence) {
            destination.add(t10);
        }
        return destination;
    }

    @NotNull
    public static <T> List<T> P(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Iterator<? extends T> it = sequence.iterator();
        if (!it.hasNext()) {
            return CollectionsKt.n();
        }
        T next = it.next();
        if (!it.hasNext()) {
            return CollectionsKt.e(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    @NotNull
    public static final <T> List<T> Q(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        return (List) O(sequence, new ArrayList());
    }

    @NotNull
    public static <T> Iterable<T> p(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        return new a(sequence);
    }

    public static <T> boolean q(@NotNull Sequence<? extends T> sequence, T t10) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        if (A(sequence, t10) >= 0) {
            return true;
        }
        return false;
    }

    public static <T> int r(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Iterator<? extends T> it = sequence.iterator();
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

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> Sequence<T> s(@NotNull Sequence<? extends T> sequence, int i10) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        if (i10 >= 0) {
            if (i10 != 0) {
                if (sequence instanceof c) {
                    return ((c) sequence).a(i10);
                }
                return new kotlin.sequences.b(sequence, i10);
            }
            return sequence;
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    @NotNull
    public static <T> Sequence<T> t(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return new e(sequence, true, predicate);
    }

    @NotNull
    public static final <T> Sequence<T> u(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        return new e(sequence, false, predicate);
    }

    @NotNull
    public static final <T> Sequence<T> v(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Sequence<T> u10 = u(sequence, new Function1() { // from class: kotlin.sequences.q
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean w10;
                w10 = SequencesKt___SequencesKt.w(obj);
                return Boolean.valueOf(w10);
            }
        });
        Intrinsics.checkNotNull(u10, "null cannot be cast to non-null type kotlin.sequences.Sequence<T of kotlin.sequences.SequencesKt___SequencesKt.filterNotNull>");
        return u10;
    }

    public static final boolean w(Object obj) {
        if (obj == null) {
            return true;
        }
        return false;
    }

    @Nullable
    public static <T> T x(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Iterator<? extends T> it = sequence.iterator();
        if (!it.hasNext()) {
            return null;
        }
        return it.next();
    }

    @NotNull
    public static <T, R> Sequence<R> y(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, ? extends Sequence<? extends R>> transform) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        return new f(sequence, transform, SequencesKt___SequencesKt$flatMap$2.f61094a);
    }

    @NotNull
    public static <T, R> Sequence<R> z(@NotNull Sequence<? extends T> sequence, @NotNull Function1<? super T, ? extends Iterable<? extends R>> transform) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        return new f(sequence, transform, SequencesKt___SequencesKt$flatMap$1.f61093a);
    }
}
