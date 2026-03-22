package com.inmobi.media;

import android.content.Context;
import androidx.browser.trusted.sharing.ShareTarget;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class T extends N9 {
    public String A;
    public String B;
    public String C;
    public Map D;

    /* renamed from: y  reason: collision with root package name */
    public final Z f24164y;

    /* renamed from: z  reason: collision with root package name */
    public final X9 f24165z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T(String str, C3198ue c3198ue, String str2, Z adPlacement, X9 x92, InterfaceC3269z5 interfaceC3269z5, boolean z10) {
        super(ShareTarget.METHOD_POST, str, c3198ue, false, interfaceC3269z5, ShareTarget.ENCODING_TYPE_URL_ENCODED, z10);
        Intrinsics.checkNotNullParameter(adPlacement, "adPlacement");
        this.f24164y = adPlacement;
        this.f24165z = x92;
        this.A = "json";
        this.f23897m = Uc.b();
        HashMap hashMap = this.f23895k;
        if (hashMap != null) {
            hashMap.putAll(U3.c());
            String str3 = C2930e1.f24617b;
            if (str3 != null) {
                String str4 = (String) hashMap.put("u-appIS", str3);
            }
            hashMap.put("client-request-id", adPlacement.d());
            if (str2 != null) {
                hashMap.put("u-appcache", str2);
            }
            hashMap.put("sdk-flavor", "row");
        }
    }

    public static JSONObject a(String adType) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        if (Intrinsics.areEqual(adType, "banner")) {
            return C3205v5.f25357c.a();
        }
        if (Intrinsics.areEqual("audio", adType)) {
            C3141r5 c3141r5 = C3141r5.f25230c;
            JSONObject jSONObject = new JSONObject();
            long j10 = c3141r5.f24100a / 1000;
            if (j10 != 0) {
                jSONObject.put("a-lastAudioPlayedTs", String.valueOf(j10));
            }
            int i10 = c3141r5.f24101b;
            if (i10 > 0) {
                jSONObject.put("a-audioFreq", String.valueOf(i10));
            }
            Context d10 = Uc.d();
            if (d10 != null) {
                ConcurrentHashMap concurrentHashMap = C6.f23529b;
                C6 a10 = B6.a(d10, "audio_pref_file");
                Intrinsics.checkNotNullParameter("user_mute_count", "key");
                int i11 = a10.f23530a.getInt("user_mute_count", -1);
                if (i11 > 0) {
                    jSONObject.put("a-umc", String.valueOf(i11));
                }
            }
            return jSONObject;
        }
        return new JSONObject();
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x02c2  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x033a  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x034e  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0367  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:167:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0239  */
    @Override // com.inmobi.media.N9
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() {
        /*
            Method dump skipped, instructions count: 1004
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.T.f():void");
    }
}
