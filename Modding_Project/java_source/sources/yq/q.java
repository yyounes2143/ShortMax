package yq;

import android.net.Uri;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UrlUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class q {
    @Nullable
    public static final Uri a(@NotNull String str) {
        Uri j10;
        Intrinsics.checkNotNullParameter(str, "<this>");
        try {
            Uri parse = Uri.parse(str);
            Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
            String scheme = parse.getScheme();
            if ((scheme == null || scheme.length() == 0) && !StringsKt.V(str, DomExceptionUtils.SEPARATOR, false, 2, null) && (j10 = r.j(str)) != null) {
                String scheme2 = j10.getScheme();
                if (scheme2 != null) {
                    Intrinsics.checkNotNullExpressionValue(scheme2, "scheme");
                    if (scheme2.length() > 0) {
                        return j10;
                    }
                }
                String uri = j10.toString();
                Intrinsics.checkNotNullExpressionValue(uri, "newUri.toString()");
                if (StringsKt.V(uri, DomExceptionUtils.SEPARATOR, false, 2, null)) {
                    return j10;
                }
            }
            return parse;
        } catch (Throwable unused) {
            return null;
        }
    }

    @NotNull
    public static final Uri b(@NotNull Uri uri, @NotNull String... parameterNames) {
        Intrinsics.checkNotNullParameter(uri, "<this>");
        Intrinsics.checkNotNullParameter(parameterNames, "parameterNames");
        if (parameterNames.length == 0) {
            return uri;
        }
        Set G1 = kotlin.collections.n.G1(parameterNames);
        Uri.Builder clearQuery = uri.buildUpon().clearQuery();
        Intrinsics.checkNotNullExpressionValue(clearQuery, "buildUpon().clearQuery()");
        for (String str : uri.getQueryParameterNames()) {
            if (!G1.contains(str)) {
                for (String str2 : uri.getQueryParameters(str)) {
                    clearQuery.appendQueryParameter(str, str2);
                }
            }
        }
        Uri build = clearQuery.build();
        Intrinsics.checkNotNullExpressionValue(build, "builder.build()");
        return build;
    }
}
