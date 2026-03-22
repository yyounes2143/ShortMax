package com.bytedance.sdk.component.cFZ.ZYk;

import android.text.TextUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.bytedance.sdk.component.ZYk.oJ.BTZ;
import com.bytedance.sdk.component.ZYk.oJ.PiB;
import com.bytedance.sdk.component.ZYk.oJ.WcQ;
import com.bytedance.sdk.component.ZYk.oJ.awB;
import com.bytedance.sdk.component.ZYk.oJ.ba;
import com.bytedance.sdk.component.ZYk.oJ.dLZ;
import com.bytedance.sdk.component.ZYk.oJ.jFA;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex extends tB {
    PiB oJ;

    public ex(dLZ dlz) {
        super(dlz);
        this.oJ = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
        if (r2 == null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private byte[] Pfn(java.lang.String r5) {
        /*
            r4 = this;
            r0 = 0
            if (r5 == 0) goto L4c
            int r1 = r5.length()
            if (r1 != 0) goto La
            goto L4c
        La:
            r1 = 0
            byte[] r1 = new byte[r1]
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L42
            r2.<init>()     // Catch: java.lang.Throwable -> L32 java.io.IOException -> L42
            java.util.zip.GZIPOutputStream r3 = new java.util.zip.GZIPOutputStream     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L43
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L30 java.io.IOException -> L43
            java.lang.String r0 = "utf-8"
            byte[] r5 = r5.getBytes(r0)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            r3.write(r5)     // Catch: java.lang.Throwable -> L2b java.io.IOException -> L2e
            r3.close()     // Catch: java.io.IOException -> L23
        L23:
            byte[] r1 = r2.toByteArray()
            r2.close()     // Catch: java.io.IOException -> L4b
            goto L4b
        L2b:
            r5 = move-exception
            r0 = r3
            goto L34
        L2e:
            r0 = r3
            goto L43
        L30:
            r5 = move-exception
            goto L34
        L32:
            r5 = move-exception
            r2 = r0
        L34:
            if (r0 == 0) goto L39
            r0.close()     // Catch: java.io.IOException -> L39
        L39:
            if (r2 == 0) goto L41
            r2.toByteArray()
            r2.close()     // Catch: java.io.IOException -> L41
        L41:
            throw r5
        L42:
            r2 = r0
        L43:
            if (r0 == 0) goto L48
            r0.close()     // Catch: java.io.IOException -> L48
        L48:
            if (r2 == 0) goto L4b
            goto L23
        L4b:
            return r1
        L4c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.cFZ.ZYk.ex.Pfn(java.lang.String):byte[]");
    }

    public void ex(String str) {
        if (TextUtils.isEmpty(str)) {
            str = JsonUtils.EMPTY_JSON;
        }
        this.oJ = PiB.oJ(jFA.oJ("application/json; charset=utf-8"), str);
    }

    public void oJ(JSONObject jSONObject) {
        String str;
        if (jSONObject != null) {
            str = jSONObject.toString();
        } else {
            str = JsonUtils.EMPTY_JSON;
        }
        this.oJ = PiB.oJ(jFA.oJ("application/json; charset=utf-8"), str);
    }

    public void oJ(String str, byte[] bArr) {
        this.oJ = PiB.oJ(jFA.oJ(str), bArr);
    }

    public void oJ(final com.bytedance.sdk.component.cFZ.oJ.oJ oJVar) {
        try {
            BTZ.oJ oJVar2 = new BTZ.oJ();
            if (TextUtils.isEmpty(this.f12775so)) {
                oJVar.oJ(this, new IOException("Url is Empty"));
                return;
            }
            if (!TextUtils.isEmpty(this.Pfn)) {
                oJVar2.oJ(this.Pfn);
            }
            int i10 = this.f12774ba;
            if (i10 > 0) {
                oJVar2.oJ(i10);
            }
            oJVar2.ZYk(this.f12775so);
            if (this.oJ == null) {
                if (oJVar != null) {
                    oJVar.oJ(this, new IOException("RequestBody is null, content type is not support!!"));
                    return;
                }
                return;
            }
            oJ(oJVar2);
            oJVar2.oJ((Object) tB());
            this.tB.oJ(oJVar2.oJ(this.oJ).ZYk()).oJ(new com.bytedance.sdk.component.ZYk.oJ.tB() { // from class: com.bytedance.sdk.component.cFZ.ZYk.ex.1
                @Override // com.bytedance.sdk.component.ZYk.oJ.tB
                public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk zYk, IOException iOException) {
                    com.bytedance.sdk.component.cFZ.oJ.oJ oJVar3 = oJVar;
                    if (oJVar3 != null) {
                        oJVar3.oJ(ex.this, iOException);
                    }
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:46:0x00f5  */
                /* JADX WARN: Removed duplicated region for block: B:48:0x00fd  */
                /* JADX WARN: Type inference failed for: r0v5, types: [com.bytedance.sdk.component.cFZ.oJ.oJ] */
                /* JADX WARN: Type inference failed for: r14v0 */
                /* JADX WARN: Type inference failed for: r14v1, types: [com.bytedance.sdk.component.cFZ.ZYk] */
                /* JADX WARN: Type inference failed for: r14v5 */
                @Override // com.bytedance.sdk.component.ZYk.oJ.tB
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk r17, com.bytedance.sdk.component.ZYk.oJ.WcQ r18) throws java.io.IOException {
                    /*
                        Method dump skipped, instructions count: 317
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.cFZ.ZYk.ex.AnonymousClass1.oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk, com.bytedance.sdk.component.ZYk.oJ.WcQ):void");
                }
            });
        } catch (Throwable th2) {
            oJVar.oJ(this, new IOException(th2.getMessage()));
        }
    }

    public com.bytedance.sdk.component.cFZ.ZYk oJ() {
        com.bytedance.sdk.component.cFZ.ZYk zYk;
        try {
            BTZ.oJ oJVar = new BTZ.oJ();
            if (TextUtils.isEmpty(this.f12775so)) {
                return new com.bytedance.sdk.component.cFZ.ZYk(false, 5000, "URL_NULL_MSG", null, "URL_NULL_BODY", 1L, 1L);
            }
            oJVar.ZYk(this.f12775so);
            if (this.oJ == null) {
                return new com.bytedance.sdk.component.cFZ.ZYk(false, 5000, "BODY_NULL_MSG", null, "BODY_NULL_BODY", 1L, 1L);
            }
            oJ(oJVar);
            oJVar.oJ((Object) tB());
            WcQ ZYk = this.tB.oJ(oJVar.oJ(this.oJ).ZYk()).ZYk();
            if (ZYk != null) {
                HashMap hashMap = new HashMap();
                ba cFZ = ZYk.cFZ();
                if (cFZ != null) {
                    for (int i10 = 0; i10 < cFZ.oJ(); i10++) {
                        String oJ = cFZ.oJ(i10);
                        String ZYk2 = cFZ.ZYk(i10);
                        hashMap.put(oJ, ZYk2);
                        if (oJ != null && oJ.equalsIgnoreCase("content-type")) {
                            hashMap.put("content-type", ZYk2 == null ? "" : ZYk2.toLowerCase());
                        }
                    }
                }
                awB ba2 = ZYk.ba();
                if (com.bytedance.sdk.component.cFZ.tB.oJ.oJ(hashMap)) {
                    byte[] ex = ba2.ex();
                    zYk = new com.bytedance.sdk.component.cFZ.ZYk(ZYk.ex(), ZYk.tB(), ZYk.Pfn(), hashMap, null, ZYk.ZYk(), ZYk.oJ());
                    zYk.oJ(ex);
                } else if (this.jFA) {
                    byte[] ex2 = ba2.ex();
                    com.bytedance.sdk.component.cFZ.ZYk zYk2 = new com.bytedance.sdk.component.cFZ.ZYk(ZYk.ex(), ZYk.tB(), ZYk.Pfn(), hashMap, new String(ex2, oJ(oJ(ba2))), ZYk.ZYk(), ZYk.oJ());
                    zYk2.oJ(ex2);
                    zYk = zYk2;
                } else if (ba2 != null) {
                    zYk = new com.bytedance.sdk.component.cFZ.ZYk(ZYk.ex(), ZYk.tB(), ZYk.Pfn(), hashMap, ba2.ZYk(), ZYk.ZYk(), ZYk.oJ());
                } else {
                    throw new IOException(ZYk.Pfn());
                }
                oJ(zYk, ZYk);
                return zYk;
            }
            return null;
        } catch (Throwable th2) {
            return new com.bytedance.sdk.component.cFZ.ZYk(false, 5001, th2.getMessage(), null, "BODY_NULL_BODY", 1L, 1L);
        }
    }

    public void oJ(String str, boolean z10) {
        if (z10) {
            oJ("application/json; charset=utf-8", Pfn(str));
            ZYk("Content-Encoding", "gzip");
            return;
        }
        ex(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Charset oJ(jFA jfa) {
        try {
            return jfa != null ? jfa.oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ) : com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ;
        } catch (Exception unused) {
            return com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public jFA oJ(awB awb) {
        try {
            return awb.Pfn();
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(com.bytedance.sdk.component.cFZ.ZYk zYk, WcQ wcQ) {
        if (zYk == null || wcQ == null) {
            return;
        }
        zYk.oJ(wcQ.so());
    }
}
