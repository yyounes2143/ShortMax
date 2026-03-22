package kotlinx.serialization.json;

import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonElementSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a0 implements KSerializer<JsonObject> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a0 f61943a = new a0();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SerialDescriptor f61944b = a.f61945b;

    /* compiled from: JsonElementSerializers.kt */
    @Metadata
    /* loaded from: classes8.dex */
    private static final class a implements SerialDescriptor {
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        public static final a f61945b = new a();
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private static final String f61946c = "kotlinx.serialization.json.JsonObject";

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ SerialDescriptor f61947a = tt.a.k(tt.a.D(StringCompanionObject.INSTANCE), o.f62005a).getDescriptor();

        private a() {
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean b() {
            return this.f61947a.b();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int c(@NotNull String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return this.f61947a.c(name);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public SerialDescriptor d(int i10) {
            return this.f61947a.d(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int e() {
            return this.f61947a.e();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public String f(int i10) {
            return this.f61947a.f(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public List<Annotation> g(int i10) {
            return this.f61947a.g(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public List<Annotation> getAnnotations() {
            return this.f61947a.getAnnotations();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public ut.l getKind() {
            return this.f61947a.getKind();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        @NotNull
        public String h() {
            return f61946c;
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean i(int i10) {
            return this.f61947a.i(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isInline() {
            return this.f61947a.isInline();
        }
    }

    private a0() {
    }

    @Override // st.c
    @NotNull
    /* renamed from: a */
    public JsonObject deserialize(@NotNull Decoder decoder) {
        Intrinsics.checkNotNullParameter(decoder, "decoder");
        p.b(decoder);
        return new JsonObject((Map) tt.a.k(tt.a.D(StringCompanionObject.INSTANCE), o.f62005a).deserialize(decoder));
    }

    @Override // st.l
    /* renamed from: b */
    public void serialize(@NotNull Encoder encoder, @NotNull JsonObject value) {
        Intrinsics.checkNotNullParameter(encoder, "encoder");
        Intrinsics.checkNotNullParameter(value, "value");
        p.c(encoder);
        tt.a.k(tt.a.D(StringCompanionObject.INSTANCE), o.f62005a).serialize(encoder, value);
    }

    @Override // kotlinx.serialization.KSerializer, st.l, st.c
    @NotNull
    public SerialDescriptor getDescriptor() {
        return f61944b;
    }
}
