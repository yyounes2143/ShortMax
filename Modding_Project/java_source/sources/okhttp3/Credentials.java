package okhttp3;

import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
/* compiled from: Credentials.kt */
@Metadata
/* loaded from: classes8.dex */
public final class Credentials {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Credentials f63426a = new Credentials();

    private Credentials() {
    }

    @NotNull
    public static final String a(@NotNull String username, @NotNull String password, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(username, "username");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(charset, "charset");
        String base64 = ByteString.Companion.encodeString(username + ':' + password, charset).base64();
        return "Basic " + base64;
    }
}
