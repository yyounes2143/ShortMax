package kotlinx.serialization.json;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: JsonElementBuilders.kt */
@Metadata
/* loaded from: classes8.dex */
public final class z {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, JsonElement> f62015a = new LinkedHashMap();

    @NotNull
    public final JsonObject a() {
        return new JsonObject(this.f62015a);
    }

    @Nullable
    public final JsonElement b(@NotNull String key, @NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(element, "element");
        return this.f62015a.put(key, element);
    }
}
