package io.bidmachine.ads.networks.adaptiverendering;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import fr.a;
import fr.f;
import io.bidmachine.core.h;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.k;
import rq.l;
import rq.n;
import rq.t;
/* compiled from: AdaptiveRenderingAdapter.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdaptiveRenderingAdapterKt {
    @NotNull
    public static final a a(@NotNull t tVar, @NotNull a baseBMError) {
        Intrinsics.checkNotNullParameter(tVar, "<this>");
        Intrinsics.checkNotNullParameter(baseBMError, "baseBMError");
        return new a(baseBMError, -1, tVar.b());
    }

    @Nullable
    public static final Map<String, Object> b(@NotNull n nVar) {
        Intrinsics.checkNotNullParameter(nVar, "<this>");
        try {
            ListValue c10 = f.c(nVar.c(), new Function1<l, Value>() { // from class: io.bidmachine.ads.networks.adaptiverendering.AdaptiveRenderingAdapterKt$toEventParams$algorithmsListValue$1
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                /* renamed from: b */
                public final Value invoke(@NotNull l brokenCreativeAlgorithmResult) {
                    Intrinsics.checkNotNullParameter(brokenCreativeAlgorithmResult, "brokenCreativeAlgorithmResult");
                    k a10 = brokenCreativeAlgorithmResult.a();
                    Struct.Builder newBuilder = Struct.newBuilder();
                    Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
                    Struct build = f.f(f.f(f.g(newBuilder, "name", a10.b().getKey()), "weight", Float.valueOf(a10.c())), "threshold", Float.valueOf(a10.a())).build();
                    Intrinsics.checkNotNullExpressionValue(build, "brokenCreativeAlgorithmR…build()\n                }");
                    Struct.Builder newBuilder2 = Struct.newBuilder();
                    Intrinsics.checkNotNullExpressionValue(newBuilder2, "newBuilder()");
                    return f.i(f.f(f.f(f.e(newBuilder2, "algorithm", build), "result", Integer.valueOf(h.a(brokenCreativeAlgorithmResult.c()))), "duration", Long.valueOf(brokenCreativeAlgorithmResult.b())));
                }
            });
            Struct.Builder newBuilder = Struct.newBuilder();
            Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
            Value i10 = f.i(f.d(f.f(f.g(f.f(f.f(newBuilder, "result", Double.valueOf(nVar.e())), TypedValues.CycleType.S_WAVE_PHASE, Integer.valueOf(nVar.b())), "component", nVar.a()), "duration", Long.valueOf(nVar.d())), "algorithms", c10));
            HashMap hashMap = new HashMap();
            hashMap.put("adaptive_rendering_context", i10);
            return hashMap;
        } catch (Throwable unused) {
            return null;
        }
    }
}
