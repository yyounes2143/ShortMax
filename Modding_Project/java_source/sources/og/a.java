package og;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.JsonSyntaxException;
import java.io.StringReader;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RemoteConfigMemory.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a implements pg.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Gson f63203a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, qg.b> f63204b;

    public a(@NotNull Gson gson) {
        Intrinsics.checkNotNullParameter(gson, "gson");
        this.f63203a = gson;
        this.f63204b = new HashMap<>();
    }

    @Override // pg.b
    @NotNull
    public <T> T a(@NotNull String key, @NotNull T t10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(t10, "default");
        qg.b bVar = this.f63204b.get(key);
        if (bVar == null) {
            return t10;
        }
        JsonElement b10 = bVar.b();
        T t11 = (T) bVar.a();
        if (t11 != null) {
            try {
                if (Intrinsics.areEqual(t11.getClass(), t10.getClass())) {
                    return t11;
                }
            } catch (JsonSyntaxException unused) {
                return t10;
            }
        }
        T t12 = (T) this.f63203a.fromJson(b10, (Class<Object>) t10.getClass());
        if (b10.isJsonNull()) {
            return t10;
        }
        if (b10.isJsonPrimitive()) {
            bVar.c(t12);
        }
        Intrinsics.checkNotNull(t12);
        return t12;
    }

    @Override // pg.b
    public void b(@NotNull String json) {
        Intrinsics.checkNotNullParameter(json, "json");
        try {
            JsonObject asJsonObject = JsonParser.parseReader(new StringReader(json)).getAsJsonObject();
            this.f63204b.clear();
            for (Map.Entry<String, JsonElement> entry : asJsonObject.entrySet()) {
                HashMap<String, qg.b> hashMap = this.f63204b;
                String key = entry.getKey();
                JsonElement value = entry.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                hashMap.put(key, new qg.b(value));
            }
        } catch (Exception unused) {
            ng.a.a("processConfig to local failed");
            this.f63204b.clear();
        }
    }
}
