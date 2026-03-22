package wt;

import java.lang.annotation.Annotation;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.ClassDiscriminatorMode;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.internal.JsonEncodingException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ut.l;
/* compiled from: Polymorphic.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPolymorphic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 TreeJsonEncoder.kt\nkotlinx/serialization/json/internal/TreeJsonEncoderKt\n*L\n1#1,107:1\n1#2:108\n271#3,8:109\n*S KotlinDebug\n*F\n+ 1 Polymorphic.kt\nkotlinx/serialization/json/internal/PolymorphicKt\n*L\n81#1:109,8\n*E\n"})
/* loaded from: classes8.dex */
public final class p0 {

    /* compiled from: Polymorphic.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ClassDiscriminatorMode.values().length];
            try {
                iArr[ClassDiscriminatorMode.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ClassDiscriminatorMode.POLYMORPHIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ClassDiscriminatorMode.ALL_JSON_OBJECTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void b(@NotNull ut.l kind) {
        Intrinsics.checkNotNullParameter(kind, "kind");
        if (!(kind instanceof l.b)) {
            if (!(kind instanceof ut.e)) {
                if (!(kind instanceof ut.d)) {
                    return;
                }
                throw new IllegalStateException("Actual serializer for polymorphic cannot be polymorphic itself");
            }
            throw new IllegalStateException("Primitives cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
        }
        throw new IllegalStateException("Enums cannot be serialized polymorphically with 'type' parameter. You can use 'JsonBuilder.useArrayPolymorphism' instead");
    }

    @NotNull
    public static final String c(@NotNull SerialDescriptor serialDescriptor, @NotNull kotlinx.serialization.json.a json) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(json, "json");
        for (Annotation annotation : serialDescriptor.getAnnotations()) {
            if (annotation instanceof kotlinx.serialization.json.d) {
                return ((kotlinx.serialization.json.d) annotation).discriminator();
            }
        }
        return json.d().e();
    }

    @NotNull
    public static final Void d(@Nullable String str, @NotNull JsonElement element) {
        Intrinsics.checkNotNullParameter(element, "element");
        throw new JsonEncodingException("Class with serial name " + str + " cannot be serialized polymorphically because it is represented as " + Reflection.getOrCreateKotlinClass(element.getClass()).getSimpleName() + ". Make sure that its JsonTransformingSerializer returns JsonObject, so class discriminator can be added to it.");
    }

    public static final void e(st.l<?> lVar, st.l<?> lVar2, String str) {
        if (!(lVar instanceof st.i) || !vt.w0.a(lVar2.getDescriptor()).contains(str)) {
            return;
        }
        String h10 = ((st.i) lVar).getDescriptor().h();
        String h11 = lVar2.getDescriptor().h();
        throw new IllegalStateException(("Sealed class '" + h11 + "' cannot be serialized as base class '" + h10 + "' because it has property name that conflicts with JSON class discriminator '" + str + "'. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism").toString());
    }
}
