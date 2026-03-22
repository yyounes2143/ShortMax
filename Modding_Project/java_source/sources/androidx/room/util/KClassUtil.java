package androidx.room.util;

import androidx.annotation.RestrictTo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: KClassUtil.jvmAndroid.kt */
@Metadata
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes2.dex */
public final class KClassUtil {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static final <T, C> T findAndInstantiateDatabaseImpl(@NotNull Class<C> klass, @NotNull String suffix) {
        String str;
        Intrinsics.checkNotNullParameter(klass, "klass");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        Package r02 = klass.getPackage();
        String str2 = (r02 == null || (str2 = r02.getName()) == null) ? "" : "";
        String canonicalName = klass.getCanonicalName();
        Intrinsics.checkNotNull(canonicalName);
        if (str2.length() != 0) {
            canonicalName = canonicalName.substring(str2.length() + 1);
            Intrinsics.checkNotNullExpressionValue(canonicalName, "substring(...)");
        }
        String str3 = canonicalName;
        String str4 = StringsKt.O(str3, '.', '_', false, 4, null) + suffix;
        try {
            if (str2.length() == 0) {
                str = str4;
            } else {
                str = str2 + '.' + str4;
            }
            Class<?> cls = Class.forName(str, true, klass.getClassLoader());
            Intrinsics.checkNotNull(cls, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.util.KClassUtil.findAndInstantiateDatabaseImpl>");
            return (T) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException e10) {
            throw new RuntimeException("Cannot find implementation for " + klass.getCanonicalName() + ". " + str4 + " does not exist. Is Room annotation processor correctly configured?", e10);
        } catch (IllegalAccessException e11) {
            throw new RuntimeException("Cannot access the constructor " + klass.getCanonicalName(), e11);
        } catch (InstantiationException e12) {
            throw new RuntimeException("Failed to create an instance of " + klass.getCanonicalName(), e12);
        }
    }

    public static /* synthetic */ Object findAndInstantiateDatabaseImpl$default(Class cls, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = "_Impl";
        }
        return findAndInstantiateDatabaseImpl(cls, str);
    }
}
