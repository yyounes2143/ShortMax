package com.bytedance.sdk.openadsdk.core.dLZ;

import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    private cY BTZ;
    protected String Pfn;
    protected int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    protected List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> f13141ba;
    protected List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> cFZ;
    protected oJ.ZYk ex;
    private String kkU;
    protected int oJ;

    /* renamed from: so  reason: collision with root package name */
    protected String f13142so;
    protected oJ.EnumC0210oJ tB;
    private final AtomicBoolean dLZ = new AtomicBoolean(false);
    protected String jFA = "endcard_click";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.sdk.openadsdk.core.dLZ.tB$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[oJ.ZYk.values().length];
            oJ = iArr;
            try {
                iArr[oJ.ZYk.STATIC_RESOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[oJ.ZYk.HTML_RESOURCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                oJ[oJ.ZYk.IFRAME_RESOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public tB(int i10, int i11, oJ.EnumC0210oJ enumC0210oJ, oJ.ZYk zYk, String str, List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list, List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list2, String str2) {
        this.f13141ba = new ArrayList();
        this.cFZ = new ArrayList();
        this.oJ = i10;
        this.ZYk = i11;
        this.tB = enumC0210oJ;
        this.ex = zYk;
        this.Pfn = str;
        this.f13141ba = list;
        this.cFZ = list2;
        this.f13142so = str2;
    }

    public String Pfn() {
        if (this.ex == oJ.ZYk.STATIC_RESOURCE && this.tB == oJ.EnumC0210oJ.IMAGE) {
            return this.Pfn;
        }
        return null;
    }

    public int ZYk() {
        return this.oJ;
    }

    public String ba() {
        return this.Pfn;
    }

    public String ex() {
        int i10 = AnonymousClass1.oJ[this.ex.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return "<iframe frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" style=\"border: 0px; margin: 0px;\" width=\"" + this.oJ + "\" height=\"" + this.ZYk + "\" src=\"" + this.Pfn + "\"></iframe>";
                }
                return null;
            }
            return this.Pfn;
        }
        oJ.EnumC0210oJ enumC0210oJ = this.tB;
        if (enumC0210oJ == oJ.EnumC0210oJ.IMAGE) {
            return "<html><head></head><body style=\"margin:0;padding:0\"><img src=\"" + this.Pfn + "\" width=\"100%\" style=\"max-width:100%;max-height:100%;\" /></body></html>";
        } else if (enumC0210oJ == oJ.EnumC0210oJ.JAVASCRIPT) {
            return "<script src=\"" + this.Pfn + "\"></script>";
        } else {
            return null;
        }
    }

    public void oJ(long j10) {
        com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(null, this.f13141ba, null, j10, this.kkU, new tB.ZYk(this.jFA, this.BTZ), null);
    }

    public int tB() {
        return this.ZYk;
    }

    public static float oJ(int i10, int i11, int i12, int i13, oJ.ZYk zYk, oJ.EnumC0210oJ enumC0210oJ) {
        if (i11 == 0 || i13 == 0) {
            return 0.0f;
        }
        float f10 = i10;
        float f11 = i12;
        return oJ(zYk, enumC0210oJ) / ((Math.abs((f10 / i11) - (f11 / i13)) + Math.abs((f10 - f11) / f10)) + 1.0f);
    }

    public void ZYk(long j10) {
        if (this.dLZ.compareAndSet(false, true)) {
            com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.ZYk((cY) null, this.cFZ, (com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ) null, j10, this.kkU, (String) null);
        }
    }

    public static tB ZYk(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        int optInt = jSONObject.optInt("width");
        int optInt2 = jSONObject.optInt("height");
        String optString = jSONObject.optString("creativeType", oJ.EnumC0210oJ.NONE.toString());
        String optString2 = jSONObject.optString("resourceType", oJ.ZYk.HTML_RESOURCE.toString());
        String optString3 = jSONObject.optString("contentUrl");
        String optString4 = jSONObject.optString("clickThroughUri");
        JSONArray optJSONArray = jSONObject.optJSONArray("clickTrackers");
        JSONArray optJSONArray2 = jSONObject.optJSONArray("creativeViewTrackers");
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
            arrayList.add(new tB.oJ(optJSONArray.optString(i10)).oJ());
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < optJSONArray2.length(); i11++) {
            arrayList2.add(new tB.oJ(optJSONArray2.optString(i11)).oJ());
        }
        return new tB(optInt, optInt2, oJ.EnumC0210oJ.valueOf(optString), oJ.ZYk.valueOf(optString2), optString3, arrayList, arrayList2, optString4);
    }

    private static float oJ(oJ.ZYk zYk, oJ.EnumC0210oJ enumC0210oJ) {
        int i10 = AnonymousClass1.oJ[zYk.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return i10 != 3 ? 0.0f : 1.0f;
            }
            return 1.2f;
        } else if (oJ.EnumC0210oJ.JAVASCRIPT.equals(enumC0210oJ)) {
            return 1.0f;
        } else {
            return oJ.EnumC0210oJ.IMAGE.equals(enumC0210oJ) ? 0.8f : 0.0f;
        }
    }

    public void oJ(String str) {
        this.kkU = str;
    }

    public JSONObject oJ() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", this.oJ);
        jSONObject.put("height", this.ZYk);
        jSONObject.put("creativeType", this.tB.toString());
        jSONObject.put("resourceType", this.ex.toString());
        jSONObject.put("contentUrl", this.Pfn);
        jSONObject.put("clickThroughUri", this.f13142so);
        jSONObject.put("clickTrackers", com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.f13141ba));
        jSONObject.put("creativeViewTrackers", com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.cFZ));
        return jSONObject;
    }

    public void oJ(cY cYVar) {
        this.BTZ = cYVar;
    }
}
