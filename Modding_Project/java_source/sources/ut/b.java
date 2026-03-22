package ut;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import vt.q2;
/* compiled from: ContextAware.kt */
@Metadata
@SourceDebugExtension({"SMAP\nContextAware.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContextAware.kt\nkotlinx/serialization/descriptors/ContextAwareKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n1#2:112\n1557#3:113\n1628#3,3:114\n*S KotlinDebug\n*F\n+ 1 ContextAware.kt\nkotlinx/serialization/descriptors/ContextAwareKt\n*L\n76#1:113\n76#1:114,3\n*E\n"})
/* loaded from: classes8.dex */
public final class b {
    @Nullable
    public static final KClass<?> a(@NotNull SerialDescriptor serialDescriptor) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        if (serialDescriptor instanceof c) {
            return ((c) serialDescriptor).f68605b;
        }
        if (serialDescriptor instanceof q2) {
            return a(((q2) serialDescriptor).j());
        }
        return null;
    }

    @Nullable
    public static final SerialDescriptor b(@NotNull xt.a aVar, @NotNull SerialDescriptor descriptor) {
        KSerializer c10;
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(descriptor, "descriptor");
        KClass<?> a10 = a(descriptor);
        if (a10 == null || (c10 = xt.a.c(aVar, a10, null, 2, null)) == null) {
            return null;
        }
        return c10.getDescriptor();
    }

    @NotNull
    public static final SerialDescriptor c(@NotNull SerialDescriptor serialDescriptor, @NotNull KClass<?> context) {
        Intrinsics.checkNotNullParameter(serialDescriptor, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        return new c(serialDescriptor, context);
    }
}
