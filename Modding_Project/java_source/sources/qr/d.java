package qr;

import io.ktor.client.HttpClient;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpClientPlugin.kt */
@Metadata
/* loaded from: classes8.dex */
public interface d<TConfig, TPlugin> {
    @NotNull
    TPlugin a(@NotNull Function1<? super TConfig, Unit> function1);

    void b(@NotNull TPlugin tplugin, @NotNull HttpClient httpClient);

    @NotNull
    yr.a<TPlugin> getKey();
}
