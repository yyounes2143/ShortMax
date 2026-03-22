package okhttp3;

import java.io.IOException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Interceptor.kt */
@Metadata
/* loaded from: classes8.dex */
public interface Interceptor {

    /* compiled from: Interceptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public interface Chain {
        @NotNull
        Response a(@NotNull Request request) throws IOException;

        @NotNull
        Call call();

        @Nullable
        Connection connection();

        @NotNull
        Request request();
    }

    /* compiled from: Interceptor.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ Companion f63478a = new Companion();

        private Companion() {
        }
    }

    @NotNull
    Response intercept(@NotNull Chain chain) throws IOException;
}
