package ib;

import android.text.TextUtils;
import com.huawei.hms.framework.common.EmuiUtil;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
/* compiled from: EmuiUtil.java */
/* loaded from: classes5.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private static int f53382a = -1;

    /* renamed from: b  reason: collision with root package name */
    private static int f53383b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: EmuiUtil.java */
    /* loaded from: classes5.dex */
    public static class a {
        public static Class<?> a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            if (!EmuiUtil.BUILDEX_VERSION.equals(str) && !EmuiUtil.IMMERSION_STYLE.equals(str)) {
                return null;
            }
            try {
                return Class.forName(str);
            } catch (ClassNotFoundException unused) {
                return null;
            }
        }

        public static Object b(String str, String str2) {
            Class<?> a10 = a(str);
            if (a10 == null || TextUtils.isEmpty(str2) || !EmuiUtil.BUILDEX_VERSION.equals(str) || !EmuiUtil.EMUI_SDK_INT.equals(str2)) {
                return null;
            }
            try {
                Field declaredField = a10.getDeclaredField(str2);
                AccessibleObject.setAccessible(new Field[]{declaredField}, true);
                return declaredField.get(a10);
            } catch (IllegalAccessException unused) {
                t.c("ReflectionUtils", "Exception in getFieldObj :: IllegalAccessException", true);
                return null;
            } catch (IllegalArgumentException unused2) {
                t.c("ReflectionUtils", "Exception in getFieldObj :: IllegalArgumentException", true);
                return null;
            } catch (NoSuchFieldException unused3) {
                t.c("ReflectionUtils", "Exception in getFieldObj :: NoSuchFieldException", true);
                return null;
            } catch (SecurityException unused4) {
                t.b("ReflectionUtils", "not security int method getStaticFieldObj", true);
                return null;
            }
        }
    }

    static {
        b();
    }

    public static boolean a() {
        if (f53383b >= 21) {
            return true;
        }
        return false;
    }

    private static void b() {
        int d10 = d();
        f53383b = d10;
        if (d10 >= 17) {
            f53382a = 90;
        }
        if (d10 >= 11) {
            f53382a = 50;
        } else if (d10 >= 10) {
            f53382a = 41;
        } else if (d10 >= 9) {
            f53382a = 40;
        } else if (d10 >= 8) {
            f53382a = 31;
        } else if (d10 >= 7) {
            f53382a = 30;
        }
        if (f53382a == -1) {
            c();
        }
    }

    private static void c() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String str = (String) cls.getDeclaredMethod("get", String.class).invoke(cls, "ro.build.version.emui");
            if (str != null) {
                if (str.contains("EmotionUI_3.0")) {
                    f53382a = 30;
                } else if (str.contains("EmotionUI_3.1")) {
                    f53382a = 31;
                } else if (str.contains("EmotionUI_4.0")) {
                    f53382a = 40;
                } else if (str.contains("EmotionUI_4.1")) {
                    f53382a = 41;
                } else if (str.contains("EmotionUI_5.0")) {
                    f53382a = 50;
                }
            }
        } catch (RuntimeException unused) {
            t.d("EmuiUtil", "RuntimeException getEmuiType.", true);
        } catch (Exception unused2) {
            t.d("EmuiUtil", "getEmuiType Exception.", true);
        }
    }

    private static int d() {
        Object b10 = a.b(EmuiUtil.BUILDEX_VERSION, EmuiUtil.EMUI_SDK_INT);
        if (b10 != null) {
            try {
                f53383b = ((Integer) b10).intValue();
            } catch (ClassCastException unused) {
                t.d("EmuiUtil", "getEMUIVersionCode is not a number", true);
            }
        }
        return f53383b;
    }
}
