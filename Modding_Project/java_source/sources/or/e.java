package or;

import io.ktor.client.engine.HttpClientEngine;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import or.d;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpClientEngine.kt */
@Metadata
/* loaded from: classes8.dex */
public interface e<T extends d> {
    @NotNull
    HttpClientEngine a(@NotNull Function1<? super T, Unit> function1);
}
