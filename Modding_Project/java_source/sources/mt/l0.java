package mt;

import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import mt.m0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ThreadSafeHeap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nThreadSafeHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n29#2:160\n29#2:162\n29#2:164\n29#2:166\n29#2:168\n29#2:170\n29#2:172\n16#3:161\n16#3:163\n16#3:165\n16#3:167\n16#3:169\n16#3:171\n16#3:173\n1#4:174\n*S KotlinDebug\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n33#1:160\n41#1:162\n43#1:164\n51#1:166\n60#1:168\n63#1:170\n72#1:172\n33#1:161\n41#1:163\n43#1:165\n51#1:167\n60#1:169\n63#1:171\n72#1:173\n*E\n"})
/* loaded from: classes8.dex */
public class l0<T extends m0 & Comparable<? super T>> {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f62686b = AtomicIntegerFieldUpdater.newUpdater(l0.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private T[] f62687a;

    private final T[] g() {
        T[] tArr = this.f62687a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new m0[4];
            this.f62687a = tArr2;
            return tArr2;
        } else if (c() >= tArr.length) {
            Object[] copyOf = Arrays.copyOf(tArr, c() * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            T[] tArr3 = (T[]) ((m0[]) copyOf);
            this.f62687a = tArr3;
            return tArr3;
        } else {
            return tArr;
        }
    }

    private final void k(int i10) {
        f62686b.set(this, i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0028, code lost:
        if (((java.lang.Comparable) r3).compareTo(r4) < 0) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void l(int r6) {
        /*
            r5 = this;
        L0:
            int r0 = r6 * 2
            int r1 = r0 + 1
            int r2 = r5.c()
            if (r1 < r2) goto Lb
            return
        Lb:
            T extends mt.m0 & java.lang.Comparable<? super T>[] r2 = r5.f62687a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            int r0 = r0 + 2
            int r3 = r5.c()
            if (r0 >= r3) goto L2b
            r3 = r2[r0]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            java.lang.Comparable r3 = (java.lang.Comparable) r3
            r4 = r2[r1]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            int r3 = r3.compareTo(r4)
            if (r3 >= 0) goto L2b
            goto L2c
        L2b:
            r0 = r1
        L2c:
            r1 = r2[r6]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            java.lang.Comparable r1 = (java.lang.Comparable) r1
            r2 = r2[r0]
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            int r1 = r1.compareTo(r2)
            if (r1 > 0) goto L3f
            return
        L3f:
            r5.n(r6, r0)
            r6 = r0
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: mt.l0.l(int):void");
    }

    private final void m(int i10) {
        while (i10 > 0) {
            T[] tArr = this.f62687a;
            Intrinsics.checkNotNull(tArr);
            int i11 = (i10 - 1) / 2;
            T t10 = tArr[i11];
            Intrinsics.checkNotNull(t10);
            T t11 = tArr[i10];
            Intrinsics.checkNotNull(t11);
            if (((Comparable) t10).compareTo(t11) <= 0) {
                return;
            }
            n(i10, i11);
            i10 = i11;
        }
    }

    private final void n(int i10, int i11) {
        T[] tArr = this.f62687a;
        Intrinsics.checkNotNull(tArr);
        T t10 = tArr[i11];
        Intrinsics.checkNotNull(t10);
        T t11 = tArr[i10];
        Intrinsics.checkNotNull(t11);
        tArr[i10] = t10;
        tArr[i11] = t11;
        t10.setIndex(i10);
        t11.setIndex(i11);
    }

    public final void a(@NotNull T t10) {
        t10.e(this);
        T[] g10 = g();
        int c10 = c();
        k(c10 + 1);
        g10[c10] = t10;
        t10.setIndex(c10);
        m(c10);
    }

    @Nullable
    public final T b() {
        T[] tArr = this.f62687a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final int c() {
        return f62686b.get(this);
    }

    public final boolean e() {
        if (c() == 0) {
            return true;
        }
        return false;
    }

    @Nullable
    public final T f() {
        T b10;
        synchronized (this) {
            b10 = b();
        }
        return b10;
    }

    public final boolean h(@NotNull T t10) {
        boolean z10;
        synchronized (this) {
            if (t10.c() == null) {
                z10 = false;
            } else {
                i(t10.getIndex());
                z10 = true;
            }
        }
        return z10;
    }

    @NotNull
    public final T i(int i10) {
        T[] tArr = this.f62687a;
        Intrinsics.checkNotNull(tArr);
        k(c() - 1);
        if (i10 < c()) {
            n(i10, c());
            int i11 = (i10 - 1) / 2;
            if (i10 > 0) {
                T t10 = tArr[i10];
                Intrinsics.checkNotNull(t10);
                T t11 = tArr[i11];
                Intrinsics.checkNotNull(t11);
                if (((Comparable) t10).compareTo(t11) < 0) {
                    n(i10, i11);
                    m(i11);
                }
            }
            l(i10);
        }
        T t12 = tArr[c()];
        Intrinsics.checkNotNull(t12);
        t12.e(null);
        t12.setIndex(-1);
        tArr[c()] = null;
        return t12;
    }

    @Nullable
    public final T j() {
        T t10;
        synchronized (this) {
            if (c() > 0) {
                t10 = i(0);
            } else {
                t10 = null;
            }
        }
        return t10;
    }
}
