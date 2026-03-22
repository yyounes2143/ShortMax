package com.applovin.shadow.okhttp3.internal.http;

import androidx.browser.trusted.sharing.ShareTarget;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpMethod.kt */
@Metadata
/* loaded from: classes2.dex */
public final class HttpMethod {
    @NotNull
    public static final HttpMethod INSTANCE = new HttpMethod();

    private HttpMethod() {
    }

    public static final boolean permitsRequestBody(@NotNull String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        if (!Intrinsics.areEqual(method, ShareTarget.METHOD_GET) && !Intrinsics.areEqual(method, "HEAD")) {
            return true;
        }
        return false;
    }

    public static final boolean requiresRequestBody(@NotNull String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        if (!Intrinsics.areEqual(method, ShareTarget.METHOD_POST) && !Intrinsics.areEqual(method, "PUT") && !Intrinsics.areEqual(method, "PATCH") && !Intrinsics.areEqual(method, "PROPPATCH") && !Intrinsics.areEqual(method, "REPORT")) {
            return false;
        }
        return true;
    }

    public final boolean invalidatesCache(@NotNull String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        if (!Intrinsics.areEqual(method, ShareTarget.METHOD_POST) && !Intrinsics.areEqual(method, "PATCH") && !Intrinsics.areEqual(method, "PUT") && !Intrinsics.areEqual(method, "DELETE") && !Intrinsics.areEqual(method, "MOVE")) {
            return false;
        }
        return true;
    }

    public final boolean redirectsToGet(@NotNull String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        return !Intrinsics.areEqual(method, "PROPFIND");
    }

    public final boolean redirectsWithBody(@NotNull String method) {
        Intrinsics.checkNotNullParameter(method, "method");
        return Intrinsics.areEqual(method, "PROPFIND");
    }
}
