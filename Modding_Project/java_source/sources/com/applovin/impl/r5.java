package com.applovin.impl;

import android.net.Uri;
import android.os.SystemClock;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.b6;
import com.applovin.impl.s4;
import com.applovin.impl.sdk.network.a;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.bytedance.vodsetting.Module;
import com.google.android.gms.security.ProviderInstaller;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class r5 extends g5 {

    /* renamed from: j  reason: collision with root package name */
    private static final AtomicBoolean f9402j = new AtomicBoolean();

    /* renamed from: g  reason: collision with root package name */
    private final int f9403g;

    /* renamed from: h  reason: collision with root package name */
    private final Object f9404h;

    /* renamed from: i  reason: collision with root package name */
    private b f9405i;

    /* loaded from: classes2.dex */
    public interface b {
        void a(JSONObject jSONObject);
    }

    /* loaded from: classes2.dex */
    private class c extends g5 {
        public c(com.applovin.impl.sdk.k kVar) {
            super("TaskTimeoutFetchBasicSettings", kVar, true);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (r5.this.f9405i != null) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7962c.b(this.f7961b, "Timing out fetch basic settings...");
                }
                r5.this.a(new JSONObject());
            }
        }
    }

    public r5(int i10, com.applovin.impl.sdk.k kVar, b bVar) {
        super("TaskFetchBasicSettings", kVar, true);
        this.f9404h = new Object();
        this.f9403g = i10;
        this.f9405i = bVar;
    }

    private HashMap b(String str) {
        return a(str, 0L, 0, null, null);
    }

    private String f() {
        return r0.a((String) this.f7960a.a(v4.f10306n0), "5.0/i", b());
    }

    private String g() {
        return r0.a((String) this.f7960a.a(v4.f10298m0), "5.0/i", b());
    }

    /* JADX WARN: Can't wrap try/catch for region: R(43:1|(2:2|3)|(41:5|(1:7)|8|(1:10)|11|(1:13)|14|(1:16)|17|(1:19)|20|(1:22)(1:84)|(1:26)|27|(1:29)|30|(1:32)|33|(1:35)|36|37|(1:39)|41|(1:47)|48|(1:53)|54|(1:56)|57|(1:59)|60|(1:62)|63|(1:65)|66|(1:70)|71|(1:73)|74|(3:76|(1:78)|79)|81)|85|8|(0)|11|(0)|14|(0)|17|(0)|20|(0)(0)|(2:24|26)|27|(0)|30|(0)|33|(0)|36|37|(0)|41|(3:43|45|47)|48|(2:51|53)|54|(0)|57|(0)|60|(0)|63|(0)|66|(2:68|70)|71|(0)|74|(0)|81) */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00a1 A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ae A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x013d A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0151 A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0161 A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x019c A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0228 A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x023e A[Catch: JSONException -> 0x0062, TRY_LEAVE, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0260 A[Catch: all -> 0x0280, TRY_LEAVE, TryCatch #0 {all -> 0x0280, blocks: (B:40:0x024d, B:42:0x0260), top: B:89:0x024d }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0319 A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0334 A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x034f A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0371 A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03ae A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x03bd A[Catch: JSONException -> 0x0062, TryCatch #1 {JSONException -> 0x0062, blocks: (B:3:0x0041, B:5:0x0053, B:11:0x0072, B:13:0x00a1, B:14:0x00a6, B:16:0x00ae, B:17:0x00b3, B:19:0x013d, B:20:0x0145, B:22:0x0151, B:23:0x0159, B:25:0x0161, B:28:0x016f, B:30:0x0175, B:31:0x0186, B:33:0x019c, B:34:0x01a1, B:36:0x0228, B:37:0x022e, B:39:0x023e, B:43:0x0280, B:45:0x02bc, B:47:0x02c6, B:49:0x02ce, B:50:0x02d7, B:53:0x02f3, B:55:0x02fb, B:56:0x0309, B:58:0x0319, B:59:0x0324, B:61:0x0334, B:62:0x033f, B:64:0x034f, B:65:0x035a, B:67:0x0371, B:68:0x0377, B:70:0x0383, B:72:0x0389, B:73:0x038e, B:75:0x03ae, B:76:0x03b8, B:78:0x03bd, B:80:0x03c9, B:81:0x03d2, B:10:0x0065), top: B:91:0x0041 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected org.json.JSONObject e() {
        /*
            Method dump skipped, instructions count: 1043
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.r5.e():org.json.JSONObject");
    }

    protected Map h() {
        HashMap hashMap = new HashMap();
        if (!((Boolean) this.f7960a.a(v4.f10327p5)).booleanValue() && !((Boolean) this.f7960a.a(v4.f10319o5)).booleanValue()) {
            hashMap.put("rid", UUID.randomUUID().toString());
        }
        if (!((Boolean) this.f7960a.a(v4.f10205a5)).booleanValue()) {
            hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f7960a.j0());
        }
        CollectionUtils.putStringIfValid("connectEventKey", this.f7960a.r(), hashMap);
        Boolean b10 = p0.b().b(a());
        if (b10 != null) {
            hashMap.put("huc", b10.toString());
        }
        Boolean b11 = p0.c().b(a());
        if (b11 != null) {
            hashMap.put("aru", b11.toString());
        }
        Boolean b12 = p0.a().b(a());
        if (b12 != null) {
            hashMap.put("dns", b12.toString());
        }
        return hashMap;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!o0.j() && f9402j.compareAndSet(false, true)) {
            try {
                ProviderInstaller.installIfNeeded(com.applovin.impl.sdk.k.o());
            } catch (Throwable th2) {
                if (com.applovin.impl.sdk.o.a()) {
                    this.f7962c.a(this.f7961b, "Cannot update security provider", th2);
                }
            }
        }
        this.f7960a.w0().d(c2.f7640f, b(g()));
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Map h10 = h();
        a.C0121a b10 = com.applovin.impl.sdk.network.a.a(this.f7960a).b(g()).a(f()).b(h10).a(e()).b(((Boolean) this.f7960a.a(v4.A5)).booleanValue()).c(ShareTarget.METHOD_POST).a((Object) new JSONObject()).a(((Integer) this.f7960a.a(v4.f10203a3)).intValue()).b(((Integer) this.f7960a.a(v4.f10229d3)).intValue());
        com.applovin.impl.sdk.k kVar = this.f7960a;
        v4 v4Var = v4.Z2;
        com.applovin.impl.sdk.network.a a10 = b10.c(((Integer) kVar.a(v4Var)).intValue()).e(((Boolean) this.f7960a.a(v4.f10301m3)).booleanValue()).a(s4.a.a(((Integer) this.f7960a.a(v4.f10247f5)).intValue())).f(true).a();
        this.f7960a.r0().a(new c(this.f7960a), b6.b.TIMEOUT, ((Integer) this.f7960a.a(v4Var)).intValue() + 250);
        a aVar = new a(a10, this.f7960a, d(), elapsedRealtime);
        aVar.c(v4.f10298m0);
        aVar.b(v4.f10306n0);
        this.f7960a.r0().a(aVar);
    }

    /* loaded from: classes2.dex */
    class a extends j6 {

        /* renamed from: m  reason: collision with root package name */
        final /* synthetic */ long f9406m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(com.applovin.impl.sdk.network.a aVar, com.applovin.impl.sdk.k kVar, boolean z10, long j10) {
            super(aVar, kVar, z10);
            this.f9406m = j10;
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, JSONObject jSONObject, int i10) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f9406m;
            r5.this.a(jSONObject);
            this.f7960a.w0().d(c2.f7642g, r5.this.a(str, elapsedRealtime, i10, jSONObject, null));
        }

        @Override // com.applovin.impl.j6, com.applovin.impl.q0.e
        public void a(String str, int i10, String str2, JSONObject jSONObject) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = this.f7962c;
                String str3 = this.f7961b;
                oVar.b(str3, "Unable to fetch basic SDK settings: server returned " + i10);
            }
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f9406m;
            r5.this.a(jSONObject != null ? jSONObject : new JSONObject());
            this.f7960a.w0().d(c2.f7644h, r5.this.a(str, elapsedRealtime, i10, jSONObject, str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap a(String str, long j10, int i10, JSONObject jSONObject, String str2) {
        Uri build = Uri.parse(str).buildUpon().clearQuery().build();
        JSONObject jSONObject2 = new JSONObject();
        JsonUtils.putString(jSONObject2, "domain", build.getHost());
        if (jSONObject != null) {
            JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "signal_providers", null);
            JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject, "auto_init_adapters", null);
            if (jSONArray != null) {
                JsonUtils.putInt(jSONObject2, "signal_provider_count", jSONArray.length());
            }
            if (jSONArray2 != null) {
                JsonUtils.putInt(jSONObject2, "auto_init_adapter_count", jSONArray2.length());
            }
        }
        HashMap hashMap = new HashMap();
        hashMap.put("attempt_number", Integer.toString(this.f9403g));
        hashMap.put("error_message", str2);
        hashMap.put("url", build.toString());
        hashMap.put("details", jSONObject2.toString());
        hashMap.put("duration_ms", Long.toString(j10));
        hashMap.put(Module.ResponseKey.Code, Integer.toString(i10));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        b bVar;
        synchronized (this.f9404h) {
            bVar = this.f9405i;
            this.f9405i = null;
        }
        if (bVar != null) {
            bVar.a(jSONObject);
        }
    }
}
