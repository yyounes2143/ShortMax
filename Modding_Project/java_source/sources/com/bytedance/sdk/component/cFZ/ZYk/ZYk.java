package com.bytedance.sdk.component.cFZ.ZYk;

import android.net.Uri;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.WcQ;
import com.bytedance.sdk.component.ZYk.oJ.awB;
import com.bytedance.sdk.component.ZYk.oJ.ba;
import com.bytedance.sdk.component.ZYk.oJ.cFZ;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
import com.bytedance.sdk.component.ZYk.oJ.oJ;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class ZYk extends tB {
    private Map<String, String> BTZ;
    private boolean dLZ;
    private com.bytedance.sdk.component.ZYk.oJ.oJ kkU;
    public static final com.bytedance.sdk.component.ZYk.oJ.oJ oJ = new oJ.C0162oJ().oJ().ZYk();
    public static final com.bytedance.sdk.component.ZYk.oJ.oJ ZYk = new oJ.C0162oJ().ZYk();

    public ZYk(dLZ dlz) {
        super(dlz);
        this.kkU = oJ;
        this.dLZ = false;
        this.BTZ = new HashMap();
    }

    public void oJ(boolean z10) {
        this.dLZ = z10;
    }

    public void oJ(final com.bytedance.sdk.component.cFZ.oJ.oJ oJVar) {
        try {
            BTZ.oJ oJVar2 = new BTZ.oJ();
            if (this.dLZ) {
                oJVar2.ZYk(this.f12775so);
            } else {
                cFZ.oJ oJVar3 = new cFZ.oJ();
                Uri parse = Uri.parse(this.f12775so);
                oJVar3.oJ(parse.getScheme());
                oJVar3.ZYk(parse.getHost());
                String encodedPath = parse.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith(DomExceptionUtils.SEPARATOR)) {
                        encodedPath = encodedPath.substring(1);
                    }
                    oJVar3.tB(encodedPath);
                }
                Set<String> queryParameterNames = parse.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str : queryParameterNames) {
                        this.BTZ.put(str, parse.getQueryParameter(str));
                    }
                }
                for (Map.Entry<String, String> entry : this.BTZ.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String encode = URLEncoder.encode(key, "UTF-8");
                        if (value == null) {
                            value = "";
                        }
                        oJVar3.oJ(encode, URLEncoder.encode(value, "UTF-8"));
                    }
                }
                oJVar2.oJ(oJVar3.ZYk());
            }
            oJ(oJVar2);
            oJVar2.oJ(this.kkU);
            oJVar2.oJ((Object) tB());
            if (!TextUtils.isEmpty(this.Pfn)) {
                oJVar2.oJ(this.Pfn);
            }
            int i10 = this.f12774ba;
            if (i10 > 0) {
                oJVar2.oJ(i10);
            }
            this.tB.oJ(oJVar2.oJ().ZYk()).oJ(new com.bytedance.sdk.component.ZYk.oJ.tB() { // from class: com.bytedance.sdk.component.cFZ.ZYk.ZYk.1
                @Override // com.bytedance.sdk.component.ZYk.oJ.tB
                public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk zYk, IOException iOException) {
                    com.bytedance.sdk.component.cFZ.oJ.oJ oJVar4 = oJVar;
                    if (oJVar4 != null) {
                        oJVar4.oJ(ZYk.this, iOException);
                    }
                }

                @Override // com.bytedance.sdk.component.ZYk.oJ.tB
                public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk zYk, WcQ wcQ) throws IOException {
                    String ZYk2;
                    if (oJVar != null) {
                        HashMap hashMap = new HashMap();
                        if (wcQ != null) {
                            ba cFZ = wcQ.cFZ();
                            if (cFZ != null) {
                                for (int i11 = 0; i11 < cFZ.oJ(); i11++) {
                                    hashMap.put(cFZ.oJ(i11), cFZ.ZYk(i11));
                                }
                            }
                            awB ba2 = wcQ.ba();
                            if (ba2 == null) {
                                ZYk2 = "";
                            } else {
                                ZYk2 = ba2.ZYk();
                            }
                            oJVar.oJ(ZYk.this, new com.bytedance.sdk.component.cFZ.ZYk(wcQ.ex(), wcQ.tB(), wcQ.Pfn(), hashMap, ZYk2, wcQ.ZYk(), wcQ.oJ()));
                        }
                    }
                }
            });
        } catch (Throwable th2) {
            if (oJVar != null) {
                oJVar.oJ(this, new IOException(th2.getMessage()));
            }
        }
    }

    public com.bytedance.sdk.component.cFZ.ZYk oJ() {
        try {
            BTZ.oJ oJVar = new BTZ.oJ();
            if (this.dLZ) {
                oJVar.ZYk(this.f12775so);
            } else {
                cFZ.oJ oJVar2 = new cFZ.oJ();
                Uri parse = Uri.parse(this.f12775so);
                oJVar2.oJ(parse.getScheme());
                oJVar2.ZYk(parse.getHost());
                String encodedPath = parse.getEncodedPath();
                if (!TextUtils.isEmpty(encodedPath)) {
                    if (encodedPath.startsWith(DomExceptionUtils.SEPARATOR)) {
                        encodedPath = encodedPath.substring(1);
                    }
                    oJVar2.tB(encodedPath);
                }
                Set<String> queryParameterNames = parse.getQueryParameterNames();
                if (queryParameterNames != null && queryParameterNames.size() > 0) {
                    for (String str : queryParameterNames) {
                        this.BTZ.put(str, parse.getQueryParameter(str));
                    }
                }
                for (Map.Entry<String, String> entry : this.BTZ.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key)) {
                        String encode = URLEncoder.encode(key, "UTF-8");
                        if (value == null) {
                            value = "";
                        }
                        oJVar2.oJ(encode, URLEncoder.encode(value, "UTF-8"));
                    }
                }
                oJVar.oJ(oJVar2.ZYk());
            }
            oJ(oJVar);
            oJVar.oJ(this.kkU);
            oJVar.oJ((Object) tB());
            WcQ ZYk2 = this.tB.oJ(oJVar.oJ().ZYk()).ZYk();
            if (ZYk2 != null) {
                HashMap hashMap = new HashMap();
                ba cFZ = ZYk2.cFZ();
                if (cFZ != null) {
                    for (int i10 = 0; i10 < cFZ.oJ(); i10++) {
                        hashMap.put(cFZ.oJ(i10), cFZ.ZYk(i10));
                    }
                }
                awB ba2 = ZYk2.ba();
                return new com.bytedance.sdk.component.cFZ.ZYk(ZYk2.ex(), ZYk2.tB(), ZYk2.Pfn(), hashMap, ba2 != null ? ba2.ZYk() : "", ZYk2.ZYk(), ZYk2.oJ());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
