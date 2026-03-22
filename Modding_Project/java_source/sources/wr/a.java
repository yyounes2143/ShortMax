package wr;

import java.nio.charset.Charset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContentTypes.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @Nullable
    public static final Charset a(@NotNull io.ktor.http.c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<this>");
        String c10 = cVar.c("charset");
        if (c10 == null) {
            return null;
        }
        try {
            return Charset.forName(c10);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    @NotNull
    public static final io.ktor.http.a b(@NotNull io.ktor.http.a aVar, @NotNull Charset charset) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(charset, "charset");
        return aVar.g("charset", gs.a.i(charset));
    }
}
