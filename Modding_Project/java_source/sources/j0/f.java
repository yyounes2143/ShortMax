package j0;

import android.content.res.Resources;
import android.net.Uri;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import m0.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResourceUriMapper.kt */
@Metadata
/* loaded from: classes2.dex */
public final class f implements d<Uri, Uri> {
    private final boolean b(Uri uri) {
        String authority;
        if (Intrinsics.areEqual(uri.getScheme(), "android.resource") && (authority = uri.getAuthority()) != null && !StringsKt.t0(authority) && uri.getPathSegments().size() == 2) {
            return true;
        }
        return false;
    }

    @Override // j0.d
    @Nullable
    /* renamed from: c */
    public Uri a(@NotNull Uri uri, @NotNull j jVar) {
        if (!b(uri)) {
            return null;
        }
        String authority = uri.getAuthority();
        if (authority == null) {
            authority = "";
        }
        Resources resourcesForApplication = jVar.g().getPackageManager().getResourcesForApplication(authority);
        List<String> pathSegments = uri.getPathSegments();
        int identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        if (identifier != 0) {
            Uri parse = Uri.parse("android.resource://" + authority + '/' + identifier);
            Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
            return parse;
        }
        throw new IllegalStateException(("Invalid android.resource URI: " + uri).toString());
    }
}
