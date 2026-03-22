package i0;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m0.j;
import org.jetbrains.annotations.NotNull;
import r0.i;
/* compiled from: UriKeyer.kt */
@Metadata
/* loaded from: classes2.dex */
public final class c implements b<Uri> {
    @Override // i0.b
    @NotNull
    /* renamed from: b */
    public String a(@NotNull Uri uri, @NotNull j jVar) {
        if (Intrinsics.areEqual(uri.getScheme(), "android.resource")) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(uri);
            sb2.append('-');
            sb2.append(i.k(jVar.g().getResources().getConfiguration()));
            return sb2.toString();
        }
        return uri.toString();
    }
}
