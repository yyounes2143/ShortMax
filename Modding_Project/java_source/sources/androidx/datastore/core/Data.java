package androidx.datastore.core;

import kotlin.Metadata;
/* compiled from: State.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Data<T> extends State<T> {
    private final int hashCode;
    private final T value;

    public Data(T t10, int i10, int i11) {
        super(i11, null);
        this.value = t10;
        this.hashCode = i10;
    }

    public final void checkHashCode() {
        int i10;
        T t10 = this.value;
        if (t10 != null) {
            i10 = t10.hashCode();
        } else {
            i10 = 0;
        }
        if (i10 == this.hashCode) {
            return;
        }
        throw new IllegalStateException("Data in DataStore was mutated but DataStore is only compatible with Immutable types.");
    }

    public final int getHashCode() {
        return this.hashCode;
    }

    public final T getValue() {
        return this.value;
    }
}
