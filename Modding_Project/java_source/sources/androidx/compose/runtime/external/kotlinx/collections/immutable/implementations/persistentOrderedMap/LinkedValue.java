package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistentOrderedMap.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class LinkedValue<V> {
    public static final int $stable = 8;
    @Nullable
    private final Object next;
    @Nullable
    private final Object previous;
    private final V value;

    public LinkedValue(V v10, @Nullable Object obj, @Nullable Object obj2) {
        this.value = v10;
        this.previous = obj;
        this.next = obj2;
    }

    public final boolean getHasNext() {
        if (this.next != EndOfChain.INSTANCE) {
            return true;
        }
        return false;
    }

    public final boolean getHasPrevious() {
        if (this.previous != EndOfChain.INSTANCE) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Object getNext() {
        return this.next;
    }

    @Nullable
    public final Object getPrevious() {
        return this.previous;
    }

    public final V getValue() {
        return this.value;
    }

    @NotNull
    public final LinkedValue<V> withNext(@Nullable Object obj) {
        return new LinkedValue<>(this.value, this.previous, obj);
    }

    @NotNull
    public final LinkedValue<V> withPrevious(@Nullable Object obj) {
        return new LinkedValue<>(this.value, obj, this.next);
    }

    @NotNull
    public final LinkedValue<V> withValue(V v10) {
        return new LinkedValue<>(v10, this.previous, this.next);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LinkedValue(V r2) {
        /*
            r1 = this;
            androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain r0 = androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain.INSTANCE
            r1.<init>(r2, r0, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap.LinkedValue.<init>(java.lang.Object):void");
    }

    public LinkedValue(V v10, @Nullable Object obj) {
        this(v10, obj, EndOfChain.INSTANCE);
    }
}
