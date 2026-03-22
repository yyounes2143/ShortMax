package j0;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m0.j;
import org.jetbrains.annotations.NotNull;
/* compiled from: StringMapper.kt */
@Metadata
/* loaded from: classes2.dex */
public final class g implements d<String, Uri> {
    @Override // j0.d
    @NotNull
    /* renamed from: b */
    public Uri a(@NotNull String str, @NotNull j jVar) {
        Uri parse = Uri.parse(str);
        Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
        return parse;
    }
}
