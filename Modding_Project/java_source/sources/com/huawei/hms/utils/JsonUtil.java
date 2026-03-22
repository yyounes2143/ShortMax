package com.huawei.hms.utils;

import android.text.TextUtils;
import com.huawei.hms.core.aidl.e;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.support.log.common.Base64;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import wa.a;
/* loaded from: classes5.dex */
public class JsonUtil {
    private static Object a(String str, JSONObject jSONObject) throws JSONException {
        if (jSONObject.has(str)) {
            return jSONObject.get(str);
        }
        if (jSONObject.has("header") && jSONObject.getJSONObject("header").has(str)) {
            return jSONObject.getJSONObject("header").get(str);
        }
        if (jSONObject.has("body") && jSONObject.getJSONObject("body").has(str)) {
            return jSONObject.getJSONObject("body").get(str);
        }
        return null;
    }

    private static String b(e eVar) throws IllegalAccessException, JSONException {
        Field[] declaredFields;
        JSONObject jSONObject = new JSONObject();
        for (Class<?> cls = eVar.getClass(); cls != null; cls = cls.getSuperclass()) {
            for (Field field : cls.getDeclaredFields()) {
                if (field.isAnnotationPresent(a.class)) {
                    boolean isAccessible = field.isAccessible();
                    h(field, true);
                    String name = field.getName();
                    Object obj = field.get(eVar);
                    h(field, isAccessible);
                    i(name, obj, jSONObject);
                }
            }
        }
        return jSONObject.toString();
    }

    private static List<Object> c(Type type, JSONObject jSONObject) throws JSONException, IllegalAccessException, InstantiationException {
        int i10 = jSONObject.getInt("_list_size_");
        int i11 = jSONObject.getInt("_val_type_");
        ArrayList arrayList = new ArrayList(i10);
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = jSONObject.get("_list_item_" + i12);
            if (i11 == 0) {
                arrayList.add(jsonToEntity((String) obj, (e) ((Class) ((ParameterizedType) type).getActualTypeArguments()[0]).newInstance()));
            } else if (i11 == 1) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Deprecated
    public static String createJsonString(e eVar) {
        if (eVar == null) {
            HMSLog.e("JsonUtil", "createJsonString error, the input IMessageEntity is null");
            return "";
        }
        try {
            return b(eVar);
        } catch (IllegalAccessException e10) {
            HMSLog.e("JsonUtil", "catch IllegalAccessException " + e10.getMessage());
            return "";
        } catch (JSONException e11) {
            HMSLog.e("JsonUtil", "catch JSONException " + e11.getMessage());
            return "";
        }
    }

    private static void d(e eVar, Field field, JSONObject jSONObject) throws JSONException, IllegalAccessException {
        Object k10 = k(eVar, field, jSONObject);
        if (k10 != null) {
            boolean isAccessible = field.isAccessible();
            h(field, true);
            field.set(eVar, k10);
            h(field, isAccessible);
        }
    }

    private static void e(String str, List<?> list, JSONObject jSONObject) throws JSONException, IllegalAccessException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("_val_type_", 1);
        jSONObject2.put("_list_size_", list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            i("_list_item_" + i10, list.get(i10), jSONObject2);
            if (list.get(i10) instanceof e) {
                jSONObject2.put("_val_type_", 0);
            }
        }
        jSONObject.put(str, jSONObject2);
    }

