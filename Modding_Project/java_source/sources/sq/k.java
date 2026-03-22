package sq;

import android.content.Context;
import android.net.Uri;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import io.bidmachine.rendering.internal.r;
import io.bidmachine.rendering.utils.NetworkRequest;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tp.p;
@Metadata
/* loaded from: classes8.dex */
public final class k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final k f66582a = new k();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final p f66583b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final gq.b f66584c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final gq.b f66585d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final List<gq.b> f66586e;

    static {
        p pVar = new p();
        f66583b = pVar;
        io.bidmachine.iab.mraid.l lVar = new io.bidmachine.iab.mraid.l();
        r rVar = new r();
        gq.c cVar = new gq.c(lVar, pVar);
        f66584c = cVar;
        gq.d dVar = new gq.d(lVar, rVar);
        f66585d = dVar;
        f66586e = CollectionsKt.q(cVar, dVar, new gq.a());
    }

    private k() {
    }

    public static final void a(@NotNull Context context, @NotNull Uri uri, @Nullable yq.d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        f66583b.e(context, uri, dVar);
    }

    public static final void b(@NotNull Context context, @NotNull String url, @Nullable yq.d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        f66584c.a(context, url, dVar);
    }

    public static final void c(@NotNull Context context, @NotNull String url, @Nullable yq.d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Uri d10 = d(url);
        for (gq.b bVar : f66586e) {
            if (bVar.a(d10)) {
                bVar.b(context, d10, dVar);
                return;
            }
        }
        a(context, d10, dVar);
    }

    @NotNull
    public static final Uri d(@NotNull String url) {
        Uri j10;
        Intrinsics.checkNotNullParameter(url, "url");
        Uri parse = Uri.parse(url);
        Intrinsics.checkNotNullExpressionValue(parse, "parse(url)");
        String scheme = parse.getScheme();
        if ((scheme == null || scheme.length() == 0) && !StringsKt.V(url, DomExceptionUtils.SEPARATOR, false, 2, null) && (j10 = yq.r.j(url)) != null) {
            String scheme2 = j10.getScheme();
            if (scheme2 == null || scheme2.length() <= 0) {
                String uri = j10.toString();
                Intrinsics.checkNotNullExpressionValue(uri, "newUri.toString()");
                if (StringsKt.V(uri, DomExceptionUtils.SEPARATOR, false, 2, null)) {
                }
            }
            return j10;
        }
        return parse;
    }

    public static final void e(@NotNull Context context, @NotNull String url, @Nullable yq.d<Boolean> dVar) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        f66585d.a(context, url, dVar);
    }

    public static final void f(@Nullable String str) {
        String k10 = yq.r.k(str);
        if (k10 != null && k10.length() > 0) {
            new NetworkRequest.a(k10, NetworkRequest.Method.Get).f(pp.f.a()).c();
        }
    }
}
