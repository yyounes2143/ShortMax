package wt;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TreeJsonEncoder.kt */
@Metadata
/* loaded from: classes8.dex */
public class k0 extends e {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final Map<String, JsonElement> f70314g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k0(@NotNull kotlinx.serialization.json.a json, @NotNull Function1<? super JsonElement, Unit> nodeConsumer) {
        super(json, nodeConsumer, null);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(nodeConsumer, "nodeConsumer");
        this.f70314g = new LinkedHashMap();
    }

    @Override // wt.e
    @NotNull
    public JsonElement N() {
        return new JsonObject(this.f70314g);
    }

    @Override // wt.e
    public void R(@NotNull String key, @NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(element, "element");
        this.f70314g.put(key, element);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NotNull
    public final Map<String, JsonElement> S() {
        return this.f70314g;
    }

    @Override // vt.a3, kotlinx.serialization.encoding.d
    public <T> void encodeNullableSerializableElement(@NotNull SerialDescriptor descriptor, int i10, @NotNull st.l<? super T> serializer, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        if (t10 != null || this.f70289d.j()) {
            super.encodeNullableSerializableElement(descriptor, i10, serializer, t10);
        }
    }
}
