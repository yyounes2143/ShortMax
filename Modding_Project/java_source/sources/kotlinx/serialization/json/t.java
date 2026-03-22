package kotlinx.serialization.json;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wt.x0;
/* compiled from: JsonElement.kt */
@Metadata
@SourceDebugExtension({"SMAP\nJsonElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JsonElement.kt\nkotlinx/serialization/json/JsonLiteral\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,348:1\n1#2:349\n*E\n"})
/* loaded from: classes8.dex */
public final class t extends JsonPrimitive {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f62008a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final SerialDescriptor f62009b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final String f62010c;

    public /* synthetic */ t(Object obj, boolean z10, SerialDescriptor serialDescriptor, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, z10, (i10 & 4) != 0 ? null : serialDescriptor);
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    @NotNull
    public String a() {
        return this.f62010c;
    }

    @Nullable
    public final SerialDescriptor c() {
        return this.f62009b;
    }

    public boolean d() {
        return this.f62008a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        if (d() == tVar.d() && Intrinsics.areEqual(a(), tVar.a())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (Boolean.hashCode(d()) * 31) + a().hashCode();
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    @NotNull
    public String toString() {
        if (d()) {
            StringBuilder sb2 = new StringBuilder();
            x0.c(sb2, a());
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
            return sb3;
        }
        return a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(@NotNull Object body, boolean z10, @Nullable SerialDescriptor serialDescriptor) {
        super(null);
        Intrinsics.checkNotNullParameter(body, "body");
        this.f62008a = z10;
        this.f62009b = serialDescriptor;
        this.f62010c = body.toString();
        if (serialDescriptor != null && !serialDescriptor.isInline()) {
            throw new IllegalArgumentException("Failed requirement.");
        }
    }
}