    private static void f(String str, Map map, JSONObject jSONObject) throws JSONException, IllegalAccessException {
        JSONArray jSONArray = new JSONArray();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (key instanceof e) {
                jSONArray.put(b((e) key));
            } else {
                jSONArray.put(key);
            }
            if (value instanceof e) {
                jSONArray.put(b((e) value));
            } else {
                jSONArray.put(value);
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("_val_type_", 3);
        jSONObject2.put("_map_", jSONArray.toString());
        jSONObject.put(str, jSONObject2);
    }

    private static void g(String str, byte[] bArr, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("_val_type_", 2);
        try {
            jSONObject2.put("_byte_", Base64.encode(bArr));
        } catch (IllegalArgumentException e10) {
            HMSLog.e("JsonUtil", "writeByte failed : " + e10.getMessage());
        }
        jSONObject.put(str, jSONObject2);
    }

    public static Object getInfoFromJsonobject(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (!jSONObject.has(str2)) {
                    return null;
                }
                Object obj = jSONObject.get(str2);
                if (obj instanceof String) {
                    return obj;
                }
            } catch (JSONException unused) {
                HMSLog.e("JsonUtil", "getInfoFromJsonobject:parser json error :" + str2);
            }
        }
        return null;
    }

    public static int getIntValue(JSONObject jSONObject, String str) throws JSONException {
        if (jSONObject != null && jSONObject.has(str)) {
            return jSONObject.getInt(str);
        }
        return -1;
    }

    public static String getStringValue(JSONObject jSONObject, String str) throws JSONException {
        if (jSONObject != null && jSONObject.has(str)) {
            return jSONObject.getString(str);
        }
        return null;
    }

    private static void h(final Field field, final boolean z10) {
        AccessController.doPrivileged(new PrivilegedAction() { // from class: com.huawei.hms.utils.JsonUtil.1
            @Override // java.security.PrivilegedAction
            public Object run() {
                field.setAccessible(z10);
                return null;
            }
        });
    }

    private static boolean i(String str, Object obj, JSONObject jSONObject) throws JSONException, IllegalAccessException {
        if (obj instanceof String) {
            jSONObject.put(str, (String) obj);
            return true;
        } else if (obj instanceof Integer) {
            jSONObject.put(str, ((Integer) obj).intValue());
            return true;
        } else if (obj instanceof Short) {
            jSONObject.put(str, (Short) obj);
            return true;
        } else if (obj instanceof Long) {
            jSONObject.put(str, (Long) obj);
            return true;
        } else if (obj instanceof Float) {
            jSONObject.put(str, (Float) obj);
            return true;
        } else if (obj instanceof Double) {
            jSONObject.put(str, (Double) obj);
            return true;
        } else if (obj instanceof Boolean) {
            jSONObject.put(str, (Boolean) obj);
            return true;
        } else if (obj instanceof JSONObject) {
            jSONObject.put(str, (JSONObject) obj);
            return true;
        } else if (obj instanceof byte[]) {
            g(str, (byte[]) obj, jSONObject);
            return true;
        } else if (obj instanceof List) {
            e(str, (List) obj, jSONObject);
            return true;
        } else if (obj instanceof Map) {
            f(str, (Map) obj, jSONObject);
            return true;
        } else {
            if (obj instanceof e) {
                try {
                    jSONObject.put(str, b((e) obj));
                    return true;
                } catch (IllegalAccessException e10) {
                    HMSLog.e("JsonUtil", "IllegalAccessException , " + e10);
                }
            }
            return false;
        }
    }

    private static byte[] j(JSONObject jSONObject) throws JSONException {
        try {
            return Base64.decode(jSONObject.getString("_byte_"));
        } catch (IllegalArgumentException e10) {
            HMSLog.e("JsonUtil", "readByte failed : " + e10.getMessage());
            return null;
        }
    }

    @Deprecated
    public static e jsonToEntity(String str, e eVar) {
        Class<? super Object> superclass;
        if (eVar == null) {
            return null;
        }
        try {
            Class<?> cls = eVar.getClass();
            JSONObject jSONObject = new JSONObject(str);
            while (cls != null) {
                Field[] declaredFields = cls.getDeclaredFields();
                if (declaredFields == null) {
                    superclass = cls.getSuperclass();
                } else {
                    for (Field field : declaredFields) {
                        if (field.isAnnotationPresent(a.class)) {
                            try {
                                d(eVar, field, jSONObject);
                            } catch (IllegalAccessException unused) {
                                HMSLog.e("JsonUtil", "jsonToEntity, set value of the field exception, field name:" + field.getName());
                            }
                        }
                    }
                    superclass = cls.getSuperclass();
                }
                cls = superclass;
            }
        } catch (JSONException e10) {
            HMSLog.e("JsonUtil", "catch JSONException when parse jsonString" + e10.getMessage());
        }
        return eVar;
    }

    private static Object k(e eVar, Field field, JSONObject jSONObject) throws JSONException, IllegalAccessException {
        Object a10 = a(field.getName(), jSONObject);
        if (a10 != null) {
            try {
                if (field.getType().getName().startsWith("com.huawei") && (field.getType().newInstance() instanceof e)) {
                    return jsonToEntity((String) a10, (e) field.getType().newInstance());
                }
                if ((a10 instanceof JSONObject) && ((JSONObject) a10).has("_val_type_")) {
                    int i10 = ((JSONObject) a10).getInt("_val_type_");
                    if (i10 != 1 && i10 != 0) {
                        if (i10 == 2) {
                            return j((JSONObject) a10);
                        }
                        if (i10 == 3) {
                            return l(field.getGenericType(), (JSONObject) a10);
                        }
                        HMSLog.e("JsonUtil", "cannot support type : " + i10);
                    }
                    return c(field.getGenericType(), (JSONObject) a10);
                }
                return a10;
            } catch (InstantiationException unused) {
                HMSLog.e("JsonUtil", "InstantiationException  ");
            }
        }
        return null;
    }

    private static Map l(Type type, JSONObject jSONObject) throws JSONException, IllegalAccessException, InstantiationException {
        Class cls = (Class) ((ParameterizedType) type).getActualTypeArguments()[1];
        JSONArray jSONArray = new JSONArray(jSONObject.getString("_map_"));
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < jSONArray.length(); i10 += 2) {
            if (cls.newInstance() instanceof e) {
                hashMap.put(jSONArray.get(i10), jsonToEntity(jSONArray.getString(i10 + 1), (e) cls.newInstance()));
            } else {
                hashMap.put(jSONArray.get(i10), jSONArray.get(i10 + 1));
            }
        }
        return hashMap;
    }
}
