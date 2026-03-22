package j0;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import androidx.annotation.DrawableRes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m0.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ResourceIntMapper.kt */
@Metadata
/* loaded from: classes2.dex */
public final class e implements d<Integer, Uri> {
    private final boolean b(@DrawableRes int i10, Context context) {
        try {
            if (context.getResources().getResourceEntryName(i10) == null) {
                return false;
            }
            return true;
        } catch (Resources.NotFoundException unused) {
            return false;
        }
    }

    @Override // j0.d
    public /* bridge */ /* synthetic */ Uri a(Integer num, j jVar) {
        return c(num.intValue(), jVar);
    }

    @Nullable
    public Uri c(@DrawableRes int i10, @NotNull j jVar) {
        if (!b(i10, jVar.g())) {
            return null;
        }
        Uri parse = Uri.parse("android.resource://" + jVar.g().getPackageName() + '/' + i10);
        Intrinsics.checkNotNullExpressionValue(parse, "parse(this)");
        return parse;
    }
}
