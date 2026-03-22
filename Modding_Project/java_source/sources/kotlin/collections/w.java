package kotlin.collections;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: PrimitiveIterators.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class w implements Iterator<Character>, KMappedMarker {
    @Override // java.util.Iterator
    public /* bridge */ /* synthetic */ Character next() {
        return Character.valueOf(nextChar());
    }

    public abstract char nextChar();

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    @NotNull
    public final Character next() {
        return Character.valueOf(nextChar());
    }
}
