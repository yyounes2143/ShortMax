package androidx.compose.ui.text.caches;

import androidx.compose.ui.text.platform.Synchronization_jvmKt;
import androidx.compose.ui.text.platform.SynchronizedObject;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LruCache.kt */
@Metadata
/* loaded from: classes.dex */
public class LruCache<K, V> {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    @NotNull
    private final LinkedHashSet<K> keySet;
    @NotNull
    private final HashMap<K, V> map;
    private int maxSize;
    private int missCount;
    @NotNull
    private final SynchronizedObject monitor = Synchronization_jvmKt.createSynchronizedObject();
    private int putCount;
    private int size;

    public LruCache(int i10) {
        if (i10 > 0) {
            this.maxSize = i10;
            this.map = new HashMap<>(0, 0.75f);
            this.keySet = new LinkedHashSet<>();
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private final int safeSizeOf(K k10, V v10) {
        int sizeOf = sizeOf(k10, v10);
        if (sizeOf >= 0) {
            return sizeOf;
        }
        throw new IllegalStateException(("Negative size: " + k10 + '=' + v10).toString());
    }

    @Nullable
    protected V create(K k10) {
        return null;
    }

    public final int createCount() {
        int i10;
        synchronized (this.monitor) {
            i10 = this.createCount;
        }
        return i10;
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final int evictionCount() {
        int i10;
        synchronized (this.monitor) {
            i10 = this.evictionCount;
        }
        return i10;
    }

    @Nullable
    public final V get(K k10) {
        synchronized (this.monitor) {
            V v10 = this.map.get(k10);
            if (v10 != null) {
                this.keySet.remove(k10);
                this.keySet.add(k10);
                this.hitCount++;
                return v10;
            }
            this.missCount++;
            V create = create(k10);
            if (create == null) {
                return null;
            }
            synchronized (this.monitor) {
                try {
                    this.createCount++;
                    V put = this.map.put(k10, create);
                    this.keySet.remove(k10);
                    this.keySet.add(k10);
                    if (put != null) {
                        this.map.put(k10, put);
                        v10 = put;
                    } else {
                        this.size = size() + safeSizeOf(k10, create);
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (v10 != null) {
                entryRemoved(false, k10, create, v10);
                return v10;
            }
            trimToSize(this.maxSize);
            return create;
        }
    }

    public final int hitCount() {
        int i10;
        synchronized (this.monitor) {
            i10 = this.hitCount;
        }
        return i10;
    }

    public final int maxSize() {
        int i10;
        synchronized (this.monitor) {
            i10 = this.maxSize;
        }
        return i10;
    }

    public final int missCount() {
        int i10;
        synchronized (this.monitor) {
            i10 = this.missCount;
        }
        return i10;
    }

    @Nullable
    public final V put(K k10, V v10) {
        V put;
        if (k10 != null && v10 != null) {
            synchronized (this.monitor) {
                try {
                    this.putCount++;
                    this.size = size() + safeSizeOf(k10, v10);
                    put = this.map.put(k10, v10);
                    if (put != null) {
                        this.size = size() - safeSizeOf(k10, put);
                    }
                    if (this.keySet.contains(k10)) {
                        this.keySet.remove(k10);
                    }
                    this.keySet.add(k10);
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (put != null) {
                entryRemoved(false, k10, put, v10);
            }
            trimToSize(this.maxSize);
            return put;
        }
        throw null;
    }

    public final int putCount() {
        int i10;
        synchronized (this.monitor) {
            i10 = this.putCount;
        }
        return i10;
    }

    @Nullable
    public final V remove(K k10) {
        V remove;
        k10.getClass();
        synchronized (this.monitor) {
            try {
                remove = this.map.remove(k10);
                this.keySet.remove(k10);
                if (remove != null) {
                    this.size = size() - safeSizeOf(k10, remove);
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (remove != null) {
            entryRemoved(false, k10, remove, null);
        }
        return remove;
    }

    public void resize(int i10) {
        if (i10 > 0) {
            synchronized (this.monitor) {
                this.maxSize = i10;
                Unit unit = Unit.f60915a;
            }
            trimToSize(i10);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    public final int size() {
        int i10;
        synchronized (this.monitor) {
            i10 = this.size;
        }
        return i10;
    }

    protected int sizeOf(K k10, V v10) {
        return 1;
    }

    @NotNull
    public final Map<K, V> snapshot() {
        LinkedHashMap linkedHashMap;
        synchronized (this.monitor) {
            linkedHashMap = new LinkedHashMap();
            Iterator<K> it = this.keySet.iterator();
            while (it.hasNext()) {
                K next = it.next();
                V v10 = this.map.get(next);
                Intrinsics.checkNotNull(v10);
                linkedHashMap.put(next, v10);
            }
        }
        return linkedHashMap;
    }

    public final <R> R synchronizedValue$ui_text_release(@NotNull Function0<? extends R> block) {
        R invoke;
        Intrinsics.checkNotNullParameter(block, "block");
        synchronized (this.monitor) {
            try {
                invoke = block.invoke();
                InlineMarker.finallyStart(1);
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th2;
            }
        }
        InlineMarker.finallyEnd(1);
        return invoke;
    }

    @NotNull
    public String toString() {
        int i10;
        String str;
        synchronized (this.monitor) {
            try {
                int i11 = this.hitCount;
                int i12 = this.missCount + i11;
                if (i12 != 0) {
                    i10 = (i11 * 100) / i12;
                } else {
                    i10 = 0;
                }
                str = "LruCache[maxSize=" + this.maxSize + ",hits=" + this.hitCount + ",misses=" + this.missCount + ",hitRate=" + i10 + "%]";
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0094, code lost:
        throw new java.lang.IllegalStateException("map/keySet size inconsistency");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r8) {
        /*
            r7 = this;
        L0:
            androidx.compose.ui.text.platform.SynchronizedObject r0 = r7.monitor
            monitor-enter(r0)
            int r1 = r7.size()     // Catch: java.lang.Throwable -> L18
            if (r1 < 0) goto L8d
            java.util.HashMap<K, V> r1 = r7.map     // Catch: java.lang.Throwable -> L18
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L18
            if (r1 == 0) goto L1b
            int r1 = r7.size()     // Catch: java.lang.Throwable -> L18
            if (r1 != 0) goto L8d
            goto L1b
        L18:
            r8 = move-exception
            goto L95
        L1b:
            java.util.HashMap<K, V> r1 = r7.map     // Catch: java.lang.Throwable -> L18
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L18
            java.util.LinkedHashSet<K> r2 = r7.keySet     // Catch: java.lang.Throwable -> L18
            boolean r2 = r2.isEmpty()     // Catch: java.lang.Throwable -> L18
            if (r1 != r2) goto L8d
            int r1 = r7.size()     // Catch: java.lang.Throwable -> L18
            r2 = 1
            r3 = 0
            if (r1 <= r8) goto L78
            java.util.HashMap<K, V> r1 = r7.map     // Catch: java.lang.Throwable -> L18
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L18
            if (r1 != 0) goto L78
            java.util.LinkedHashSet<K> r1 = r7.keySet     // Catch: java.lang.Throwable -> L18
            java.lang.Object r1 = kotlin.collections.CollectionsKt.q0(r1)     // Catch: java.lang.Throwable -> L18
            java.util.HashMap<K, V> r4 = r7.map     // Catch: java.lang.Throwable -> L18
            java.lang.Object r4 = r4.get(r1)     // Catch: java.lang.Throwable -> L18
            if (r4 == 0) goto L70
            java.util.HashMap<K, V> r5 = r7.map     // Catch: java.lang.Throwable -> L18
            java.util.Map r5 = kotlin.jvm.internal.TypeIntrinsics.asMutableMap(r5)     // Catch: java.lang.Throwable -> L18
            r5.remove(r1)     // Catch: java.lang.Throwable -> L18
            java.util.LinkedHashSet<K> r5 = r7.keySet     // Catch: java.lang.Throwable -> L18
            java.util.Collection r5 = kotlin.jvm.internal.TypeIntrinsics.asMutableCollection(r5)     // Catch: java.lang.Throwable -> L18
            r5.remove(r1)     // Catch: java.lang.Throwable -> L18
            int r5 = r7.size()     // Catch: java.lang.Throwable -> L18
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)     // Catch: java.lang.Throwable -> L18
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)     // Catch: java.lang.Throwable -> L18
            int r6 = r7.safeSizeOf(r1, r4)     // Catch: java.lang.Throwable -> L18
            int r5 = r5 - r6
            r7.size = r5     // Catch: java.lang.Throwable -> L18
            int r5 = r7.evictionCount     // Catch: java.lang.Throwable -> L18
            int r5 = r5 + r2
            r7.evictionCount = r5     // Catch: java.lang.Throwable -> L18
            goto L7a
        L70:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L18
            java.lang.String r1 = "inconsistent state"
            r8.<init>(r1)     // Catch: java.lang.Throwable -> L18
            throw r8     // Catch: java.lang.Throwable -> L18
        L78:
            r1 = r3
            r4 = r1
        L7a:
            kotlin.Unit r5 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L18
            monitor-exit(r0)
            if (r1 != 0) goto L82
            if (r4 != 0) goto L82
            return
        L82:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            r7.entryRemoved(r2, r1, r4, r3)
            goto L0
        L8d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L18
            java.lang.String r1 = "map/keySet size inconsistency"
            r8.<init>(r1)     // Catch: java.lang.Throwable -> L18
            throw r8     // Catch: java.lang.Throwable -> L18
        L95:
            monitor-exit(r0)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.caches.LruCache.trimToSize(int):void");
    }

    protected void entryRemoved(boolean z10, K k10, V v10, @Nullable V v11) {
    }
}
