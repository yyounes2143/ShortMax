package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Json.kt */
@Metadata
/* loaded from: classes8.dex */
public final class s {
    @NotNull
    public static final a a(@NotNull a from, @NotNull Function1<? super c, Unit> builderAction) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(builderAction, "builderAction");
        c cVar = new c(from);
        builderAction.invoke(cVar);
        return new r(cVar.a(), cVar.b());
    }

    public static /* synthetic */ a b(a aVar, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            aVar = a.f61939d;
        }
        return a(aVar, function1);
    }
}
