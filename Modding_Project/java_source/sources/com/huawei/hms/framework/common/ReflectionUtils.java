package com.huawei.hms.framework.common;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;
/* loaded from: classes5.dex */
public class ReflectionUtils {
    private static Class<?> a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private static Object b(Object obj, Method method, Object... objArr) throws UnsupportedOperationException {
        if (method == null) {
            return null;
        }
        try {
            return method.invoke(obj, objArr);
        } catch (RuntimeException e10) {
            Logger.e("ReflectionUtils", "RuntimeException in invoke:", e10);
            return null;
        } catch (Exception e11) {
            Logger.e("ReflectionUtils", "Exception in invoke:", e11);
            return null;
        }
    }

    private static void c(Class<?>[] clsArr, Object obj, int i10) {
        if (obj instanceof Integer) {
            clsArr[i10] = Integer.TYPE;
        } else if (obj instanceof Long) {
            clsArr[i10] = Long.TYPE;
        } else if (obj instanceof Double) {
            clsArr[i10] = Double.TYPE;
        } else if (obj instanceof Float) {
            clsArr[i10] = Float.TYPE;
        } else if (obj instanceof Boolean) {
            clsArr[i10] = Boolean.TYPE;
        } else if (obj instanceof Character) {
            clsArr[i10] = Character.TYPE;
        } else if (obj instanceof Byte) {
            clsArr[i10] = Byte.TYPE;
        } else if (obj instanceof Void) {
            clsArr[i10] = Void.TYPE;
        } else if (obj instanceof Short) {
            clsArr[i10] = Short.TYPE;
        } else {
            clsArr[i10] = obj.getClass();
        }
    }

    public static boolean checkCompatible(String str) {
        try {
            d(str);
            return true;
        } catch (Exception unused) {
            Logger.w("ReflectionUtils", str + "ClassNotFoundException");
            return false;
        }
    }

    private static void d(String str) throws ClassNotFoundException {
        ClassLoader classLoader = ReflectionUtils.class.getClassLoader();
        if (classLoader != null) {
            classLoader.loadClass(str);
            return;
        }
        throw new ClassNotFoundException("not found classloader");
    }

    public static Field getField(Object obj, String str) {
        if (obj != null && !TextUtils.isEmpty(str)) {
            try {
                final Field declaredField = obj.getClass().getDeclaredField(str);
                AccessController.doPrivileged(new PrivilegedAction() { // from class: com.huawei.hms.framework.common.ReflectionUtils.2
                    @Override // java.security.PrivilegedAction
                    public Object run() {
                        declaredField.setAccessible(true);
                        return null;
                    }
                });
                return declaredField;
            } catch (IllegalArgumentException e10) {
                Logger.e("ReflectionUtils", "Exception in getField :: IllegalArgumentException:", e10);
            } catch (NoSuchFieldException e11) {
                Logger.e("ReflectionUtils", "Exception in getField :: NoSuchFieldException:", e11);
            } catch (SecurityException e12) {
                Logger.e("ReflectionUtils", "not security int method getField,SecurityException:", e12);
            }
        }
        return null;
    }

    public static Object getFieldObj(Object obj, String str) {
        if (obj == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            final Field declaredField = obj.getClass().getDeclaredField(str);
            AccessController.doPrivileged(new PrivilegedAction() { // from class: com.huawei.hms.framework.common.ReflectionUtils.1
                @Override // java.security.PrivilegedAction
                public Object run() {
                    declaredField.setAccessible(true);
                    return null;
                }
            });
            return declaredField.get(obj);
        } catch (IllegalAccessException e10) {
            Logger.e("ReflectionUtils", "Exception in getFieldObj :: IllegalAccessException:", e10);
            return null;
        } catch (IllegalArgumentException e11) {
            Logger.e("ReflectionUtils", "Exception in getFieldObj :: IllegalArgumentException:", e11);
            return null;
        } catch (NoSuchFieldException e12) {
            Logger.e("ReflectionUtils", "Exception in getFieldObj :: NoSuchFieldException:", e12);
            return null;
        } catch (SecurityException e13) {
            Logger.e("ReflectionUtils", "not security int method getFieldObj,SecurityException:", e13);
            return null;
        }
    }

    public static Method getMethod(Class<?> cls, String str, Class<?>... clsArr) {
        if (cls != null && str != null) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException e10) {
                Logger.e("ReflectionUtils", "NoSuchMethodException:", e10);
                return null;
            } catch (SecurityException e11) {
                Logger.e("ReflectionUtils", "SecurityException:", e11);
                return null;
            }
        }
        Logger.w("ReflectionUtils", "targetClass is  null pr name is null:");
        return null;
    }

    public static Object getStaticFieldObj(String str, String str2) {
        Class<?> a10;
        if (str == null || (a10 = a(str)) == null || TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            final Field declaredField = a10.getDeclaredField(str2);
            AccessController.doPrivileged(new PrivilegedAction() { // from class: com.huawei.hms.framework.common.ReflectionUtils.3
                @Override // java.security.PrivilegedAction
                public Object run() {
                    declaredField.setAccessible(true);
                    return null;
                }
            });
            return declaredField.get(a10);
        } catch (IllegalAccessException e10) {
            Logger.e("ReflectionUtils", "Exception in getFieldObj :: IllegalAccessException:", e10);
            return null;
        } catch (IllegalArgumentException e11) {
            Logger.e("ReflectionUtils", "Exception in getFieldObj :: IllegalArgumentException:", e11);
            return null;
        } catch (NoSuchFieldException e12) {
            Logger.e("ReflectionUtils", "Exception in getFieldObj :: NoSuchFieldException:", e12);
            return null;
        } catch (SecurityException e13) {
            Logger.e("ReflectionUtils", "not security int method getStaticFieldObj,SecurityException:", e13);
            return null;
        }
    }

    public static Object invokeStaticMethod(String str, String str2, Object... objArr) {
        Class[] clsArr;
        if (str == null) {
            return null;
        }
        if (objArr != null) {
            int length = objArr.length;
            clsArr = new Class[length];
            for (int i10 = 0; i10 < length; i10++) {
                c(clsArr, objArr[i10], i10);
            }
        } else {
            clsArr = null;
        }
        Method method = getMethod(a(str), str2, clsArr);
        if (method == null) {
            return null;
        }
        return b(null, method, objArr);
    }

    public static boolean checkCompatible(String str, String str2, Class<?>... clsArr) {
        try {
            if (str == null || str2 == null) {
                Logger.w("ReflectionUtils", "targetClass is  null or name is null:");
                return false;
            }
            Class.forName(str).getDeclaredMethod(str2, clsArr);
            Logger.v("ReflectionUtils", "has method : " + str2);
            return true;
        } catch (RuntimeException unused) {
            Logger.w("ReflectionUtils", str + " RuntimeException");
            return false;
        } catch (Exception unused2) {
            Logger.w("ReflectionUtils", str2 + " NoSuchMethodException");
            return false;
        }
    }

    public static Object invokeStaticMethod(String str, String str2, Class<?>[] clsArr, Object... objArr) {
        Method method = getMethod(a(str), str2, clsArr);
        if (method == null) {
            return null;
        }
        return b(null, method, objArr);
    }
}
