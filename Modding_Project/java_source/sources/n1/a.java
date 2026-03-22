package n1;

import com.drake.brv.reflect.TypeList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import org.jetbrains.annotations.NotNull;
/* compiled from: TypeList.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    public static final boolean a(@NotNull KType kType, @NotNull Object other) {
        Intrinsics.checkNotNullParameter(kType, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        KClassifier classifier = kType.getClassifier();
        if (classifier != null) {
            Class c10 = zs.a.c((KClass) classifier);
            if (other instanceof TypeList) {
                if (Intrinsics.areEqual(c10, other.getClass()) && Intrinsics.areEqual(kType.getArguments(), ((TypeList) other).f().getArguments())) {
                    return true;
                }
                return false;
            }
            return Intrinsics.areEqual(c10, other.getClass());
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.reflect.KClass<*>");
    }

    public static final boolean b(@NotNull KType kType, @NotNull Object other) {
        Intrinsics.checkNotNullParameter(kType, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        KClassifier classifier = kType.getClassifier();
        if (classifier != null) {
            Class c10 = zs.a.c((KClass) classifier);
            if (other instanceof TypeList) {
                if (c10.isInstance(other) && Intrinsics.areEqual(kType.getArguments(), ((TypeList) other).f().getArguments())) {
                    return true;
                }
                return false;
            }
            return c10.isInstance(other);
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.reflect.KClass<*>");
    }
}
