package eq;

import io.bidmachine.rendering.model.AnimationEventType;
import io.bidmachine.util.Tag;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata
/* loaded from: classes8.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f51531a = new e();

    private e() {
    }

    private final <Params> b a(Tag tag, Map<AnimationEventType, rq.d> map, g<Params> gVar) {
        return new b(tag, new j(map), gVar);
    }

    @NotNull
    public static final b b(@NotNull rq.a params, boolean z10) {
        Intrinsics.checkNotNullParameter(params, "params");
        e eVar = f51531a;
        return eVar.a(new Tag("AdElementAnimator (" + params.j() + ')'), params.b(), new k(params, z10));
    }

    @NotNull
    public static final b c(@NotNull rq.c params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return f51531a.a(new Tag("AdPhaseAnimator"), params.b(), new l(params));
    }
}
