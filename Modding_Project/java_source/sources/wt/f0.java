package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TreeJsonDecoder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTreeJsonDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TreeJsonDecoder.kt\nkotlinx/serialization/json/internal/JsonPrimitiveDecoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,334:1\n1#2:335\n*E\n"})
/* loaded from: classes8.dex */
public final class f0 extends c {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final JsonElement f70302g;

    public /* synthetic */ f0(kotlinx.serialization.json.a aVar, JsonElement jsonElement, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, jsonElement, (i10 & 4) != 0 ? null : str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // wt.c
    @NotNull
    public JsonElement F(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (tag == "primitive") {
            return T();
        }
        throw new IllegalArgumentException("This input can only handle primitives with 'primitive' tag");
    }

    @Override // wt.c
    @NotNull
    public JsonElement T() {
        return this.f70302g;
    }

    @Override // kotlinx.serialization.encoding.c
    public int decodeElementIndex(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return 0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(@NotNull kotlinx.serialization.json.a json, @NotNull JsonElement value, @Nullable String str) {
        super(json, value, str, null);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f70302g = value;
        w("primitive");
    }
}
