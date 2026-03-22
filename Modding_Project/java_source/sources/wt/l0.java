package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TreeJsonDecoder.kt */
@Metadata
/* loaded from: classes8.dex */
public final class l0 extends c {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final JsonArray f70318g;

    /* renamed from: h  reason: collision with root package name */
    private final int f70319h;

    /* renamed from: i  reason: collision with root package name */
    private int f70320i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(@NotNull kotlinx.serialization.json.a json, @NotNull JsonArray value) {
        super(json, value, null, 4, null);
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(value, "value");
        this.f70318g = value;
        this.f70319h = T().size();
        this.f70320i = -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // wt.c
    @NotNull
    public JsonElement F(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        return T().get(Integer.parseInt(tag));
    }

    @Override // wt.c
    @NotNull
    /* renamed from: W */
    public JsonArray T() {
        return this.f70318g;
    }

    @Override // kotlinx.serialization.encoding.c
    public int decodeElementIndex(@NotNull SerialDescriptor descriptor) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        int i10 = this.f70320i;
        if (i10 < this.f70319h - 1) {
            int i11 = i10 + 1;
            this.f70320i = i11;
            return i11;
        }
        return -1;
    }

    @Override // vt.n1
    @NotNull
    protected String z(@NotNull SerialDescriptor descriptor, int i10) {
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        return String.valueOf(i10);
    }
}
