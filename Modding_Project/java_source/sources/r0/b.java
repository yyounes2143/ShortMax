package r0;

import kotlin.Metadata;
import okhttp3.Call;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Calls.kt */
@Metadata
/* loaded from: classes2.dex */
public final class b {
    @Nullable
    public static final Object a(@NotNull Call call, @NotNull rs.c<? super Response> cVar) {
        kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        j jVar = new j(call, eVar);
        call.o0(jVar);
        eVar.u(jVar);
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }
}
