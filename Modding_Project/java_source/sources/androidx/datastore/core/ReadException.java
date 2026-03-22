package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: State.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ReadException<T> extends State<T> {
    @NotNull
    private final Throwable readException;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadException(@NotNull Throwable readException, int i10) {
        super(i10, null);
        Intrinsics.checkNotNullParameter(readException, "readException");
        this.readException = readException;
    }

    @NotNull
    public final Throwable getReadException() {
        return this.readException;
    }
}
