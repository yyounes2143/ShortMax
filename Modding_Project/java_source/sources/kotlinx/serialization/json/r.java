package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import wt.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Json.kt */
@Metadata
/* loaded from: classes8.dex */
public final class r extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(@NotNull e configuration, @NotNull xt.a module) {
        super(configuration, module, null);
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(module, "module");
        f();
    }

    private final void f() {
        if (Intrinsics.areEqual(getSerializersModule(), xt.b.a())) {
            return;
        }
        getSerializersModule().a(new q0(d().p(), d().e()));
    }
}
