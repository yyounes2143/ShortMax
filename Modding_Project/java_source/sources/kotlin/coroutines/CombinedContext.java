package kotlin.coroutines;

import java.io.Serializable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CombinedContext;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineContextImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1#2:197\n*E\n"})
/* loaded from: classes8.dex */
public final class CombinedContext implements CoroutineContext, Serializable {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CoroutineContext f61036a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final CoroutineContext.Element f61037b;

    /* compiled from: CoroutineContextImpl.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext$Serialized\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,196:1\n12813#2,3:197\n*S KotlinDebug\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext$Serialized\n*L\n193#1:197,3\n*E\n"})
    /* loaded from: classes8.dex */
    private static final class Serialized implements Serializable {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final a f61038b = new a(null);
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final CoroutineContext[] f61039a;

        /* compiled from: CoroutineContextImpl.kt */
        @Metadata
        /* loaded from: classes8.dex */
        public static final class a {
            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public Serialized(@NotNull CoroutineContext[] elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            this.f61039a = elements;
        }

        private final Object readResolve() {
            CoroutineContext[] coroutineContextArr = this.f61039a;
            CoroutineContext coroutineContext = EmptyCoroutineContext.f61040a;
            for (CoroutineContext coroutineContext2 : coroutineContextArr) {
                coroutineContext = coroutineContext.plus(coroutineContext2);
            }
            return coroutineContext;
        }
    }

    public CombinedContext(@NotNull CoroutineContext left, @NotNull CoroutineContext.Element element) {
        Intrinsics.checkNotNullParameter(left, "left");
        Intrinsics.checkNotNullParameter(element, "element");
        this.f61036a = left;
        this.f61037b = element;
    }

    private final boolean f(CoroutineContext.Element element) {
        return Intrinsics.areEqual(get(element.getKey()), element);
    }

    private final boolean h(CombinedContext combinedContext) {
        while (f(combinedContext.f61037b)) {
            CoroutineContext coroutineContext = combinedContext.f61036a;
            if (coroutineContext instanceof CombinedContext) {
                combinedContext = (CombinedContext) coroutineContext;
            } else {
                Intrinsics.checkNotNull(coroutineContext, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                return f((CoroutineContext.Element) coroutineContext);
            }
        }
        return false;
    }

    private final int j() {
        int i10 = 2;
        CombinedContext combinedContext = this;
        while (true) {
            CoroutineContext coroutineContext = combinedContext.f61036a;
            if (coroutineContext instanceof CombinedContext) {
                combinedContext = (CombinedContext) coroutineContext;
            } else {
                combinedContext = null;
            }
            if (combinedContext == null) {
                return i10;
            }
            i10++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String n(String acc, CoroutineContext.Element element) {
        Intrinsics.checkNotNullParameter(acc, "acc");
        Intrinsics.checkNotNullParameter(element, "element");
        if (acc.length() == 0) {
            return element.toString();
        }
        return acc + ", " + element;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r(CoroutineContext[] coroutineContextArr, Ref.IntRef intRef, Unit unit, CoroutineContext.Element element) {
        Intrinsics.checkNotNullParameter(unit, "<unused var>");
        Intrinsics.checkNotNullParameter(element, "element");
        int i10 = intRef.element;
        intRef.element = i10 + 1;
        coroutineContextArr[i10] = element;
        return Unit.f60915a;
    }

    private final Object writeReplace() {
        int j10 = j();
        final CoroutineContext[] coroutineContextArr = new CoroutineContext[j10];
        final Ref.IntRef intRef = new Ref.IntRef();
        fold(Unit.f60915a, new Function2() { // from class: rs.a
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit r10;
                r10 = CombinedContext.r(coroutineContextArr, intRef, (Unit) obj, (CoroutineContext.Element) obj2);
                return r10;
            }
        });
        if (intRef.element == j10) {
            return new Serialized(coroutineContextArr);
        }
        throw new IllegalStateException("Check failed.");
    }

    public boolean equals(@Nullable Object obj) {
        if (this != obj) {
            if (obj instanceof CombinedContext) {
                CombinedContext combinedContext = (CombinedContext) obj;
                if (combinedContext.j() != j() || !combinedContext.h(this)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> operation) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        return operation.invoke((Object) this.f61036a.fold(r10, operation), this.f61037b);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.b<E> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        CombinedContext combinedContext = this;
        while (true) {
            E e10 = (E) combinedContext.f61037b.get(key);
            if (e10 != null) {
                return e10;
            }
            CoroutineContext coroutineContext = combinedContext.f61036a;
            if (coroutineContext instanceof CombinedContext) {
                combinedContext = (CombinedContext) coroutineContext;
            } else {
                return (E) coroutineContext.get(key);
            }
        }
    }

    public int hashCode() {
        return this.f61036a.hashCode() + this.f61037b.hashCode();
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.b<?> key) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.f61037b.get(key) != null) {
            return this.f61036a;
        }
        CoroutineContext minusKey = this.f61036a.minusKey(key);
        if (minusKey == this.f61036a) {
            return this;
        }
        if (minusKey == EmptyCoroutineContext.f61040a) {
            return this.f61037b;
        }
        return new CombinedContext(minusKey, this.f61037b);
    }

    @Override // kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext plus(@NotNull CoroutineContext coroutineContext) {
        return CoroutineContext.a.b(this, coroutineContext);
    }

    @NotNull
    public String toString() {
        return '[' + ((String) fold("", new Function2() { // from class: rs.b
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                String n10;
                n10 = CombinedContext.n((String) obj, (CoroutineContext.Element) obj2);
                return n10;
            }
        })) + ']';
    }
}
