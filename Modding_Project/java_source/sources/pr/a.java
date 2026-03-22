package pr;

import io.ktor.client.engine.HttpClientEngine;
import io.ktor.client.engine.android.AndroidClientEngine;
import io.ktor.client.engine.android.AndroidEngineConfig;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import or.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: Android.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a implements e<AndroidEngineConfig> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f64985a = new a();

    private a() {
    }

    @Override // or.e
    @NotNull
    public HttpClientEngine a(@NotNull Function1<? super AndroidEngineConfig, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AndroidEngineConfig androidEngineConfig = new AndroidEngineConfig();
        block.invoke(androidEngineConfig);
        return new AndroidClientEngine(androidEngineConfig);
    }
}
