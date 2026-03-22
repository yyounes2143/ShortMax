package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveIterators.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class v implements Iterator<Byte>, KMappedMarker {
    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Byte next() {
        return Byte.valueOf(nextByte());
    }

    public abstract byte nextByte();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    @NotNull
    public final Byte next() {
        return Byte.valueOf(nextByte());
    }
}
