package kotlin.collections;

import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SlidingWindow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,206:1\n204#1:208\n204#1:209\n204#1:210\n1#2:207\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n106#1:208\n175#1:209\n188#1:210\n*E\n"})
/* loaded from: classes8.dex */
final class x0<T> extends d<T> implements RandomAccess {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Object[] f61029a;

    /* renamed from: b  reason: collision with root package name */
    private final int f61030b;

    /* renamed from: c  reason: collision with root package name */
    private int f61031c;

    /* renamed from: d  reason: collision with root package name */
    private int f61032d;

    /* compiled from: SlidingWindow.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n+ 2 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n1#1,206:1\n204#2:207\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer$iterator$1\n*L\n121#1:207\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a extends c<T> {

        /* renamed from: c  reason: collision with root package name */
        private int f61033c;

        /* renamed from: d  reason: collision with root package name */
        private int f61034d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ x0<T> f61035e;

        a(x0<T> x0Var) {
            this.f61035e = x0Var;
            this.f61033c = x0Var.size();
            this.f61034d = ((x0) x0Var).f61031c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.collections.c
        protected void a() {
            if (this.f61033c == 0) {
                b();
                return;
            }
            c(((x0) this.f61035e).f61029a[this.f61034d]);
            this.f61034d = (this.f61034d + 1) % ((x0) this.f61035e).f61030b;
            this.f61033c--;
        }
    }

    public x0(@NotNull Object[] buffer, int i10) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        this.f61029a = buffer;
        if (i10 >= 0) {
            if (i10 <= buffer.length) {
                this.f61030b = buffer.length;
                this.f61032d = i10;
                return;
            }
            throw new IllegalArgumentException(("ring buffer filled size: " + i10 + " cannot be larger than the buffer size: " + buffer.length).toString());
        }
        throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i10).toString());
    }

    @Override // kotlin.collections.d, java.util.List
    public T get(int i10) {
        d.Companion.b(i10, size());
        return (T) this.f61029a[(this.f61031c + i10) % this.f61030b];
    }

    @Override // kotlin.collections.d, kotlin.collections.b
    public int getSize() {
        return this.f61032d;
    }

    public final void i(T t10) {
        if (!n()) {
            this.f61029a[(this.f61031c + size()) % this.f61030b] = t10;
            this.f61032d = size() + 1;
            return;
        }
        throw new IllegalStateException("ring buffer is full");
    }

    @Override // kotlin.collections.d, kotlin.collections.b, java.util.Collection, java.lang.Iterable, java.util.List
    @NotNull
    public Iterator<T> iterator() {
        return new a(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final x0<T> j(int i10) {
        Object[] array;
        int i11 = this.f61030b;
        int j10 = kotlin.ranges.e.j(i11 + (i11 >> 1) + 1, i10);
        if (this.f61031c == 0) {
            array = Arrays.copyOf(this.f61029a, j10);
            Intrinsics.checkNotNullExpressionValue(array, "copyOf(...)");
        } else {
            array = toArray(new Object[j10]);
        }
        return new x0<>(array, size());
    }

    public final boolean n() {
        if (size() == this.f61030b) {
            return true;
        }
        return false;
    }

    public final void q(int i10) {
        if (i10 >= 0) {
            if (i10 <= size()) {
                if (i10 > 0) {
                    int i11 = this.f61031c;
                    int i12 = (i11 + i10) % this.f61030b;
                    if (i11 > i12) {
                        n.C(this.f61029a, null, i11, this.f61030b);
                        n.C(this.f61029a, null, 0, i12);
                    } else {
                        n.C(this.f61029a, null, i11, i12);
                    }
                    this.f61031c = i12;
                    this.f61032d = size() - i10;
                    return;
                }
                return;
            }
            throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i10 + ", size = " + size()).toString());
        }
        throw new IllegalArgumentException(("n shouldn't be negative but it is " + i10).toString());
    }

    @Override // kotlin.collections.b, java.util.Collection
    @NotNull
    public <T> T[] toArray(@NotNull T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        int length = array.length;
        T[] tArr = array;
        if (length < size()) {
            T[] tArr2 = (T[]) Arrays.copyOf(array, size());
            Intrinsics.checkNotNullExpressionValue(tArr2, "copyOf(...)");
            tArr = tArr2;
        }
        int size = size();
        int i10 = 0;
        int i11 = 0;
        for (int i12 = this.f61031c; i11 < size && i12 < this.f61030b; i12++) {
            tArr[i11] = this.f61029a[i12];
            i11++;
        }
        while (i11 < size) {
            tArr[i11] = this.f61029a[i10];
            i11++;
            i10++;
        }
        return (T[]) CollectionsKt.g(size, tArr);
    }

    public x0(int i10) {
        this(new Object[i10], 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.b, java.util.Collection
    @NotNull
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
