package sr;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.l;
/* compiled from: utils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nutils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 utils.kt\nio/ktor/client/request/UtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"})
/* loaded from: classes8.dex */
public final class h {
    public static final void a(@NotNull l lVar, @NotNull String key, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(lVar, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        if (obj != null) {
            lVar.a().f(key, obj.toString());
            Unit unit = Unit.f60915a;
        }
    }
}
