package com.mbridge.msdk.foundation.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
import com.vungle.ads.internal.model.Cookie;
/* compiled from: TCStringManager.java */
/* loaded from: classes5.dex */
public class e implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private String f26744a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f26745b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f26746c = "";

    /* renamed from: d  reason: collision with root package name */
    private String f26747d = "";

    /* renamed from: e  reason: collision with root package name */
    private int f26748e = 0;

    /* renamed from: f  reason: collision with root package name */
    private boolean f26749f = false;

    /* renamed from: g  reason: collision with root package name */
    private boolean f26750g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f26751h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f26752i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f26753j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f26754k;

    /* renamed from: l  reason: collision with root package name */
    private a f26755l;

    /* renamed from: m  reason: collision with root package name */
    private final SharedPreferences f26756m;

    /* compiled from: TCStringManager.java */
    /* loaded from: classes5.dex */
    public interface a {
        void a();
    }

    public e(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context.getApplicationContext());
        this.f26756m = defaultSharedPreferences;
        if (defaultSharedPreferences != null) {
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        }
        a();
    }

    private void a() {
        SharedPreferences sharedPreferences = this.f26756m;
        if (sharedPreferences != null) {
            d(sharedPreferences.getString("IABTCF_TCString", ""));
            a(this.f26756m.getInt(Cookie.IABTCF_GDPR_APPLIES, 0));
            c(this.f26756m.getString("IABTCF_PurposeConsents", ""));
            e(this.f26756m.getString("IABTCF_VendorConsents", ""));
            b(this.f26756m.getString("IABTCF_AddtlConsent", ""));
        }
    }

    public String b() {
        return this.f26744a;
    }

    public void c(String str) {
        this.f26750g = a(str, 1);
        this.f26751h = a(str, 2);
        this.f26745b = str;
    }

    public void d(String str) {
        this.f26744a = str;
    }

    public void e(String str) {
        this.f26752i = a(str, 867);
        this.f26746c = str;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        char c10;
        try {
            if (!TextUtils.isEmpty(str)) {
                switch (str.hashCode()) {
                    case -2004976699:
                        if (str.equals("IABTCF_PurposeConsents")) {
                            c10 = 2;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 83641339:
                        if (str.equals(Cookie.IABTCF_GDPR_APPLIES)) {
                            c10 = 1;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1218895378:
                        if (str.equals("IABTCF_TCString")) {
                            c10 = 0;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1342914771:
                        if (str.equals("IABTCF_AddtlConsent")) {
                            c10 = 4;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 1450203731:
                        if (str.equals("IABTCF_VendorConsents")) {
                            c10 = 3;
                            break;
                        }
                        c10 = 65535;
                        break;
                    default:
                        c10 = 65535;
                        break;
                }
                if (c10 != 0) {
                    if (c10 != 1) {
                        if (c10 != 2) {
                            if (c10 != 3) {
                                if (c10 == 4) {
                                    b(sharedPreferences.getString("IABTCF_AddtlConsent", ""));
                                }
                            } else {
                                e(sharedPreferences.getString("IABTCF_VendorConsents", ""));
                            }
                        } else {
                            c(sharedPreferences.getString("IABTCF_PurposeConsents", ""));
                        }
                    } else {
                        a(sharedPreferences.getInt(Cookie.IABTCF_GDPR_APPLIES, 0));
                    }
                } else {
                    d(sharedPreferences.getString("IABTCF_TCString", ""));
                }
                a aVar = this.f26755l;
                if (aVar != null) {
                    aVar.a();
                }
            }
        } catch (Throwable th2) {
            p0.b("TCStringManager", th2.getMessage());
        }
    }

    public void b(String str) {
        this.f26747d = str;
        if (TextUtils.isEmpty(str)) {
            this.f26753j = true;
        } else if (MBridgeConstans.GOOGLE_ATP_ID == -1) {
            this.f26754k = false;
        } else {
            this.f26754k = true;
            try {
                String[] split = str.split("~");
                if (split.length > 1) {
                    if (TextUtils.isEmpty(split[1])) {
                        this.f26753j = false;
                    } else {
                        this.f26753j = str.contains(String.valueOf(MBridgeConstans.GOOGLE_ATP_ID));
                    }
                }
            } catch (Throwable th2) {
                p0.b("TCStringManager", th2.getMessage());
            }
        }
    }

    public boolean c() {
        if (this.f26748e == 0) {
            a(true);
            return this.f26749f;
        }
        if (MBridgeConstans.VERIFY_ATP_CONSENT) {
            a((this.f26752i || (this.f26754k && this.f26753j)) && this.f26750g && this.f26751h);
        } else {
            if (!this.f26752i || !this.f26750g || !this.f26751h) {
                r1 = false;
            }
            a(r1);
        }
        return this.f26749f;
    }

    public void a(a aVar) {
        if (aVar != null) {
            this.f26755l = aVar;
        }
    }

    public void a(int i10) {
        this.f26748e = i10;
    }

    public void a(boolean z10) {
        this.f26749f = z10;
    }

    private boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("[01]+");
    }

    private boolean a(String str, int i10) {
        return a(str) && i10 <= str.length() && i10 >= 1 && '1' == str.charAt(i10 - 1);
    }
}
