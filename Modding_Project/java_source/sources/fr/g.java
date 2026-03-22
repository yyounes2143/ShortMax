package fr;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Field;
/* compiled from: ReflectionUtils.java */
/* loaded from: classes8.dex */
public class g {
    @Nullable
    public static Object a(@NonNull Class<?> cls, @NonNull String str, @Nullable Object obj) {
        try {
            return d(cls, str, obj);
        } catch (Throwable unused) {
            Class<? super Object> superclass = cls.getSuperclass();
            if (superclass == null) {
                return null;
            }
            return a(superclass, str, obj);
        }
    }

    @Nullable
    public static Object b(@NonNull Object obj, @NonNull String str) {
        return a(obj.getClass(), str, obj);
    }

    @Nullable
    public static Object c(@NonNull Object obj, @NonNull String[] strArr) {
        if (strArr.length == 0) {
            return null;
        }
        for (String str : strArr) {
            obj = b(obj, str);
            if (obj == null) {
                return null;
            }
        }
        return obj;
    }

    @Nullable
    public static Object d(@NonNull Class<?> cls, @NonNull String str, @Nullable Object obj) throws NoSuchFieldException, IllegalAccessException, IllegalArgumentException, SecurityException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField.get(obj);
    }
}
