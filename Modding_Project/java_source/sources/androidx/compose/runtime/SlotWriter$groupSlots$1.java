package androidx.compose.runtime;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
/* compiled from: SlotTable.kt */
@Metadata
/* loaded from: classes.dex */
public final class SlotWriter$groupSlots$1 implements Iterator<Object>, KMappedMarker {
    final /* synthetic */ int $end;
    private int current;
    final /* synthetic */ SlotWriter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SlotWriter$groupSlots$1(int i10, int i11, SlotWriter slotWriter) {
        this.$end = i11;
        this.this$0 = slotWriter;
        this.current = i10;
    }

    public final int getCurrent() {
        return this.current;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.current < this.$end) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (hasNext()) {
            Object[] objArr = this.this$0.slots;
            SlotWriter slotWriter = this.this$0;
            int i10 = this.current;
            this.current = i10 + 1;
            return objArr[slotWriter.dataIndexToDataAddress(i10)];
        }
        return null;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setCurrent(int i10) {
        this.current = i10;
    }
}
