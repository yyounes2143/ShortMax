package wt;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import org.jetbrains.annotations.NotNull;
/* compiled from: TreeJsonEncoder.kt */
@Metadata
/* loaded from: classes8.dex */
final class m0 extends e {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final ArrayList<JsonElement> f70323g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(@NotNull kotlinx.serialization.json.a json, @NotNull Function1<? super JsonElement, Unit> nodeConsumer) {
        super(json, nodeConsumer, null);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(nodeConsumer, "nodeConsumer");
        this.f70323g = new ArrayList<>();
    }

    @Override // wt.e
    @NotNull
    public JsonElement N() {
        return new JsonArray(this.f70323g);
    }

    @Override // wt.e
    public void R(@NotNull String key, @NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(element, "element");
        this.f70323g.add(Integer.parseInt(key), element);
    }

    @Override // wt.e, vt.o1
    @NotNull
    protected String w(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return String.valueOf(i10);
    }
}
