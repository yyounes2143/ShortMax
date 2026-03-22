package androidx.datastore.core;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: State.kt */
@Metadata
/* loaded from: classes2.dex */
public final class UnInitialized extends State<Object> {
    @NotNull
    public static final UnInitialized INSTANCE = new UnInitialized();

    private UnInitialized() {
        super(-1, null);
    }
}
