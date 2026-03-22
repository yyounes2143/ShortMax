package com.applovin.impl.sdk;

import android.graphics.Color;
import androidx.annotation.Nullable;
import com.applovin.impl.b4;
import com.applovin.impl.c4;
import com.applovin.impl.f5;
import com.applovin.impl.sdk.array.ArrayDirectDownloadAd;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public abstract class AppLovinAdBase implements b4, ArrayDirectDownloadAd {
    @Nullable
    protected final JSONObject adObject;
    private final long createdAtMillis;
    @Nullable
    protected final JSONObject fullResponse;
    protected final k sdk;
    @Nullable
    protected final f5 synchronizedAdObject;
    @Nullable
    protected final f5 synchronizedFullResponse;
    protected final Object adObjectLock = new Object();
    protected final Object fullResponseLock = new Object();

    /* JADX INFO: Access modifiers changed from: protected */
    public AppLovinAdBase(JSONObject jSONObject, JSONObject jSONObject2, k kVar) {
        if (jSONObject != null) {
            if (jSONObject2 != null) {
                if (kVar != null) {
                    this.sdk = kVar;
                    if (((Boolean) kVar.a(v4.f10336q6)).booleanValue()) {
                        this.synchronizedAdObject = new f5(jSONObject);
                        this.synchronizedFullResponse = new f5(jSONObject2);
                        this.adObject = null;
                        this.fullResponse = null;
                    } else {
                        this.adObject = jSONObject;
                        this.fullResponse = jSONObject2;
                        this.synchronizedAdObject = null;
                        this.synchronizedFullResponse = null;
                    }
                    this.createdAtMillis = System.currentTimeMillis();
                    return;
                }
                throw new IllegalArgumentException("No sdk specified");
            }
            throw new IllegalArgumentException("No response specified");
        }
        throw new IllegalArgumentException("No ad object specified");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean containsKeyForAdObject(String str) {
        boolean has;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return f5Var.a(str);
        }
        synchronized (this.adObjectLock) {
            has = this.adObject.has(str);
        }
        return has;
    }

    public String getAdDomain() {
        return getStringFromFullResponse("adomain", "");
    }

    @Override // com.applovin.impl.b4
    public abstract /* synthetic */ c4 getAdEventTracker();

    public abstract long getAdIdNumber();

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getBooleanFromAdObject(String str, Boolean bool) {
        boolean booleanValue;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return f5Var.a(str, bool).booleanValue();
        }
        synchronized (this.adObjectLock) {
            booleanValue = JsonUtils.getBoolean(this.adObject, str, bool).booleanValue();
        }
        return booleanValue;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean getBooleanFromFullResponse(String str, boolean z10) {
        boolean booleanValue;
        f5 f5Var = this.synchronizedFullResponse;
        if (f5Var != null) {
            return f5Var.a(str, Boolean.valueOf(z10)).booleanValue();
        }
        synchronized (this.fullResponseLock) {
            booleanValue = JsonUtils.getBoolean(this.fullResponse, str, Boolean.valueOf(z10)).booleanValue();
        }
        return booleanValue;
    }

    public String getClCode() {
        String stringFromAdObject = getStringFromAdObject("clcode", "");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return stringFromAdObject;
        }
        return getStringFromFullResponse("clcode", "");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getColorFromAdObject(String str, int i10) {
        String stringFromAdObject = getStringFromAdObject(str, null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Color.parseColor(stringFromAdObject);
        }
        return i10;
    }

    public long getCreatedAtMillis() {
        return this.createdAtMillis;
    }

    public String getDspId() {
        return getStringFromFullResponse("dsp_id", "");
    }

    public String getDspName() {
        return getStringFromFullResponse("dsp_name", "");
    }

    public long getFetchLatencyMillis() {
        return getLongFromFullResponse("ad_fetch_latency_millis", -1L);
    }

    public long getFetchResponseSize() {
        return getLongFromFullResponse("ad_fetch_response_size", -1L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float getFloatFromAdObject(String str, float f10) {
        float f11;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return f5Var.a(str, f10);
        }
        synchronized (this.adObjectLock) {
            f11 = JsonUtils.getFloat(this.adObject, str, f10);
        }
        return f11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getIntFromAdObject(String str, int i10) {
        int i11;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return f5Var.a(str, i10);
        }
        synchronized (this.adObjectLock) {
            i11 = JsonUtils.getInt(this.adObject, str, i10);
        }
        return i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<Integer> getIntegerListFromAdObject(String str, List<Integer> list) {
        List<Integer> integerList;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return f5Var.a(str, (List) list);
        }
        synchronized (this.adObjectLock) {
            integerList = JsonUtils.getIntegerList(this.adObject, str, list);
        }
        return integerList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONArray getJsonArrayFromAdObject(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return f5Var.a(str, jSONArray);
        }
        synchronized (this.adObjectLock) {
            jSONArray2 = JsonUtils.getJSONArray(this.adObject, str, jSONArray);
        }
        return jSONArray2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject getJsonObjectFromAdObject(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return f5Var.a(str, jSONObject);
        }
        synchronized (this.adObjectLock) {
            jSONObject2 = JsonUtils.getJSONObject(this.adObject, str, jSONObject);
        }
        return jSONObject2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getLongFromAdObject(String str, long j10) {
        long j11;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return f5Var.a(str, j10);
        }
        synchronized (this.adObjectLock) {
            j11 = JsonUtils.getLong(this.adObject, str, j10);
        }
        return j11;
    }

    protected long getLongFromFullResponse(String str, long j10) {
        long j11;
        f5 f5Var = this.synchronizedFullResponse;
        if (f5Var != null) {
            return f5Var.a(str, j10);
        }
        synchronized (this.fullResponseLock) {
            j11 = JsonUtils.getLong(this.fullResponse, str, j10);
        }
        return j11;
    }

    @Override // com.applovin.impl.b4
    @Nullable
    public abstract /* synthetic */ String getOpenMeasurementContentUrl();

    @Override // com.applovin.impl.b4
    public abstract /* synthetic */ String getOpenMeasurementCustomReferenceData();

    @Override // com.applovin.impl.b4
    public abstract /* synthetic */ List getOpenMeasurementVerificationScriptResources();

    public k getSdk() {
        return this.sdk;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getStringFromAdObject(String str, String str2) {
        String string;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return f5Var.a(str, str2);
        }
        synchronized (this.adObjectLock) {
            string = JsonUtils.getString(this.adObject, str, str2);
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getStringFromFullResponse(String str, String str2) {
        String string;
        f5 f5Var = this.synchronizedFullResponse;
        if (f5Var != null) {
            return f5Var.a(str, str2);
        }
        synchronized (this.fullResponseLock) {
            string = JsonUtils.getString(this.fullResponse, str, str2);
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<String> getStringListFromAdObject(String str, List<String> list) {
        List<String> stringList;
        f5 f5Var = this.synchronizedAdObject;
        if (f5Var != null) {
            return f5Var.b(str, list);
        }
        synchronized (this.adObjectLock) {
            stringList = JsonUtils.getStringList(this.adObject, str, list);
        }
        return stringList;
    }

    @Override // com.applovin.impl.b4
    public abstract /* synthetic */ boolean isOpenMeasurementEnabled();
}
