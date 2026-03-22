package okhttp3;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.authenticator.JavaNetAuthenticator;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Authenticator.kt */
@Metadata
/* loaded from: classes8.dex */
public interface Authenticator {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f63244a = Companion.f63247a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final Authenticator f63245b = new Companion.AuthenticatorNone();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final Authenticator f63246c = new JavaNetAuthenticator(null, 1, null);

    /* compiled from: Authenticator.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ Companion f63247a = new Companion();

        /* compiled from: Authenticator.kt */
        @Metadata
        /* loaded from: classes8.dex */
        private static final class AuthenticatorNone implements Authenticator {
            @Override // okhttp3.Authenticator
            @Nullable
            public Request a(@Nullable Route route, @NotNull Response response) {
                Intrinsics.checkNotNullParameter(response, "response");
                return null;
            }
        }

        private Companion() {
        }
    }

    @Nullable
    Request a(@Nullable Route route, @NotNull Response response) throws IOException;
}
