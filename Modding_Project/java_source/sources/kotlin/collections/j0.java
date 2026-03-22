package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveIterators.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class j0 implements Iterator<Float>, KMappedMarker {
    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Float next() {
        return Float.valueOf(nextFloat());
    }

    public abstract float nextFloat();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    @NotNull
    public final Float next() {
        return Float.valueOf(nextFloat());
    }
}
