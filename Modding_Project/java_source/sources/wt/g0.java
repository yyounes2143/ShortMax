package wt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.json.JsonElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TreeJsonEncoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTreeJsonEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/JsonPrimitiveEncoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,280:1\n1#2:281\n*E\n"})
/* loaded from: classes8.dex */
public final class g0 extends e {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private JsonElement f70303g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(@NotNull kotlinx.serialization.json.a json, @NotNull Function1<? super JsonElement, Unit> nodeConsumer) {
        super(json, nodeConsumer, null);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(nodeConsumer, "nodeConsumer");
        u("primitive");
    }

    @Override // wt.e
    @NotNull
    public JsonElement N() {
        JsonElement jsonElement = this.f70303g;
        if (jsonElement != null) {
            return jsonElement;
        }
        throw new IllegalArgumentException("Primitive element has not been recorded. Is call to .encodeXxx is missing in serializer?");
    }

    @Override // wt.e
    public void R(@NotNull String key, @NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(element, "element");
        if (key == "primitive") {
            if (this.f70303g == null) {
                this.f70303g = element;
                O().invoke(element);
                return;
            }
            throw new IllegalArgumentException("Primitive element was already recorded. Does call to .encodeXxx happen more than once?");
        }
        throw new IllegalArgumentException("This output can only consume primitives with 'primitive' tag");
    }
}
