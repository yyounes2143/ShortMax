package wt;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: TreeJsonDecoder.kt */
@Metadata
/* loaded from: classes8.dex */
final class n0 extends j0 {
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final JsonObject f70325k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final List<String> f70326l;

    /* renamed from: m  reason: collision with root package name */
    private final int f70327m;

    /* renamed from: n  reason: collision with root package name */
    private int f70328n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(@NotNull kotlinx.serialization.json.a json, @NotNull JsonObject value) {
        super(json, value, null, null, 12, null);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f70325k = value;
        List<String> d12 = CollectionsKt.d1(T().keySet());
        this.f70326l = d12;
        this.f70327m = d12.size() * 2;
        this.f70328n = -1;
    }

    @Override // wt.j0, wt.c
    @NotNull
    protected JsonElement F(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        if (this.f70328n % 2 == 0) {
            return kotlinx.serialization.json.h.c(tag);
        }
        return (JsonElement) kotlin.collections.p0.j(T(), tag);
    }

    @Override // wt.j0, wt.c
    @NotNull
    /* renamed from: Y */
    public JsonObject T() {
        return this.f70325k;
    }

    @Override // wt.j0, kotlinx.serialization.encoding.c
    public int decodeElementIndex(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        int i10 = this.f70328n;
        if (i10 < this.f70327m - 1) {
            int i11 = i10 + 1;
            this.f70328n = i11;
            return i11;
        }
        return -1;
    }

    @Override // wt.j0, wt.c, kotlinx.serialization.encoding.c
    public void endStructure(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
    }

    @Override // wt.j0, vt.n1
    @NotNull
    protected String z(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return this.f70326l.get(i10 / 2);
    }
}
