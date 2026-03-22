package kotlin.sequences;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Sequences.kt */
@Metadata
/* loaded from: classes8.dex */
public class o extends l {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* compiled from: Sequences.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt$Sequence$1\n+ 2 Sequences.kt\nkotlin/sequences/SequencesKt__SequencesKt\n*L\n1#1,22:1\n30#2:23\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a<T> implements Sequence<T> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Iterator f61134a;

        public a(Iterator it) {
            this.f61134a = it;
        }

        @Override // kotlin.sequences.Sequence
        public Iterator<T> iterator() {
            return this.f61134a;
        }
    }

    @NotNull
    public static <T> Sequence<T> e(@NotNull Iterator<? extends T> it) {
        Intrinsics.checkNotNullParameter(it, "<this>");
        return j.f(new a(it));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static <T> Sequence<T> f(@NotNull Sequence<? extends T> sequence) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        if (!(sequence instanceof kotlin.sequences.a)) {
            return new kotlin.sequences.a(sequence);
        }
        return sequence;
    }

    @NotNull
    public static <T> Sequence<T> g() {
        return d.f61107a;
    }

    @NotNull
    public static <T> Sequence<T> h(@Nullable final T t10, @NotNull Function1<? super T, ? extends T> nextFunction) {
        Intrinsics.checkNotNullParameter(nextFunction, "nextFunction");
        if (t10 == null) {
            return d.f61107a;
        }
        return new g(new Function0() { // from class: kotlin.sequences.m
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object l10;
                l10 = o.l(t10);
                return l10;
            }
        }, nextFunction);
    }

    @NotNull
    public static <T> Sequence<T> i(@NotNull final Function0<? extends T> nextFunction) {
        Intrinsics.checkNotNullParameter(nextFunction, "nextFunction");
        return j.f(new g(nextFunction, new Function1() { // from class: kotlin.sequences.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object k10;
                k10 = o.k(Function0.this, obj);
                return k10;
            }
        }));
    }

    @NotNull
    public static <T> Sequence<T> j(@NotNull Function0<? extends T> seedFunction, @NotNull Function1<? super T, ? extends T> nextFunction) {
        Intrinsics.checkNotNullParameter(seedFunction, "seedFunction");
        Intrinsics.checkNotNullParameter(nextFunction, "nextFunction");
        return new g(seedFunction, nextFunction);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object k(Function0 function0, Object it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return function0.invoke();
    }

    @NotNull
    public static <T> Sequence<T> m(@NotNull T... elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return kotlin.collections.n.a0(elements);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object l(Object obj) {
        return obj;
    }
}
