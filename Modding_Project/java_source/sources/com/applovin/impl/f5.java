package com.applovin.impl;

import androidx.arch.core.util.Function;
import androidx.core.util.Consumer;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class f5 {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f7909a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f7910b = new Object();

    public f5(JSONObject jSONObject) {
        this.f7909a = jSONObject;
    }

    public JSONObject a() {
        JSONObject deepCopy;
        synchronized (this.f7910b) {
            deepCopy = JsonUtils.deepCopy(this.f7909a);
        }
        return deepCopy;
    }

    public List b(String str, List list) {
        List<String> stringList;
        synchronized (this.f7910b) {
            stringList = JsonUtils.getStringList(this.f7909a, str, list);
        }
        return stringList;
    }

    public void c(String str) {
        synchronized (this.f7910b) {
            this.f7909a.remove(str);
        }
    }

    public String toString() {
        String jSONObject;
        synchronized (this.f7910b) {
            jSONObject = this.f7909a.toString();
        }
        return jSONObject;
    }

    public boolean a(String str) {
        boolean has;
        synchronized (this.f7910b) {
            has = this.f7909a.has(str);
        }
        return has;
    }

    public Object b(String str) {
        Object opt;
        synchronized (this.f7910b) {
            opt = this.f7909a.opt(str);
        }
        return opt;
    }

    public void a(Consumer consumer) {
        synchronized (this.f7910b) {
            consumer.accept(this);
        }
    }

    public void b(String str, int i10) {
        synchronized (this.f7910b) {
            JsonUtils.putInt(this.f7909a, str, i10);
        }
    }

    public Object a(Function function) {
        Object apply;
        synchronized (this.f7910b) {
            apply = function.apply(this);
        }
        return apply;
    }

    public void b(String str, long j10) {
        synchronized (this.f7910b) {
            JsonUtils.putLong(this.f7909a, str, j10);
        }
    }

    public Boolean a(String str, Boolean bool) {
        Boolean bool2;
        synchronized (this.f7910b) {
            bool2 = JsonUtils.getBoolean(this.f7909a, str, bool);
        }
        return bool2;
    }

    public void b(String str, String str2) {
        synchronized (this.f7910b) {
            JsonUtils.putString(this.f7909a, str, str2);
        }
    }

    public float a(String str, float f10) {
        float f11;
        synchronized (this.f7910b) {
            f11 = JsonUtils.getFloat(this.f7909a, str, f10);
        }
        return f11;
    }

    public int a(String str, int i10) {
        int i11;
        synchronized (this.f7910b) {
            i11 = JsonUtils.getInt(this.f7909a, str, i10);
        }
        return i11;
    }

    public JSONArray a(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        synchronized (this.f7910b) {
            jSONArray2 = JsonUtils.getJSONArray(this.f7909a, str, jSONArray);
        }
        return jSONArray2;
    }

    public JSONObject a(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        synchronized (this.f7910b) {
            jSONObject2 = JsonUtils.getJSONObject(this.f7909a, str, jSONObject);
        }
        return jSONObject2;
    }

    public long a(String str, long j10) {
        long j11;
        synchronized (this.f7910b) {
            j11 = JsonUtils.getLong(this.f7909a, str, j10);
        }
        return j11;
    }

    public String a(String str, String str2) {
        String string;
        synchronized (this.f7910b) {
            string = JsonUtils.getString(this.f7909a, str, str2);
        }
        return string;
    }

    public List a(String str, List list) {
        List<Integer> integerList;
        synchronized (this.f7910b) {
            integerList = JsonUtils.getIntegerList(this.f7909a, str, list);
        }
        return integerList;
    }

    public void a(String str, boolean z10) {
        synchronized (this.f7910b) {
            JsonUtils.putBoolean(this.f7909a, str, z10);
        }
    }

    public void a(String str, Object obj) {
        synchronized (this.f7910b) {
            JsonUtils.putObject(this.f7909a, str, obj);
        }
    }
}
