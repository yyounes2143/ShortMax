package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: State.kt */
@Metadata
/* loaded from: classes2.dex */
public abstract class State<T> {
    private final int version;

    public /* synthetic */ State(int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10);
    }

    public final int getVersion() {
        return this.version;
    }

    private State(int i10) {
        this.version = i10;
    }
}
