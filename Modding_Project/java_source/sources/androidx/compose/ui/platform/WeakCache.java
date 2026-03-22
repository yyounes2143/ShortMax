package androidx.compose.ui.platform;

import androidx.compose.runtime.collection.MutableVector;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: WeakCache.kt */
@Metadata
/* loaded from: classes.dex */
public final class WeakCache<T> {
    @NotNull
    private final MutableVector<Reference<T>> values = new MutableVector<>(new Reference[16], 0);
    @NotNull
    private final ReferenceQueue<T> referenceQueue = new ReferenceQueue<>();

    private final void clearWeakReferences() {
        Reference<? extends T> poll;
        do {
            poll = this.referenceQueue.poll();
            if (poll != null) {
                this.values.remove(poll);
                continue;
            }
        } while (poll != null);
    }

    public final int getSize() {
        clearWeakReferences();
        return this.values.getSize();
    }

    @Nullable
    public final T pop() {
        clearWeakReferences();
        while (this.values.isNotEmpty()) {
            MutableVector<Reference<T>> mutableVector = this.values;
            T t10 = mutableVector.removeAt(mutableVector.getSize() - 1).get();
            if (t10 != null) {
                return t10;
            }
        }
        return null;
    }

    public final void push(T t10) {
        clearWeakReferences();
        this.values.add(new WeakReference(t10, this.referenceQueue));
    }
}
