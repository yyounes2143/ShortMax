package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.internal.System_jvmKt;
import androidx.compose.runtime.internal.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.TestOnly;
/* compiled from: SnapshotWeakSet.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotWeakSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotWeakSet.kt\nandroidx/compose/runtime/snapshots/SnapshotWeakSet\n+ 2 ArrayUtils.android.kt\nandroidx/compose/runtime/collection/ArrayUtils_androidKt\n*L\n1#1,243:1\n27#2,2:244\n27#2,2:246\n27#2,2:248\n*S KotlinDebug\n*F\n+ 1 SnapshotWeakSet.kt\nandroidx/compose/runtime/snapshots/SnapshotWeakSet\n*L\n74#1:244,2\n80#1:246,2\n96#1:248,2\n*E\n"})
/* loaded from: classes.dex */
public final class SnapshotWeakSet<T> {
    public static final int $stable = 8;
    private int size;
    @NotNull
    private int[] hashes = new int[16];
    @NotNull
    private WeakReference<T>[] values = new WeakReference[16];

    private final int find(T t10, int i10) {
        T t11;
        int i11 = this.size - 1;
        int i12 = 0;
        while (i12 <= i11) {
            int i13 = (i12 + i11) >>> 1;
            int i14 = this.hashes[i13];
            if (i14 < i10) {
                i12 = i13 + 1;
            } else if (i14 > i10) {
                i11 = i13 - 1;
            } else {
                WeakReference<T> weakReference = this.values[i13];
                if (weakReference != null) {
                    t11 = weakReference.get();
                } else {
                    t11 = null;
                }
                if (t10 == t11) {
                    return i13;
                }
                return findExactIndex(i13, t10, i10);
            }
        }
        return -(i12 + 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
        return -(r4 + 1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int findExactIndex(int r4, T r5, int r6) {
        /*
            r3 = this;
            int r0 = r4 + (-1)
        L2:
            r1 = 0
            r2 = -1
            if (r2 >= r0) goto L1d
            int[] r2 = r3.hashes
            r2 = r2[r0]
            if (r2 == r6) goto Ld
            goto L1d
        Ld:
            androidx.compose.runtime.internal.WeakReference<T>[] r2 = r3.values
            r2 = r2[r0]
            if (r2 == 0) goto L17
            java.lang.Object r1 = r2.get()
        L17:
            if (r1 != r5) goto L1a
            return r0
        L1a:
            int r0 = r0 + (-1)
            goto L2
        L1d:
            int r4 = r4 + 1
            int r0 = r3.size
        L21:
            if (r4 >= r0) goto L3f
            int[] r2 = r3.hashes
            r2 = r2[r4]
            if (r2 == r6) goto L2d
        L29:
            int r4 = r4 + 1
            int r4 = -r4
            return r4
        L2d:
            androidx.compose.runtime.internal.WeakReference<T>[] r2 = r3.values
            r2 = r2[r4]
            if (r2 == 0) goto L38
            java.lang.Object r2 = r2.get()
            goto L39
        L38:
            r2 = r1
        L39:
            if (r2 != r5) goto L3c
            return r4
        L3c:
            int r4 = r4 + 1
            goto L21
        L3f:
            int r4 = r3.size
            goto L29
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotWeakSet.findExactIndex(int, java.lang.Object, int):int");
    }

    public final boolean add(@NotNull T t10) {
        int i10;
        int i11 = this.size;
        int identityHashCode = System_jvmKt.identityHashCode(t10);
        if (i11 > 0) {
            i10 = find(t10, identityHashCode);
            if (i10 >= 0) {
                return false;
            }
        } else {
            i10 = -1;
        }
        int i12 = -(i10 + 1);
        WeakReference<T>[] weakReferenceArr = this.values;
        int length = weakReferenceArr.length;
        if (i11 == length) {
            int i13 = length * 2;
            WeakReference<T>[] weakReferenceArr2 = new WeakReference[i13];
            int[] iArr = new int[i13];
            int i14 = i12 + 1;
            System.arraycopy(weakReferenceArr, i12, weakReferenceArr2, i14, i11 - i12);
            System.arraycopy(this.values, 0, weakReferenceArr2, 0, i12);
            kotlin.collections.n.l(this.hashes, iArr, i14, i12, i11);
            kotlin.collections.n.s(this.hashes, iArr, 0, 0, i12, 6, null);
            this.values = weakReferenceArr2;
            this.hashes = iArr;
        } else {
            int i15 = i12 + 1;
            System.arraycopy(weakReferenceArr, i12, weakReferenceArr, i15, i11 - i12);
            int[] iArr2 = this.hashes;
            kotlin.collections.n.l(iArr2, iArr2, i15, i12, i11);
        }
        this.values[i12] = new WeakReference<>(t10);
        this.hashes[i12] = identityHashCode;
        this.size++;
        return true;
    }

    @NotNull
    public final int[] getHashes$runtime() {
        return this.hashes;
    }

    public final int getSize$runtime() {
        return this.size;
    }

    @NotNull
    public final WeakReference<T>[] getValues$runtime() {
        return this.values;
    }

    @TestOnly
    public final boolean isValid$runtime() {
        WeakReference<T> weakReference;
        int i10 = this.size;
        WeakReference<T>[] weakReferenceArr = this.values;
        int[] iArr = this.hashes;
        int length = weakReferenceArr.length;
        if (i10 > length) {
            return false;
        }
        int i11 = Integer.MIN_VALUE;
        int i12 = 0;
        while (i12 < i10) {
            int i13 = iArr[i12];
            if (i13 < i11 || (weakReference = weakReferenceArr[i12]) == null) {
                return false;
            }
            T t10 = weakReference.get();
            if (t10 != null && i13 != System_jvmKt.identityHashCode(t10)) {
                return false;
            }
            i12++;
            i11 = i13;
        }
        while (i10 < length) {
            if (iArr[i10] != 0 || weakReferenceArr[i10] != null) {
                return false;
            }
            i10++;
        }
        return true;
    }

    public final void removeIf(@NotNull Function1<? super T, Boolean> function1) {
        int size$runtime = getSize$runtime();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            T t10 = null;
            if (i10 >= size$runtime) {
                break;
            }
            WeakReference<T> weakReference = getValues$runtime()[i10];
            if (weakReference != null) {
                t10 = weakReference.get();
            }
            if (t10 != null && !function1.invoke(t10).booleanValue()) {
                if (i11 != i10) {
                    getValues$runtime()[i11] = weakReference;
                    getHashes$runtime()[i11] = getHashes$runtime()[i10];
                }
                i11++;
            }
            i10++;
        }
        for (int i12 = i11; i12 < size$runtime; i12++) {
            getValues$runtime()[i12] = null;
            getHashes$runtime()[i12] = 0;
        }
        if (i11 != size$runtime) {
            setSize$runtime(i11);
        }
    }

    public final void setHashes$runtime(@NotNull int[] iArr) {
        this.hashes = iArr;
    }

    public final void setSize$runtime(int i10) {
        this.size = i10;
    }

    public final void setValues$runtime(@NotNull WeakReference<T>[] weakReferenceArr) {
        this.values = weakReferenceArr;
    }
}
