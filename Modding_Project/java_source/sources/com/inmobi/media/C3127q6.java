package com.inmobi.media;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.q6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3127q6 {

    /* renamed from: b  reason: collision with root package name */
    public static boolean f25191b;

    /* renamed from: a  reason: collision with root package name */
    public final HashMap f25192a = new HashMap();

    public static final boolean a(@NotNull JSONObject jSONObject, @NotNull JSONObject jSONObject2) {
        return C3111p6.a(jSONObject, jSONObject2);
    }

    public static final /* synthetic */ String b() {
        return "q6";
    }

    public static final void a(@NotNull Object obj, @NotNull Object obj2) {
        C3111p6.b(obj, obj2);
    }

    public static final void b(boolean z10) {
        f25191b = z10;
    }

    @NotNull
    public final C3127q6 a(@NotNull Ec key, @NotNull Dc types) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(types, "types");
        this.f25192a.put(key, types);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:172:0x021d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0215 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final org.json.JSONObject a(java.lang.Object r14, java.lang.Class r15) {
        /*
            Method dump skipped, instructions count: 714
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3127q6.a(java.lang.Object, java.lang.Class):org.json.JSONObject");
    }

    @Nullable
    public final JSONObject a(@NotNull Object obj) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        return a(obj, (Class) obj.getClass());
    }

    @Nullable
    public final Object a(@NotNull JSONObject jsonObject, @NotNull Class<Object> type) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        Intrinsics.checkNotNullParameter(type, "type");
        return type.cast(a(jsonObject, type, null, null));
    }

    public final Object a(JSONObject jSONObject, Class cls, Object obj, Object obj2) {
        Object obj3;
        boolean z10;
        Object newInstance;
        Object obj4;
        Field[] declaredFields;
        int length;
        int i10;
        Field[] fieldArr;
        int i11;
        String str;
        boolean z11;
        JSONArray optJSONArray;
        Object obj5 = null;
        try {
            cls.getClass();
            cls.toString();
            Objects.toString(obj);
            z10 = true;
            if (obj2 == null) {
                try {
                    Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
                    Intrinsics.checkNotNull(declaredConstructors);
                    if (declaredConstructors.length == 0) {
                        newInstance = cls.newInstance();
                    } else {
                        Constructor<?> constructor = declaredConstructors[0];
                        constructor.setAccessible(true);
                        int length2 = constructor.getParameterTypes().length;
                        if (length2 == 0) {
                            newInstance = constructor.newInstance(null);
                        } else {
                            Object[] objArr = new Object[length2];
                            Class<?>[] parameterTypes = constructor.getParameterTypes();
                            Intrinsics.checkNotNullExpressionValue(parameterTypes, "getParameterTypes(...)");
                            int length3 = parameterTypes.length;
                            int i12 = 0;
                            int i13 = 0;
                            while (i12 < length3) {
                                Class<?> cls2 = parameterTypes[i12];
                                int i14 = i13 + 1;
                                Intrinsics.checkNotNull(cls2);
                                if (!Intrinsics.areEqual(Integer.TYPE, cls2) && !Intrinsics.areEqual(Long.TYPE, cls2)) {
                                    if (Intrinsics.areEqual(Boolean.TYPE, cls2)) {
                                        obj4 = Boolean.FALSE;
                                    } else {
                                        if (!Intrinsics.areEqual(Double.TYPE, cls2) && !Intrinsics.areEqual(Float.TYPE, cls2)) {
                                            obj4 = null;
                                        }
                                        obj4 = Double.valueOf(0.0d);
                                    }
                                    objArr[i13] = obj4;
                                    i12++;
                                    i13 = i14;
                                }
                                obj4 = 0;
                                objArr[i13] = obj4;
                                i12++;
                                i13 = i14;
                            }
                            newInstance = constructor.newInstance(Arrays.copyOf(objArr, length2));
                        }
                    }
                } catch (Exception unused) {
                    cls.toString();
                    return null;
                }
            } else {
                newInstance = obj2;
            }
            if (cls.getSuperclass() != null) {
                Class superclass = cls.getSuperclass();
                superclass.getClass();
                Intrinsics.checkNotNull(superclass);
                newInstance = a(jSONObject, superclass, obj, newInstance);
            }
            declaredFields = cls.getDeclaredFields();
            Intrinsics.checkNotNullExpressionValue(declaredFields, "getDeclaredFields(...)");
            length = declaredFields.length;
            i10 = 0;
        } catch (Exception e10) {
            e = e10;
            obj3 = null;
        }
        while (i10 < length) {
            Field field = declaredFields[i10];
            field.setAccessible(z10);
            String name = field.getName();
            if (!Intrinsics.areEqual(name, "shadow$_klass_") && !Modifier.isStatic(field.getModifiers()) && !field.isAnnotationPresent(Z4.class)) {
                if (jSONObject.has(name) && !jSONObject.isNull(name)) {
                    Class<?> type = field.getType();
                    Class<?> cls3 = Integer.TYPE;
                    if (!Intrinsics.areEqual(cls3, type) && !Intrinsics.areEqual(cls3, type) && !Intrinsics.areEqual(Integer.class, type)) {
                        Class cls4 = Boolean.TYPE;
                        if (!Intrinsics.areEqual(cls4, type) && !Intrinsics.areEqual(cls4, type) && !Intrinsics.areEqual(Boolean.class, type)) {
                            Class<?> cls5 = Double.TYPE;
                            if (!Intrinsics.areEqual(cls5, type) && !Intrinsics.areEqual(cls5, type) && !Intrinsics.areEqual(Double.class, type)) {
                                Class<?> cls6 = Float.TYPE;
                                if (!Intrinsics.areEqual(cls6, type) && !Intrinsics.areEqual(cls6, type) && !Intrinsics.areEqual(Float.class, type)) {
                                    Class<?> cls7 = Long.TYPE;
                                    if (!Intrinsics.areEqual(cls7, type) && !Intrinsics.areEqual(cls7, type) && !Intrinsics.areEqual(Long.class, type)) {
                                        Class<?> cls8 = Byte.TYPE;
                                        if (!Intrinsics.areEqual(cls8, type) && !Intrinsics.areEqual(cls8, type) && !Intrinsics.areEqual(Byte.class, type)) {
                                            if (Intrinsics.areEqual(String.class, type)) {
                                                field.set(newInstance, jSONObject.getString(name));
                                            } else {
                                                Class<?> cls9 = Short.TYPE;
                                                if (!Intrinsics.areEqual(cls9, type) && !Intrinsics.areEqual(cls9, type) && !Intrinsics.areEqual(Short.class, type)) {
                                                    if (Intrinsics.areEqual(JSONObject.class, type)) {
                                                        Intrinsics.checkNotNull(field);
                                                        JSONObject jSONObject2 = jSONObject.getJSONObject(field.getName());
                                                        JSONObject jSONObject3 = new JSONObject();
                                                        Intrinsics.checkNotNullParameter(field, "<this>");
                                                        if (jSONObject2 == null) {
                                                            jSONObject2 = jSONObject3;
                                                        }
                                                        field.set(newInstance, jSONObject2);
                                                    } else if (Intrinsics.areEqual(JSONArray.class, type)) {
                                                        field.set(newInstance, jSONObject.getJSONArray(name));
                                                    } else {
                                                        if (Map.class.isAssignableFrom(type)) {
                                                            try {
                                                                HashMap hashMap = this.f25192a;
                                                                Intrinsics.checkNotNull(name);
                                                                Dc dc2 = (Dc) hashMap.get(new Ec(name, cls));
                                                                if (dc2 instanceof C3128q7) {
                                                                    JSONObject optJSONObject = jSONObject.optJSONObject(name);
                                                                    C3128q7 c3128q7 = (C3128q7) dc2;
                                                                    if (optJSONObject != null) {
                                                                        optJSONObject.toString();
                                                                        Map map = (Map) ((C3128q7) dc2).a().construct();
                                                                        Intrinsics.checkNotNull(map, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.Any, kotlin.Any?>");
                                                                        Map map2 = TypeIntrinsics.asMutableMap(map);
                                                                        Iterator<String> keys = optJSONObject.keys();
                                                                        while (keys.hasNext()) {
                                                                            String next = keys.next();
                                                                            Intrinsics.checkNotNull(next);
                                                                            Field[] fieldArr2 = declaredFields;
                                                                            Object a10 = C3111p6.a(optJSONObject, next, ((C3128q7) dc2).f25193b);
                                                                            int i15 = length;
                                                                            if (C3111p6.b(((C3128q7) dc2).f25193b)) {
                                                                                a10 = ((C3128q7) dc2).f25193b.cast(a10);
                                                                            } else if (!C3111p6.a(((C3128q7) dc2).f25193b)) {
                                                                                JSONObject jSONObject4 = optJSONObject.getJSONObject(next);
                                                                                Intrinsics.checkNotNullExpressionValue(jSONObject4, "getJSONObject(...)");
                                                                                Class<Object> cls10 = c3128q7.f25193b;
                                                                                Intrinsics.checkNotNull(cls10, "null cannot be cast to non-null type java.lang.Class<T of com.inmobi.commons.utils.json.JSONConverter>");
                                                                                a10 = a(jSONObject4, cls10);
                                                                            }
                                                                            c3128q7.getClass();
                                                                            Intrinsics.checkNotNullParameter(map2, "map");
                                                                            map2.put(next, a10);
                                                                            declaredFields = fieldArr2;
                                                                            length = i15;
                                                                        }
                                                                        fieldArr = declaredFields;
                                                                        i11 = length;
                                                                        field.set(newInstance, map2);
                                                                    } else {
                                                                        fieldArr = declaredFields;
                                                                        i11 = length;
                                                                        obj3 = obj5;
                                                                        i10++;
                                                                        declaredFields = fieldArr;
                                                                        obj5 = obj3;
                                                                        length = i11;
                                                                        z10 = true;
                                                                    }
                                                                } else {
                                                                    fieldArr = declaredFields;
                                                                    i11 = length;
                                                                    type.getClass();
                                                                }
                                                            } catch (Exception e11) {
                                                                e = e11;
                                                                obj3 = null;
                                                            }
                                                        } else {
                                                            fieldArr = declaredFields;
                                                            i11 = length;
                                                            if (List.class.isAssignableFrom(type)) {
                                                                HashMap hashMap2 = this.f25192a;
                                                                Intrinsics.checkNotNull(name);
                                                                Dc dc3 = (Dc) hashMap2.get(new Ec(name, cls));
                                                                if ((dc3 instanceof U6) && (optJSONArray = jSONObject.optJSONArray(name)) != null) {
                                                                    List<Object> b10 = ((U6) dc3).b();
                                                                    Intrinsics.checkNotNull(b10, "null cannot be cast to non-null type kotlin.collections.MutableList<kotlin.Any?>");
                                                                    List asMutableList = TypeIntrinsics.asMutableList(b10);
                                                                    int length4 = optJSONArray.length();
                                                                    for (int i16 = 0; i16 < length4; i16++) {
                                                                        Object a11 = C3111p6.a(optJSONArray, i16, ((U6) dc3).c());
                                                                        if (C3111p6.b(a11.getClass())) {
                                                                            a11 = ((U6) dc3).c().cast(a11);
                                                                        } else if (!C3111p6.a(a11.getClass())) {
                                                                            JSONObject jSONObject5 = optJSONArray.getJSONObject(i16);
                                                                            Intrinsics.checkNotNullExpressionValue(jSONObject5, "getJSONObject(...)");
                                                                            Class<Object> c10 = ((U6) dc3).c();
                                                                            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type java.lang.Class<T of com.inmobi.commons.utils.json.JSONConverter>");
                                                                            a11 = a(jSONObject5, c10);
                                                                        }
                                                                        if (a11 != null) {
                                                                            asMutableList.add(a11);
                                                                        }
                                                                    }
                                                                    field.set(newInstance, asMutableList);
                                                                }
                                                            } else {
                                                                JSONObject optJSONObject2 = jSONObject.optJSONObject(name);
                                                                if (optJSONObject2 != null) {
                                                                    Objects.toString(newInstance);
                                                                    Intrinsics.checkNotNull(type);
                                                                    obj3 = null;
                                                                    try {
                                                                        field.set(newInstance, a(optJSONObject2, type, newInstance, null));
                                                                        i10++;
                                                                        declaredFields = fieldArr;
                                                                        obj5 = obj3;
                                                                        length = i11;
                                                                        z10 = true;
                                                                    } catch (Exception e12) {
                                                                        e = e12;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        obj3 = null;
                                                        i10++;
                                                        declaredFields = fieldArr;
                                                        obj5 = obj3;
                                                        length = i11;
                                                        z10 = true;
                                                    }
                                                } else {
                                                    obj3 = obj5;
                                                    fieldArr = declaredFields;
                                                    i11 = length;
                                                    Intrinsics.checkNotNull(field);
                                                    short s10 = (short) jSONObject.getInt(field.getName());
                                                    try {
                                                        if (field.getType() == cls9) {
                                                            field.getName();
                                                            field.setShort(newInstance, s10);
                                                        } else {
                                                            field.getName();
                                                            field.set(newInstance, Short.valueOf(s10));
                                                        }
                                                    } catch (Exception unused2) {
                                                        field.getName();
                                                    }
                                                    i10++;
                                                    declaredFields = fieldArr;
                                                    obj5 = obj3;
                                                    length = i11;
                                                    z10 = true;
                                                }
                                            }
                                        } else {
                                            obj3 = obj5;
                                            fieldArr = declaredFields;
                                            i11 = length;
                                            Intrinsics.checkNotNull(field);
                                            byte b11 = (byte) jSONObject.getInt(field.getName());
                                            try {
                                                if (field.getType() == cls8) {
                                                    field.getName();
                                                    field.setByte(newInstance, b11);
                                                } else {
                                                    field.getName();
                                                    field.set(newInstance, Byte.valueOf(b11));
                                                }
                                            } catch (Exception unused3) {
                                                field.getName();
                                            }
                                            i10++;
                                            declaredFields = fieldArr;
                                            obj5 = obj3;
                                            length = i11;
                                            z10 = true;
                                        }
                                    } else {
                                        obj3 = obj5;
                                        fieldArr = declaredFields;
                                        i11 = length;
                                        Intrinsics.checkNotNull(field);
                                        long j10 = jSONObject.getLong(field.getName());
                                        try {
                                            if (field.getType() == cls7) {
                                                field.getName();
                                                field.setLong(newInstance, j10);
                                            } else {
                                                field.getName();
                                                field.set(newInstance, Long.valueOf(j10));
                                            }
                                        } catch (Exception unused4) {
                                            field.getName();
                                        }
                                        i10++;
                                        declaredFields = fieldArr;
                                        obj5 = obj3;
                                        length = i11;
                                        z10 = true;
                                    }
                                } else {
                                    obj3 = obj5;
                                    fieldArr = declaredFields;
                                    i11 = length;
                                    Intrinsics.checkNotNull(field);
                                    float f10 = (float) jSONObject.getDouble(field.getName());
                                    try {
                                        if (field.getType() == cls6) {
                                            field.getName();
                                            field.setFloat(newInstance, f10);
                                        } else {
                                            field.getName();
                                            field.set(newInstance, Float.valueOf(f10));
                                        }
                                    } catch (Exception unused5) {
                                        field.getName();
                                    }
                                    i10++;
                                    declaredFields = fieldArr;
                                    obj5 = obj3;
                                    length = i11;
                                    z10 = true;
                                }
                            } else {
                                obj3 = obj5;
                                fieldArr = declaredFields;
                                i11 = length;
                                Intrinsics.checkNotNull(field);
                                double d10 = jSONObject.getDouble(field.getName());
                                try {
                                    if (field.getType() == cls5) {
                                        field.getName();
                                        field.setDouble(newInstance, d10);
                                    } else {
                                        field.getName();
                                        field.set(newInstance, Double.valueOf(d10));
                                    }
                                } catch (Exception unused6) {
                                    field.getName();
                                }
                                i10++;
                                declaredFields = fieldArr;
                                obj5 = obj3;
                                length = i11;
                                z10 = true;
                            }
                        } else {
                            obj3 = obj5;
                            fieldArr = declaredFields;
                            i11 = length;
                            Intrinsics.checkNotNull(field);
                            try {
                                z11 = jSONObject.getBoolean(field.getName());
                            } catch (JSONException unused7) {
                                z11 = jSONObject.getInt(str) != 0;
                            }
                            Boolean valueOf = Boolean.valueOf(z11);
                            try {
                                if (field.getType() == Boolean.TYPE) {
                                    field.setBoolean(newInstance, z11);
                                } else {
                                    field.set(newInstance, valueOf);
                                }
                            } catch (Exception unused8) {
                                field.getName();
                            }
                            i10++;
                            declaredFields = fieldArr;
                            obj5 = obj3;
                            length = i11;
                            z10 = true;
                        }
                    } else {
                        obj3 = obj5;
                        fieldArr = declaredFields;
                        i11 = length;
                        Intrinsics.checkNotNull(field);
                        int i17 = jSONObject.getInt(field.getName());
                        try {
                            if (field.getType() == cls3) {
                                field.getName();
                                field.setInt(newInstance, i17);
                            } else {
                                field.getName();
                                field.set(newInstance, Integer.valueOf(i17));
                            }
                        } catch (Exception unused9) {
                            field.getName();
                        }
                        i10++;
                        declaredFields = fieldArr;
                        obj5 = obj3;
                        length = i11;
                        z10 = true;
                    }
                } else {
                    obj3 = obj5;
                    fieldArr = declaredFields;
                    i11 = length;
                    if (field.isAnnotationPresent(U9.class)) {
                        throw new JSONException("NonNullable field " + name + " is not present or null in the JSONObject");
                    }
                    i10++;
                    declaredFields = fieldArr;
                    obj5 = obj3;
                    length = i11;
                    z10 = true;
                }
                e = e12;
                Log.getStackTraceString(e);
                return obj3;
            }
            obj3 = obj5;
            fieldArr = declaredFields;
            i11 = length;
            i10++;
            declaredFields = fieldArr;
            obj5 = obj3;
            length = i11;
            z10 = true;
        }
        return newInstance;
    }
}
