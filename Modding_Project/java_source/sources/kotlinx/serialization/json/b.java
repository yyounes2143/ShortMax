package kotlinx.serialization.json;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonElementSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b implements KSerializer<JsonArray> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f61948a = new b();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f61949b = a.f61950b;

    /* compiled from: JsonElementSerializers.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class a implements SerialDescriptor {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final a f61950b = new a();
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private static final String f61951c = "kotlinx.serialization.json.JsonArray";

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ SerialDescriptor f61952a = tt.a.h(o.f62005a).getDescriptor();

        private a() {
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean b() {
            return this.f61952a.b();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int c(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return this.f61952a.c(name);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public SerialDescriptor d(int i10) {
            return this.f61952a.d(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int e() {
            return this.f61952a.e();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public String f(int i10) {
            return this.f61952a.f(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public List<Annotation> g(int i10) {
            return this.f61952a.g(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public List<Annotation> getAnnotations() {
            return this.f61952a.getAnnotations();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public ut.l getKind() {
            return this.f61952a.getKind();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public String h() {
            return f61951c;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean i(int i10) {
            return this.f61952a.i(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isInline() {
            return this.f61952a.isInline();
        }
    }

    private b() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public JsonArray deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        p.g(decoder);
        return new JsonArray((List) tt.a.h(o.f62005a).deserialize(decoder));
    }

    @Override // st.l
    /* renamed from: b */
    public void serialize(@NotNull Encoder encoder, @NotNull JsonArray value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        p.h(encoder);
        tt.a.h(o.f62005a).serialize(encoder, value);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f61949b;
    }
}
