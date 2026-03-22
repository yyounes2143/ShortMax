package kotlinx.serialization.json;

import java.lang.annotation.Annotation;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
/* compiled from: JsonElementSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public final class p {

    /* compiled from: JsonElementSerializers.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements SerialDescriptor {

        /* renamed from: a */
        private final ms.i f62007a;

        a(Function0<? extends SerialDescriptor> function0) {
            this.f62007a = kotlin.c.b(function0);
        }

        private final SerialDescriptor a() {
            return (SerialDescriptor) this.f62007a.getValue();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean b() {
            return SerialDescriptor.a.c(this);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int c(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            return a().c(name);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public SerialDescriptor d(int i10) {
            return a().d(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public int e() {
            return a().e();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public String f(int i10) {
            return a().f(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public List<Annotation> g(int i10) {
            return a().g(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public List<Annotation> getAnnotations() {
            return SerialDescriptor.a.a(this);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public ut.l getKind() {
            return a().getKind();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public String h() {
            return a().h();
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean i(int i10) {
            return a().i(i10);
        }

        @Override // kotlinx.serialization.descriptors.SerialDescriptor
        public boolean isInline() {
            return SerialDescriptor.a.b(this);
        }
    }

    public static final /* synthetic */ SerialDescriptor a(Function0 function0) {
        return f(function0);
    }

    public static final /* synthetic */ void b(Decoder decoder) {
        g(decoder);
    }

    public static final /* synthetic */ void c(Encoder encoder) {
        h(encoder);
    }

    @NotNull
    public static final f d(@NotNull Decoder decoder) {
        f fVar;
        Intrinsics.checkNotNullParameter(decoder, "<this>");
        if (decoder instanceof f) {
            fVar = (f) decoder;
        } else {
            fVar = null;
        }
        if (fVar != null) {
            return fVar;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Decoder to be JsonDecoder, got " + Reflection.getOrCreateKotlinClass(decoder.getClass()));
    }

    @NotNull
    public static final q e(@NotNull Encoder encoder) {
        q qVar;
        Intrinsics.checkNotNullParameter(encoder, "<this>");
        if (encoder instanceof q) {
            qVar = (q) encoder;
        } else {
            qVar = null;
        }
        if (qVar != null) {
            return qVar;
        }
        throw new IllegalStateException("This serializer can be used only with Json format.Expected Encoder to be JsonEncoder, got " + Reflection.getOrCreateKotlinClass(encoder.getClass()));
    }

    public static final SerialDescriptor f(Function0<? extends SerialDescriptor> function0) {
        return new a(function0);
    }

    public static final void g(Decoder decoder) {
        d(decoder);
    }

    public static final void h(Encoder encoder) {
        e(encoder);
    }
}
