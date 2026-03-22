package kotlin.reflect;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KClasses.kt */
@Metadata
@SourceDebugExtension({"SMAP\nKClasses.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KClasses.kt\nkotlin/reflect/KClasses\n+ 2 KClassesImpl.kt\nkotlin/reflect/KClassesImplKt\n*L\n1#1,46:1\n9#2:47\n*S KotlinDebug\n*F\n+ 1 KClasses.kt\nkotlin/reflect/KClasses\n*L\n25#1:47\n*E\n"})
/* loaded from: classes8.dex */
public final class KClasses {
    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> T cast(@NotNull KClass<T> kClass, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        if (kClass.isInstance(obj)) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type T of kotlin.reflect.KClasses.cast");
            return obj;
        }
        throw new ClassCastException("Value cannot be cast to " + kClass.getQualifiedName());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <T> T safeCast(@NotNull KClass<T> kClass, @Nullable Object obj) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        if (kClass.isInstance(obj)) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type T of kotlin.reflect.KClasses.safeCast");
            return obj;
        }
        return null;
    }
}
