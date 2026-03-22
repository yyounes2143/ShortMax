package eq;

import io.bidmachine.rendering.model.SideType;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.n0;
import rq.s;
@Metadata
/* loaded from: classes8.dex */
public final class h {
    @Nullable
    public static final SideType a(@NotNull s sVar) {
        n0 i10;
        Intrinsics.checkNotNullParameter(sVar, "<this>");
        if (sVar.d() != null) {
            n0 d10 = sVar.d();
            if (d10 != null) {
                return d10.b();
            }
        } else if (sVar.i() != null && (i10 = sVar.i()) != null) {
            return i10.b();
        }
        return null;
    }

    @Nullable
    public static final SideType b(@NotNull s sVar) {
        n0 a10;
        Intrinsics.checkNotNullParameter(sVar, "<this>");
        if (sVar.j() != null) {
            n0 j10 = sVar.j();
            if (j10 != null) {
                return j10.b();
            }
        } else if (sVar.a() != null && (a10 = sVar.a()) != null) {
            return a10.b();
        }
        return null;
    }
}
