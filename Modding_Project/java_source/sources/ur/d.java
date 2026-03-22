package ur;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import wr.f;
import wr.g;
/* compiled from: headers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class d {
    @NotNull
    public static final f a(@NotNull Function1<? super g, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        g gVar = new g(0, 1, null);
        block.invoke(gVar);
        return gVar.n();
    }
}
