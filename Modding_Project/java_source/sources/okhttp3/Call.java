package okhttp3;

import java.io.IOException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Call.kt */
@Metadata
/* loaded from: classes8.dex */
public interface Call extends Cloneable {

    /* compiled from: Call.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Factory {
        @NotNull
        Call a(@NotNull Request request);
    }

    void cancel();

    @NotNull
    Response execute() throws IOException;

    boolean isCanceled();

    void o0(@NotNull Callback callback);

    @NotNull
    Request request();
}
