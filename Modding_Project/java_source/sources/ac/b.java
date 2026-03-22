package ac;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ApiResult.kt */
@Metadata
/* loaded from: classes5.dex */
public final class b {
    public static final boolean a(@NotNull a<?> aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Integer a10 = aVar.a();
        if (a10 != null && a10.intValue() == 0) {
            return true;
        }
        return false;
    }
}
