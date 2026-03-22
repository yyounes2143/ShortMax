package wr;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: URLProtocol.kt */
@Metadata
/* loaded from: classes8.dex */
public final class t {
    public static final boolean a(@NotNull io.ktor.http.k kVar) {
        Intrinsics.checkNotNullParameter(kVar, "<this>");
        if (!Intrinsics.areEqual(kVar.d(), "https") && !Intrinsics.areEqual(kVar.d(), "wss")) {
            return false;
        }
        return true;
    }

    public static final boolean b(@NotNull io.ktor.http.k kVar) {
        Intrinsics.checkNotNullParameter(kVar, "<this>");
        if (!Intrinsics.areEqual(kVar.d(), "ws") && !Intrinsics.areEqual(kVar.d(), "wss")) {
            return false;
        }
        return true;
    }
}
