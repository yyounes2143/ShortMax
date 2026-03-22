package com.inmobi.media;

import com.inmobi.commons.core.configs.Config;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class U2 extends N9 {
    public final int A;
    public final String B;
    public final boolean C;

    /* renamed from: y  reason: collision with root package name */
    public final Map f24242y;

    /* renamed from: z  reason: collision with root package name */
    public final int f24243z;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public U2(java.util.Map r12, com.inmobi.media.C3198ue r13, java.lang.String r14, int r15, int r16, boolean r17, java.lang.String r18, boolean r19) {
        /*
            r11 = this;
            r8 = r11
            r9 = r12
            r10 = r18
            java.lang.String r0 = "requestedConfigMap"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.lang.String r0 = "uidMap"
            r3 = r13
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.lang.String r0 = "url"
            r1 = r14
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            java.lang.String r0 = "accountId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "root"
            java.lang.Object r0 = r12.get(r0)
            if (r0 == 0) goto L23
            goto L31
        L23:
            java.lang.CharSequence r0 = kotlin.text.StringsKt.v1(r14)
            java.lang.String r0 = r0.toString()
            int r0 = r0.length()
            if (r0 != 0) goto L35
        L31:
            java.lang.String r0 = "https://config.inmobi.com/config-server/v1/config/secure.cfg"
            r2 = r0
            goto L36
        L35:
            r2 = r1
        L36:
            java.lang.String r6 = "application/x-www-form-urlencoded"
            r7 = 64
            java.lang.String r1 = "POST"
            r5 = 0
            r0 = r11
            r3 = r13
            r4 = r17
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            r8.f24242y = r9
            r0 = r15
            r8.f24243z = r0
            r0 = r16
            r8.A = r0
            r8.B = r10
            r0 = r19
            r8.C = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.U2.<init>(java.util.Map, com.inmobi.media.ue, java.lang.String, int, int, boolean, java.lang.String, boolean):void");
    }

    @Override // com.inmobi.media.N9
    public final void f() {
        String str;
        this.f23905u = false;
        super.f();
        HashMap hashMap = this.f23895k;
        if (hashMap != null) {
            Q2 q22 = new Q2();
            try {
                JSONArray jSONArray = new JSONArray();
                for (Map.Entry entry : this.f24242y.entrySet()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("n", entry.getKey());
                    jSONObject.put(IVideoEventLogger.LOG_CALLBACK_TIME, q22.a((String) entry.getKey(), ((Config) entry.getValue()).getAccountId$media_release()));
                    jSONArray.put(jSONObject);
                }
                str = jSONArray.toString();
                Intrinsics.checkNotNullExpressionValue(str, "toString(...)");
            } catch (JSONException unused) {
                str = "";
            }
            String str2 = (String) hashMap.put(TtmlNode.TAG_P, str);
        }
        HashMap hashMap2 = this.f23895k;
        if (hashMap2 != null) {
            String str3 = (String) hashMap2.put("im-accid", this.B);
        }
        if (this.C) {
            this.f23893i.put("rip", "true");
        }
    }
}
