package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Strings.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b implements Sequence<IntRange> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CharSequence f61177a;

    /* renamed from: b  reason: collision with root package name */
    private final int f61178b;

    /* renamed from: c  reason: collision with root package name */
    private final int f61179c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Function2<CharSequence, Integer, Pair<Integer, Integer>> f61180d;

    /* compiled from: Strings.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements Iterator<IntRange>, KMappedMarker {

        /* renamed from: a  reason: collision with root package name */
        private int f61181a = -1;

        /* renamed from: b  reason: collision with root package name */
        private int f61182b;

        /* renamed from: c  reason: collision with root package name */
        private int f61183c;

        /* renamed from: d  reason: collision with root package name */
        private IntRange f61184d;

        /* renamed from: e  reason: collision with root package name */
        private int f61185e;

        a() {
            int n10 = kotlin.ranges.e.n(b.this.f61178b, 0, b.this.f61177a.length());
            this.f61182b = n10;
            this.f61183c = n10;
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
            if (r0 < r6.f61186f.f61179c) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void a() {
            /*
                r6 = this;
                int r0 = r6.f61183c
                r1 = 0
                if (r0 >= 0) goto Lc
                r6.f61181a = r1
                r0 = 0
                r6.f61184d = r0
                goto L9e
            Lc:
                kotlin.text.b r0 = kotlin.text.b.this
                int r0 = kotlin.text.b.e(r0)
                r2 = -1
                r3 = 1
                if (r0 <= 0) goto L23
                int r0 = r6.f61185e
                int r0 = r0 + r3
                r6.f61185e = r0
                kotlin.text.b r4 = kotlin.text.b.this
                int r4 = kotlin.text.b.e(r4)
                if (r0 >= r4) goto L31
            L23:
                int r0 = r6.f61183c
                kotlin.text.b r4 = kotlin.text.b.this
                java.lang.CharSequence r4 = kotlin.text.b.d(r4)
                int r4 = r4.length()
                if (r0 <= r4) goto L47
            L31:
                kotlin.ranges.IntRange r0 = new kotlin.ranges.IntRange
                int r1 = r6.f61182b
                kotlin.text.b r4 = kotlin.text.b.this
                java.lang.CharSequence r4 = kotlin.text.b.d(r4)
                int r4 = kotlin.text.StringsKt.k0(r4)
                r0.<init>(r1, r4)
                r6.f61184d = r0
                r6.f61183c = r2
                goto L9c
            L47:
                kotlin.text.b r0 = kotlin.text.b.this
                kotlin.jvm.functions.Function2 r0 = kotlin.text.b.c(r0)
                kotlin.text.b r4 = kotlin.text.b.this
                java.lang.CharSequence r4 = kotlin.text.b.d(r4)
                int r5 = r6.f61183c
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                java.lang.Object r0 = r0.invoke(r4, r5)
                kotlin.Pair r0 = (kotlin.Pair) r0
                if (r0 != 0) goto L77
                kotlin.ranges.IntRange r0 = new kotlin.ranges.IntRange
                int r1 = r6.f61182b
                kotlin.text.b r4 = kotlin.text.b.this
                java.lang.CharSequence r4 = kotlin.text.b.d(r4)
                int r4 = kotlin.text.StringsKt.k0(r4)
                r0.<init>(r1, r4)
                r6.f61184d = r0
                r6.f61183c = r2
                goto L9c
            L77:
                java.lang.Object r2 = r0.b()
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                java.lang.Object r0 = r0.d()
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r4 = r6.f61182b
                kotlin.ranges.IntRange r4 = kotlin.ranges.e.v(r4, r2)
                r6.f61184d = r4
                int r2 = r2 + r0
                r6.f61182b = r2
                if (r0 != 0) goto L99
                r1 = r3
            L99:
                int r2 = r2 + r1
                r6.f61183c = r2
            L9c:
                r6.f61181a = r3
            L9e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.text.b.a.a():void");
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public IntRange next() {
            if (this.f61181a == -1) {
                a();
            }
            if (this.f61181a != 0) {
                IntRange intRange = this.f61184d;
                Intrinsics.checkNotNull(intRange, "null cannot be cast to non-null type kotlin.ranges.IntRange");
                this.f61184d = null;
                this.f61181a = -1;
                return intRange;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f61181a == -1) {
                a();
            }
            if (this.f61181a == 1) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(@NotNull CharSequence input, int i10, int i11, @NotNull Function2<? super CharSequence, ? super Integer, Pair<Integer, Integer>> getNextMatch) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(getNextMatch, "getNextMatch");
        this.f61177a = input;
        this.f61178b = i10;
        this.f61179c = i11;
        this.f61180d = getNextMatch;
    }

    @Override // kotlin.sequences.Sequence
    @NotNull
    public Iterator<IntRange> iterator() {
        return new a();
    }
}
