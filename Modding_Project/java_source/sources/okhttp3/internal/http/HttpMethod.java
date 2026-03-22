package okhttp3.internal.http;

import androidx.browser.trusted.sharing.ShareTarget;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpMethod.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpMethod {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final HttpMethod f63867a = new HttpMethod();

    private HttpMethod() {
    }

    public static final boolean b(@NotNull String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        if (!Intrinsics.areEqual(method, ShareTarget.METHOD_GET) && !Intrinsics.areEqual(method, "HEAD")) {
            return true;
        }
        return false;
    }

    public static final boolean e(@NotNull String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        if (!Intrinsics.areEqual(method, ShareTarget.METHOD_POST) && !Intrinsics.areEqual(method, "PUT") && !Intrinsics.areEqual(method, "PATCH") && !Intrinsics.areEqual(method, "PROPPATCH") && !Intrinsics.areEqual(method, "REPORT")) {
            return false;
        }
        return true;
    }

    public final boolean a(@NotNull String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        if (!Intrinsics.areEqual(method, ShareTarget.METHOD_POST) && !Intrinsics.areEqual(method, "PATCH") && !Intrinsics.areEqual(method, "PUT") && !Intrinsics.areEqual(method, "DELETE") && !Intrinsics.areEqual(method, "MOVE")) {
            return false;
        }
        return true;
    }

    public final boolean c(@NotNull String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        return !Intrinsics.areEqual(method, "PROPFIND");
    }

    public final boolean d(@NotNull String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        return Intrinsics.areEqual(method, "PROPFIND");
    }
}
