package com.inmobi.media;

import java.lang.reflect.Field;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.p6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3111p6 {
    /* JADX WARN: Removed duplicated region for block: B:62:0x0188 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x018a A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.Object r6, java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3111p6.a(java.lang.Object, java.lang.Object):boolean");
    }

    public static final boolean b(Class cls) {
        Class cls2 = Integer.TYPE;
        if (!Intrinsics.areEqual(cls2, cls) && !Intrinsics.areEqual(cls2, cls)) {
            Class cls3 = Boolean.TYPE;
            if (!Intrinsics.areEqual(cls3, cls) && !Intrinsics.areEqual(cls3, cls)) {
                Class cls4 = Double.TYPE;
                if (!Intrinsics.areEqual(cls4, cls) && !Intrinsics.areEqual(cls4, cls)) {
                    Class cls5 = Float.TYPE;
                    if (!Intrinsics.areEqual(cls5, cls) && !Intrinsics.areEqual(cls5, cls)) {
                        Class cls6 = Long.TYPE;
                        if (!Intrinsics.areEqual(cls6, cls) && !Intrinsics.areEqual(cls6, cls) && !Intrinsics.areEqual(String.class, cls)) {
                            Class cls7 = Byte.TYPE;
                            if (!Intrinsics.areEqual(cls7, cls) && !Intrinsics.areEqual(cls7, cls)) {
                                Class cls8 = Short.TYPE;
                                if (!Intrinsics.areEqual(cls8, cls) && !Intrinsics.areEqual(cls8, cls)) {
                                    return false;
                                }
                            }
                        }
                    }
                }
            }
        }
        return true;
    }

    public static void b(Object copyFrom, Object copyTo) {
        Intrinsics.checkNotNullParameter(copyFrom, "copyFrom");
        Intrinsics.checkNotNullParameter(copyTo, "copyTo");
        Class<?> cls = copyFrom.getClass();
        if (cls.isAssignableFrom(copyTo.getClass())) {
            Object cast = cls.cast(copyTo);
            Intrinsics.checkNotNullExpressionValue(cast, "cast(...)");
            Field[] declaredFields = cls.getDeclaredFields();
            Intrinsics.checkNotNullExpressionValue(declaredFields, "getDeclaredFields(...)");
            for (Field field : declaredFields) {
                try {
                    field.setAccessible(true);
                    field.set(cast, field.get(copyFrom));
                } catch (IllegalAccessException unused) {
                }
            }
        }
    }

    public static boolean a(JSONArray jSONArray, JSONArray jSONArray2) {
        if (jSONArray.length() == jSONArray2.length()) {
            int length = jSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                try {
                    Object obj = jSONArray.get(i10);
                    Object obj2 = jSONArray2.get(i10);
                    if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
                        if (!a((JSONObject) obj, (JSONObject) obj2)) {
                            return false;
                        }
                    } else if ((obj instanceof JSONArray) && (obj2 instanceof JSONArray)) {
                        if (!a((JSONArray) obj, (JSONArray) obj2)) {
                            return false;
                        }
                    } else {
                        Intrinsics.checkNotNull(obj);
                        Intrinsics.checkNotNull(obj2);
                        if (!a(obj, obj2)) {
                            return false;
                        }
                    }
                } catch (JSONException unused) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public static boolean a(JSONObject json1, JSONObject json2) {
        Object obj;
        Object obj2;
        Intrinsics.checkNotNullParameter(json1, "json1");
        Intrinsics.checkNotNullParameter(json2, "json2");
        if (json1.length() == json2.length()) {
            Iterator<String> keys = json1.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                try {
                    obj = json1.get(next);
                    obj2 = json2.get(next);
                } catch (JSONException unused) {
                }
                if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
                    if (!a((JSONObject) obj, (JSONObject) obj2)) {
                        return false;
                    }
                } else if ((obj instanceof JSONArray) && (obj2 instanceof JSONArray)) {
                    if (!a((JSONArray) obj, (JSONArray) obj2)) {
                        return false;
                    }
                } else {
                    Intrinsics.checkNotNull(obj);
                    Intrinsics.checkNotNull(obj2);
                    if (!a(obj, obj2)) {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }

    public static final boolean a(Class cls) {
        return Intrinsics.areEqual(Integer.class, cls) || Intrinsics.areEqual(Boolean.class, cls) || Intrinsics.areEqual(Double.class, cls) || Intrinsics.areEqual(Float.class, cls) || Intrinsics.areEqual(Long.class, cls) || Intrinsics.areEqual(String.class, cls) || Intrinsics.areEqual(Byte.class, cls) || Intrinsics.areEqual(Short.class, cls);
    }

    public static final Object a(JSONArray jSONArray, int i10, Class cls) {
        Object obj;
        if (Intrinsics.areEqual(Integer.TYPE, cls)) {
            obj = Integer.valueOf(jSONArray.getInt(i10));
        } else if (Intrinsics.areEqual(Double.TYPE, cls)) {
            obj = Double.valueOf(jSONArray.getDouble(i10));
        } else if (Intrinsics.areEqual(Float.TYPE, cls)) {
            obj = Float.valueOf((float) jSONArray.getDouble(i10));
        } else if (Intrinsics.areEqual(Long.TYPE, cls)) {
            obj = Long.valueOf(jSONArray.getLong(i10));
        } else if (Intrinsics.areEqual(Byte.TYPE, cls)) {
            obj = Byte.valueOf((byte) jSONArray.getInt(i10));
        } else if (Intrinsics.areEqual(Short.TYPE, cls)) {
            obj = Short.valueOf((short) jSONArray.getInt(i10));
        } else {
            obj = jSONArray.get(i10);
        }
        Intrinsics.checkNotNull(obj);
        return obj;
    }

    public static final Object a(JSONObject jSONObject, String str, Class cls) {
        Object obj;
        if (Intrinsics.areEqual(Integer.TYPE, cls)) {
            obj = Integer.valueOf(jSONObject.getInt(str));
        } else if (Intrinsics.areEqual(Double.TYPE, cls)) {
            obj = Double.valueOf(jSONObject.getDouble(str));
        } else if (Intrinsics.areEqual(Float.TYPE, cls)) {
            obj = Float.valueOf((float) jSONObject.getDouble(str));
        } else if (Intrinsics.areEqual(Long.TYPE, cls)) {
            obj = Long.valueOf(jSONObject.getLong(str));
        } else if (Intrinsics.areEqual(Byte.TYPE, cls)) {
            obj = Byte.valueOf((byte) jSONObject.getInt(str));
        } else if (Intrinsics.areEqual(Short.TYPE, cls)) {
            obj = Short.valueOf((short) jSONObject.getInt(str));
        } else {
            obj = jSONObject.get(str);
        }
        Intrinsics.checkNotNull(obj);
        return obj;
    }
}
