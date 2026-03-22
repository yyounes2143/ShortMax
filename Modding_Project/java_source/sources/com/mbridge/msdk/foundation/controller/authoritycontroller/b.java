package com.mbridge.msdk.foundation.controller.authoritycontroller;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.e;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.out.OnCompletionListener;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: BaseSDKAuthorityController.java */
/* loaded from: classes5.dex */
public abstract class b {

    /* renamed from: h  reason: collision with root package name */
    private static boolean f26708h = true;

    /* renamed from: i  reason: collision with root package name */
    private static boolean f26709i = true;

    /* renamed from: b  reason: collision with root package name */
    protected AuthorityInfoBean f26711b;

    /* renamed from: g  reason: collision with root package name */
    private e f26716g;

    /* renamed from: a  reason: collision with root package name */
    public ArrayList<String> f26710a = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private int f26712c = 3;

    /* renamed from: d  reason: collision with root package name */
    private int f26713d = 0;

    /* renamed from: e  reason: collision with root package name */
    private int f26714e = 0;

    /* renamed from: f  reason: collision with root package name */
    private String f26715f = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseSDKAuthorityController.java */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f26717a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ OnCompletionListener f26718b;

        a(Context context, OnCompletionListener onCompletionListener) {
            this.f26717a = context;
            this.f26718b = onCompletionListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f26717a);
            this.f26718b.onCompletion();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseSDKAuthorityController.java */
    /* renamed from: com.mbridge.msdk.foundation.controller.authoritycontroller.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0364b implements e.a {
        C0364b() {
        }

        @Override // com.mbridge.msdk.foundation.controller.e.a
        public void a() {
            b.this.k();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public b() {
        h();
    }

    public static void b(boolean z10) {
        f26709i = z10;
    }

    public static boolean i() {
        return f26708h;
    }

    public static boolean j() {
        return f26709i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        int i10;
        boolean c10 = this.f26716g.c();
        b(this.f26716g.b());
        if (c10) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        d(i10);
        this.f26711b.authDeviceIdStatus(c10 ? 1 : 0);
    }

    protected abstract int a(g gVar, String str);

    public int c() {
        return this.f26713d;
    }

    public int d() {
        return this.f26714e;
    }

    public int e() {
        return this.f26712c;
    }

    public String f() {
        return this.f26715f;
    }

    public String g() {
        JSONArray jSONArray = new JSONArray();
        g c10 = h.b().c();
        for (int i10 = 0; i10 < this.f26710a.size(); i10++) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("keyname", String.valueOf(this.f26710a.get(i10)));
                jSONObject.put("client_status", a(this.f26710a.get(i10)));
                jSONObject.put("server_status", a(c10, this.f26710a.get(i10)));
                jSONArray.put(jSONObject);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return jSONArray.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void h() {
        AuthorityInfoBean authorityInfoBean = new AuthorityInfoBean();
        this.f26711b = authorityInfoBean;
        try {
            authorityInfoBean.authGenDataStatus(1);
            this.f26711b.authDeviceIdStatus(1);
            this.f26711b.authSerialIdStatus(1);
            this.f26711b.authOtherDataStatus(1);
            this.f26710a.add(MBridgeConstans.AUTHORITY_GENERAL_DATA);
            this.f26710a.add(MBridgeConstans.AUTHORITY_DEVICE_ID);
            this.f26710a.add(MBridgeConstans.AUTHORITY_SERIAL_ID);
            this.f26710a.add(MBridgeConstans.AUTHORITY_OTHER);
        } catch (Exception e10) {
            p0.b("SDKAuthorityController", e10.getMessage());
        }
    }

    private void d(int i10) {
        this.f26712c = i10 != 1 ? 2 : 1;
    }

    public boolean b() {
        int i10 = this.f26712c;
        return i10 == 1 || i10 == 3;
    }

    public void c(int i10) {
        this.f26714e = i10;
    }

    public static void a(boolean z10) {
        f26708h = z10;
    }

    public void b(int i10) {
        this.f26713d = i10;
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f26715f = str;
    }

    public AuthorityInfoBean a() {
        AuthorityInfoBean authorityInfoBean = this.f26711b;
        if (authorityInfoBean != null) {
            return authorityInfoBean;
        }
        AuthorityInfoBean authorityInfoBean2 = new AuthorityInfoBean();
        authorityInfoBean2.a(1);
        return authorityInfoBean2;
    }

    public void a(int i10) {
        this.f26712c = i10 != 1 ? 2 : 1;
        if (this.f26711b != null) {
            d(i10);
        }
    }

    public void a(Context context, OnCompletionListener onCompletionListener) {
        if (onCompletionListener != null) {
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new a(context, onCompletionListener));
        } else {
            a(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(String str) {
        AuthorityInfoBean authorityInfoBean;
        try {
            if (TextUtils.isEmpty(str) || (authorityInfoBean = this.f26711b) == null) {
                return 0;
            }
            return authorityInfoBean.getStatusByKey(str);
        } catch (Exception e10) {
            p0.b("SDKAuthorityController", e10.getMessage());
            return 0;
        }
    }

    public void a(String str, int i10) {
        if (TextUtils.isEmpty(str) || this.f26711b == null) {
            return;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1262204598:
                if (str.equals(MBridgeConstans.AUTHORITY_SERIAL_ID)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1133763064:
                if (str.equals(MBridgeConstans.AUTHORITY_ALL_INFO)) {
                    c10 = 1;
                    break;
                }
                break;
            case -663505496:
                if (str.equals(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                    c10 = 2;
                    break;
                }
                break;
            case 1026848797:
                if (str.equals(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    c10 = 3;
                    break;
                }
                break;
            case 1564683028:
                if (str.equals(MBridgeConstans.AUTHORITY_OTHER)) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.f26711b.authSerialIdStatus(i10);
                return;
            case 1:
                this.f26711b.a(i10);
                return;
            case 2:
                this.f26711b.authDeviceIdStatus(i10);
                return;
            case 3:
                this.f26711b.authGenDataStatus(i10);
                return;
            case 4:
                this.f26711b.authOtherDataStatus(i10);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        try {
            if (this.f26716g == null) {
                e eVar = new e(context);
                this.f26716g = eVar;
                eVar.a(new C0364b());
            }
            k();
        } catch (Throwable th2) {
            p0.b("SDKAuthorityController", th2.getMessage());
        }
    }
}
