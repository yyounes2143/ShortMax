package m9;

import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: RemoteSettingsFetcher.kt */
@Metadata
/* loaded from: classes5.dex */
public interface a {
    @Nullable
    Object a(@NotNull Map<String, String> map, @NotNull Function2<? super JSONObject, ? super rs.c<? super Unit>, ? extends Object> function2, @NotNull Function2<? super String, ? super rs.c<? super Unit>, ? extends Object> function22, @NotNull rs.c<? super Unit> cVar);
}
