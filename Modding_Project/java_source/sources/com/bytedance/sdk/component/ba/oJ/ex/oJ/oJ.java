package com.bytedance.sdk.component.ba.oJ.ex.oJ;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.appsflyer.AppsFlyerProperties;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ implements com.bytedance.sdk.component.ba.oJ.ex.oJ {
    private int BTZ;
    private long Pfn;
    private ZYk ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private long f12756ba;
    private long cFZ;
    private String dLZ;
    private byte ex;
    private String jFA;
    private byte kkU;
    protected JSONObject oJ;

    /* renamed from: so  reason: collision with root package name */
    private String f12757so;
    private byte tB;

    public oJ(String str, JSONObject jSONObject) {
        this.jFA = str;
        this.oJ = jSONObject;
    }

    public static com.bytedance.sdk.component.ba.oJ.ex.oJ tB(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("type");
            int optInt2 = jSONObject.optInt(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY);
            oJ oJVar = new oJ();
            oJVar.oJ((byte) optInt);
            oJVar.ZYk((byte) optInt2);
            oJVar.oJ(jSONObject.optJSONObject(NotificationCompat.CATEGORY_EVENT));
            oJVar.oJ(jSONObject.optString("localId"));
            oJVar.ZYk(jSONObject.optString("genTime"));
            oJVar.oJ(jSONObject.optInt(AppsFlyerProperties.CHANNEL));
            return oJVar;
        } catch (JSONException unused) {
            return null;
        }
    }

    public String BTZ() {
        return this.f12757so;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public byte Pfn() {
        return this.ex;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public byte ZYk() {
        return this.kkU;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public String ba() {
        if (!TextUtils.isEmpty(this.jFA)) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("localId", this.jFA);
                jSONObject.put(NotificationCompat.CATEGORY_EVENT, cFZ());
                jSONObject.put("genTime", BTZ());
                jSONObject.put(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, (int) this.ex);
                jSONObject.put("type", (int) this.tB);
                jSONObject.put(AppsFlyerProperties.CHANNEL, this.BTZ);
            } catch (Throwable unused) {
            }
            return jSONObject.toString();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public synchronized JSONObject cFZ() {
        ZYk zYk;
        try {
            if (this.oJ == null && (zYk = this.ZYk) != null) {
                this.oJ = zYk.oJ(dLZ());
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.oJ;
    }

    public String dLZ() {
        return this.dLZ;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public byte ex() {
        return this.tB;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public long jFA() {
        return this.f12756ba;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public int kkU() {
        return this.BTZ;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public ZYk oJ() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public long so() {
        return this.Pfn;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public void ZYk(String str) {
        this.f12757so = str;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public void oJ(JSONObject jSONObject) {
        this.oJ = jSONObject;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public void ZYk(long j10) {
        this.f12756ba = j10;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public void oJ(byte b10) {
        this.tB = b10;
    }

    public oJ(String str, ZYk zYk) {
        this.jFA = str;
        this.ZYk = zYk;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public void ZYk(byte b10) {
        this.ex = b10;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public void oJ(String str) {
        this.jFA = str;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public void oJ(long j10) {
        this.Pfn = j10;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public void oJ(int i10) {
        this.BTZ = i10;
    }

    private oJ() {
    }

    public void tB(byte b10) {
        this.kkU = b10;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public String tB() {
        return this.jFA;
    }

    @Override // com.bytedance.sdk.component.ba.oJ.ex.oJ
    public void tB(long j10) {
        this.cFZ = j10;
    }
}
