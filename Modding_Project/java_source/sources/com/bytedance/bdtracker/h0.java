package com.bytedance.bdtracker;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.applog.Level;
import com.bytedance.applog.game.GameReportHelper;
import com.bytedance.applog.log.EventBus;
import com.bytedance.applog.log.LogUtils;
import com.bytedance.bdtracker.l0;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.unity3d.services.UnityAdsConstants;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class h0 extends c0 {

    /* renamed from: g  reason: collision with root package name */
    public static final long[] f12031g = {ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, UnityAdsConstants.Timeout.INIT_TIMEOUT_MS, UnityAdsConstants.Timeout.INIT_TIMEOUT_MS, 180000, 180000, 360000, 360000, 540000, 540000};

    /* renamed from: h  reason: collision with root package name */
    public static final long[] f12032h = {180000, 180000, 360000, 360000, 540000, 540000, 720000, 720000};

    /* renamed from: i  reason: collision with root package name */
    public static final long[] f12033i = {10000, 10000, 20000, 20000, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS, UnityAdsConstants.Timeout.INIT_TIMEOUT_MS, UnityAdsConstants.Timeout.INIT_TIMEOUT_MS, 180000, 180000, 360000, 360000, 540000, 540000};

    /* loaded from: classes3.dex */
    public class a implements EventBus.DataFetcher {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ String f12034a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ String f12035b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ String f12036c;

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ String f12037d;

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ String f12038e;

        /* renamed from: f  reason: collision with root package name */
        public final /* synthetic */ String f12039f;

        public a(String str, String str2, String str3, String str4, String str5, String str6) {
            this.f12034a = str;
            this.f12035b = str2;
            this.f12036c = str3;
            this.f12037d = str4;
            this.f12038e = str5;
            this.f12039f = str6;
        }

        @Override // com.bytedance.applog.log.EventBus.DataFetcher
        public Object fetch() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("appId", h0.this.f11889f.f11913m);
                jSONObject.put("did", this.f12034a);
                jSONObject.put("installId", this.f12035b);
                jSONObject.put("ssid", this.f12036c);
                jSONObject.put("bdDid", this.f12037d);
                jSONObject.put("uuid", this.f12038e);
                jSONObject.put("uuidType", this.f12039f);
            } catch (Throwable unused) {
            }
            return jSONObject;
        }
    }

    public h0(e0 e0Var) {
        super(e0Var, e0Var.f11960i.f12361d.optLong("register_time", 0L));
    }

    public synchronized boolean a(@NonNull JSONObject jSONObject) {
        String str;
        this.f11888e.f11955d.D.debug(1, "Start do register work", new Object[0]);
        String optString = jSONObject.optString("user_unique_id");
        String optString2 = jSONObject.optString("user_unique_id_type");
        e0 e0Var = this.f11888e;
        r1 r1Var = e0Var.f11960i;
        p1 p1Var = e0Var.f11956e;
        p1Var.f12304c.getPreInstallCallback();
        Map<String, Object> commonHeader = p1Var.f12304c.getCommonHeader();
        jSONObject.put("req_id", x4.f12527a.b(new Object[0]));
        if (p1Var.j()) {
            boolean z10 = h5.f12045a.b(this.f11889f.f11914n).f12111c;
            this.f11888e.f11955d.D.debug(1, "Oaid maySupport: {}", Boolean.valueOf(z10));
            jSONObject.put("oaid_may_support", z10);
        }
        if (commonHeader != null) {
            for (Map.Entry<String, Object> entry : commonHeader.entrySet()) {
                if (entry.getValue() != null) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
            }
        }
        JSONObject b10 = b(jSONObject);
        if (b10 != null) {
            String optString3 = b10.optString("device_id", "");
            String optString4 = b10.optString("install_id", "");
            String optString5 = b10.optString("ssid", "");
            String optString6 = b10.optString("bd_did", "");
            String optString7 = b10.optString("cd", "");
            if (l0.b.d(optString5)) {
                this.f11888e.c().a(optString, optString5);
            }
            if (TextUtils.isEmpty(optString6)) {
                str = optString3;
            } else {
                str = optString6;
            }
            boolean a10 = r1Var.a(b10, optString, optString3, optString4, optString5, str, optString7);
            if (a10) {
                e0 e0Var2 = this.f11888e;
                e0Var2.a(e0Var2.f11964m);
                if (this.f11888e.f11956e.f12304c.isReportOaidEnable()) {
                    this.f11888e.a();
                }
                LogUtils.sendJsonFetcher("device_register_end", new a(optString3, optString4, optString5, str, optString, optString2));
            }
            return a10;
        }
        this.f11888e.f11955d.D.debug(1, "Register finished", new Object[0]);
        return false;
    }

    public JSONObject b(@NonNull JSONObject jSONObject) {
        this.f11888e.f11955d.D.debug(1, "Start to invokeRegister", new Object[0]);
        try {
            if (jSONObject.opt("oaid") instanceof String) {
                jSONObject.remove("oaid");
                r1 r1Var = this.f11888e.f11960i;
                if (r1Var != null && r1Var.e() != null) {
                    Object opt = this.f11888e.f11960i.e().opt("oaid");
                    if (opt instanceof JSONObject) {
                        jSONObject.put("oaid", opt);
                    }
                }
            }
            JSONObject b10 = p3.b(jSONObject);
            return this.f11889f.f11911k.a(this.f11889f.f11910j.a(jSONObject, this.f11888e.e().getRegisterUri(), true, Level.L1), b10);
        } catch (Throwable th2) {
            this.f11888e.f11955d.D.error(1, "Request to register server failed.", th2, new Object[0]);
            return null;
        }
    }

    @Override // com.bytedance.bdtracker.c0
    public boolean c() {
        JSONObject jSONObject = new JSONObject();
        l0.b.a(jSONObject, this.f11888e.f11960i.e());
        return a(jSONObject);
    }

    @Override // com.bytedance.bdtracker.c0
    public String d() {
        return GameReportHelper.REGISTER;
    }

    @Override // com.bytedance.bdtracker.c0
    public long[] e() {
        int h10 = this.f11888e.f11960i.h();
        if (h10 != 0) {
            if (h10 != 1) {
                if (h10 != 2) {
                    this.f11888e.f11955d.D.error(1, "Unknown register state", new Object[0]);
                } else {
                    return f12031g;
                }
            }
            return f12032h;
        }
        return f12033i;
    }

    @Override // com.bytedance.bdtracker.c0
    public boolean f() {
        return true;
    }

    @Override // com.bytedance.bdtracker.c0
    public long g() {
        if (this.f11888e.f11965n.f12088i) {
            return 21600000L;
        }
        return 43200000L;
    }

    public JSONObject c(@NonNull JSONObject jSONObject) {
        try {
            JSONObject b10 = p3.b(jSONObject);
            return this.f11889f.f11911k.b(this.f11888e.e().getReportOaidUri(), b10);
        } catch (Throwable th2) {
            this.f11888e.f11955d.D.error(1, "Report oaid failed.", th2, new Object[0]);
            return null;
        }
    }
}
