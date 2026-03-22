package io.bidmachine.analytics.internal;

import android.content.Context;
import android.os.Bundle;
import android.util.Base64;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.Closeable;
import java.io.Flushable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes7.dex */
public abstract class s0 {
    public static final Object a(Closeable closeable) {
        try {
            Result.a aVar = Result.f60901b;
            closeable.close();
            return Result.d(Unit.f60915a);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(th2));
        }
    }

    public static final byte[] b(byte[] bArr, String str) {
        return a(bArr, str.getBytes(Charsets.UTF_8));
    }

    public static final String c(String str) {
        return Base64.encodeToString(str.getBytes(Charsets.UTF_8), 2);
    }

    public static final String d(String str) {
        if (str.length() == 0) {
            return str;
        }
        int q02 = StringsKt.q0(str, ContainerUtils.KEY_VALUE_DELIMITER, 0, false, 6, null);
        if (q02 == -1) {
            return StringsKt.F1(str).toString();
        }
        return StringsKt.F1(str.substring(0, q02)).toString() + str.substring(q02);
    }

    public static final String b(String str) {
        return a(d(str));
    }

    public static final Object a(Flushable flushable) {
        try {
            Result.a aVar = Result.f60901b;
            flushable.flush();
            return Result.d(Unit.f60915a);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(th2));
        }
    }

    public static final JSONArray a(List list) {
        JSONArray jSONArray = new JSONArray();
        for (Object obj : list) {
            if (obj instanceof List) {
                jSONArray.put(a((List) obj));
            } else if (obj instanceof Map) {
                jSONArray.put(a((Map) obj));
            } else {
                jSONArray.put(obj);
            }
        }
        return jSONArray;
    }

    public static final JSONObject a(Map map) {
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            try {
                Result.a aVar = Result.f60901b;
                String valueOf = String.valueOf(key);
                if (valueOf.length() != 0 && value != null) {
                    if (value instanceof List) {
                        value = a((List) value);
                    } else if (value instanceof Map) {
                        value = a((Map) value);
                    }
                    jSONObject.put(valueOf, value);
                }
                Result.d(Unit.f60915a);
            } catch (Throwable th2) {
                Result.a aVar2 = Result.f60901b;
                Result.d(kotlin.f.a(th2));
            }
        }
        return jSONObject;
    }

    public static final Map a(JSONObject jSONObject) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : kotlin.sequences.j.e(jSONObject.keys())) {
            Object a10 = a(jSONObject.get(str));
            if (a10 != null) {
                linkedHashMap.put(str, a10);
            }
        }
        return linkedHashMap;
    }

    public static final List a(JSONArray jSONArray) {
        IntRange v10 = kotlin.ranges.e.v(0, jSONArray.length());
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = v10.iterator();
        while (it.hasNext()) {
            Object a10 = a(jSONArray.get(((kotlin.collections.m0) it).nextInt()));
            if (a10 != null) {
                arrayList.add(a10);
            }
        }
        return arrayList;
    }

    private static final Object a(Object obj) {
        if (Intrinsics.areEqual(obj, JSONObject.NULL)) {
            return null;
        }
        return obj instanceof JSONObject ? a((JSONObject) obj) : obj instanceof JSONArray ? a((JSONArray) obj) : obj;
    }

    public static final Map a(Bundle bundle) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (!(obj instanceof Boolean)) {
                if (obj instanceof Byte) {
                    obj = Integer.valueOf(((Number) obj).byteValue());
                } else if (!(obj instanceof Character) && !(obj instanceof Double) && !(obj instanceof Float) && !(obj instanceof Integer) && !(obj instanceof Long)) {
                    if (obj instanceof Short) {
                        obj = Integer.valueOf(((Number) obj).shortValue());
                    } else if (!(obj instanceof String)) {
                        if (obj instanceof Bundle) {
                            obj = a((Bundle) obj);
                        } else if (obj instanceof CharSequence) {
                            obj = obj.toString();
                        } else {
                            obj = obj != null ? obj.toString() : null;
                        }
                    }
                }
            }
            if (obj != null) {
                linkedHashMap.put(str, obj);
            }
        }
        return linkedHashMap;
    }

    public static final boolean a(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static final byte[] a(byte[] bArr, String str) {
        return a(bArr, str.getBytes(Charsets.UTF_8));
    }

    private static final byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            bArr3[i10] = (byte) (bArr[i10] ^ bArr2[i10 % bArr2.length]);
        }
        return bArr3;
    }

    public static final String a(String str) {
        return new String(Base64.decode(str, 2), Charsets.UTF_8);
    }

    public static final String a(Throwable th2) {
        String message = th2.getMessage();
        if (message != null) {
            String str = th2.getClass().getName() + ": " + message;
            if (str != null) {
                return str;
            }
        }
        return th2.getClass().getName();
    }
}
