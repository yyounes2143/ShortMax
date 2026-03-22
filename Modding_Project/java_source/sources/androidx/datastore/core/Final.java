package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: State.kt */
@Metadata
/* loaded from: classes2.dex */
public final class Final<T> extends State<T> {
    @NotNull
    private final Throwable finalException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Final(@NotNull Throwable finalException) {
        super(Integer.MAX_VALUE, null);
        Intrinsics.checkNotNullParameter(finalException, "finalException");
        this.finalException = finalException;
    }

    @NotNull
    public final Throwable getFinalException() {
        return this.finalException;
    }
}
