package j0;

import android.net.Uri;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import m0.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r0.i;
/* compiled from: FileUriMapper.kt */
@Metadata
/* loaded from: classes2.dex */
public final class b implements d<Uri, File> {
    private final boolean b(Uri uri) {
        if (i.q(uri)) {
            return false;
        }
        String scheme = uri.getScheme();
        if (scheme != null && !Intrinsics.areEqual(scheme, "file")) {
            return false;
        }
        String path = uri.getPath();
        if (path == null) {
            path = "";
        }
        if (!StringsKt.b1(path, '/', false, 2, null) || i.h(uri) == null) {
            return false;
        }
        return true;
    }

    @Override // j0.d
    @Nullable
    /* renamed from: c */
    public File a(@NotNull Uri uri, @NotNull j jVar) {
        if (!b(uri)) {
            return null;
        }
        if (uri.getScheme() != null) {
            uri = uri.buildUpon().scheme(null).build();
        }
        return new File(uri.toString());
    }
}
