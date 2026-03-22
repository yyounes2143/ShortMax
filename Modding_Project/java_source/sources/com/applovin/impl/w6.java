package com.applovin.impl;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import androidx.collection.SieveCacheKt;
import com.applovin.impl.sdk.utils.StringUtils;
import com.mbridge.msdk.MBridgeConstans;
/* loaded from: classes2.dex */
public class w6 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f10469a;

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f10470b;

    /* renamed from: c  reason: collision with root package name */
    private Integer f10471c;

    /* renamed from: d  reason: collision with root package name */
    private Integer f10472d;

    /* renamed from: e  reason: collision with root package name */
    private Integer f10473e;

    /* renamed from: f  reason: collision with root package name */
    private String f10474f;

    /* renamed from: g  reason: collision with root package name */
    private String f10475g;

    /* renamed from: h  reason: collision with root package name */
    private String f10476h;

    /* renamed from: i  reason: collision with root package name */
    private String f10477i;

    /* renamed from: j  reason: collision with root package name */
    private String f10478j;

    public w6(com.applovin.impl.sdk.k kVar) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(com.applovin.impl.sdk.k.o());
        this.f10470b = defaultSharedPreferences;
        this.f10469a = kVar;
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        this.f10471c = a(x4.f10526t.a());
        this.f10472d = a(x4.f10527u.a());
        this.f10473e = h();
        this.f10474f = (String) y4.a(x4.f10529w, (Object) null, defaultSharedPreferences, false);
        this.f10475g = (String) y4.a(x4.f10530x, (Object) null, defaultSharedPreferences, false);
        this.f10476h = (String) y4.a(x4.f10531y, (Object) null, defaultSharedPreferences, false);
        this.f10477i = (String) y4.a(x4.A, (Object) null, defaultSharedPreferences, false);
        this.f10478j = (String) y4.a(x4.C, (Object) null, defaultSharedPreferences, false);
        b(this.f10475g);
    }

    private Integer h() {
        String a10 = x4.f10528v.a();
        if (this.f10470b.contains(a10)) {
            Integer num = (Integer) y4.a(a10, null, Integer.class, this.f10470b, false);
            if (num != null) {
                if (num.intValue() != 1 && num.intValue() != 0) {
                    this.f10469a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O = this.f10469a.O();
                        O.b("TcfManager", "Integer value (" + num + ") for " + a10 + " is invalid - setting GDPR Applies to null");
                    }
                    return null;
                }
                return num;
            }
            Long l10 = (Long) y4.a(a10, null, Long.class, this.f10470b, false);
            if (l10 != null) {
                if (l10.longValue() != 1 && l10.longValue() != 0) {
                    this.f10469a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O2 = this.f10469a.O();
                        O2.b("TcfManager", "Long value (" + l10 + ") for " + a10 + " is invalid - setting GDPR Applies to null");
                    }
                    return null;
                }
                return Integer.valueOf(l10.intValue());
            }
            Boolean bool = (Boolean) y4.a(a10, null, Boolean.class, this.f10470b, false);
            if (bool != null) {
                return Integer.valueOf(bool.booleanValue() ? 1 : 0);
            }
            String str = (String) y4.a(a10, null, String.class, this.f10470b, false);
            if (str != null) {
                if (!"1".equals(str) && !"true".equals(str)) {
                    if (!MBridgeConstans.ENDCARD_URL_TYPE_PL.equals(str) && !"false".equals(str)) {
                        this.f10469a.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o O3 = this.f10469a.O();
                            O3.b("TcfManager", "String value (" + str + ") for " + a10 + " is invalid - setting GDPR Applies to null");
                        }
                        return null;
                    }
                    return 0;
                }
                return 1;
            }
        }
        return null;
    }

    public Boolean a(int i10) {
        return z6.a(i10, this.f10475g);
    }

    public boolean b() {
        return z6.a(this.f10475g);
    }

    public String c() {
        return this.f10475g;
    }

    public String d() {
        return u6.a(this.f10471c);
    }

    public Integer e() {
        return this.f10471c;
    }

    public Integer f() {
        return this.f10472d;
    }

    public Integer g() {
        return this.f10473e;
    }

    public String i() {
        return a("CMP Name", d()) + a("CMP SDK ID", this.f10471c) + a("CMP SDK Version", this.f10472d) + a(x4.f10528v.a(), this.f10473e) + a(x4.f10529w.a(), this.f10474f) + a(x4.f10530x.a(), this.f10475g);
    }

    public String j() {
        return this.f10474f;
    }

    public String k() {
        return this.f10476h;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (str == null) {
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f10469a.O().a("TcfManager", "SharedPreferences are cleared - setting all stored TC data to null");
            }
            a();
        } else if (str.equals(x4.f10526t.a())) {
            this.f10471c = a(str);
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f10469a.O();
                O.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.f10471c);
            }
            this.f10469a.S0();
        } else if (str.equals(x4.f10527u.a())) {
            this.f10472d = a(str);
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O2 = this.f10469a.O();
                O2.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.f10472d);
            }
        } else if (str.equals(x4.f10528v.a())) {
            this.f10473e = h();
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O3 = this.f10469a.O();
                O3.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.f10473e);
            }
        } else if (str.equals(x4.f10529w.a())) {
            this.f10474f = (String) y4.a(str, (Object) null, String.class, sharedPreferences);
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O4 = this.f10469a.O();
                O4.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.f10474f);
            }
            this.f10469a.S0();
        } else if (str.equals(x4.f10530x.a())) {
            this.f10475g = (String) y4.a(str, (Object) null, String.class, sharedPreferences);
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O5 = this.f10469a.O();
                O5.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.f10475g);
            }
            b(this.f10475g);
        } else if (str.equals(x4.f10531y.a())) {
            this.f10476h = (String) y4.a(str, (Object) null, String.class, sharedPreferences);
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O6 = this.f10469a.O();
                O6.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.f10476h);
            }
        } else if (str.equals(x4.f10532z.a())) {
            String str2 = (String) y4.a(str, (Object) null, String.class, sharedPreferences);
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O7 = this.f10469a.O();
                O7.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str2);
            }
        } else if (str.equals(x4.A.a())) {
            this.f10477i = (String) y4.a(str, (Object) null, String.class, sharedPreferences);
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O8 = this.f10469a.O();
                O8.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.f10477i);
            }
        } else if (str.equals(x4.B.a())) {
            String str3 = (String) y4.a(str, (Object) null, String.class, sharedPreferences);
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O9 = this.f10469a.O();
                O9.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str3);
            }
        } else if (str.equals(x4.C.a())) {
            this.f10478j = (String) y4.a(str, (Object) null, String.class, sharedPreferences);
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O10 = this.f10469a.O();
                O10.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.f10478j);
            }
        } else if (str.contains("IABTCF_PublisherRestrictions")) {
            String str4 = (String) y4.a(str, (Object) null, String.class, sharedPreferences);
            this.f10469a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O11 = this.f10469a.O();
                O11.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str4);
            }
        }
    }

    private Integer a(String str) {
        if (this.f10470b.contains(str)) {
            Integer num = (Integer) y4.a(str, null, Integer.class, this.f10470b, false);
            if (num != null) {
                return num;
            }
            Long l10 = (Long) y4.a(str, null, Long.class, this.f10470b, false);
            if (l10 != null && l10.longValue() >= SieveCacheKt.NodeMetaAndPreviousMask && l10.longValue() <= SieveCacheKt.NodeLinkMask) {
                return Integer.valueOf(l10.intValue());
            }
            String str2 = (String) y4.a(str, null, String.class, this.f10470b, false);
            if (str2 != null) {
                if (StringUtils.isNumeric(str2)) {
                    return Integer.valueOf(Integer.parseInt(str2));
                }
                this.f10469a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = this.f10469a.O();
                    O.b("TcfManager", "String value (" + str2 + ") for " + str + " is not numeric - storing value as null");
                }
            }
        }
        return null;
    }

    public Boolean b(int i10) {
        String str = this.f10477i;
        if (str == null) {
            return null;
        }
        return Boolean.valueOf(z6.a(str, i10 - 1));
    }

    public Boolean c(int i10) {
        String str = this.f10478j;
        if (str == null) {
            return null;
        }
        return Boolean.valueOf(z6.a(str, i10 - 1));
    }

    public Boolean d(int i10) {
        String str = this.f10476h;
        if (str == null) {
            return null;
        }
        return Boolean.valueOf(z6.a(str, i10 - 1));
    }

    private void b(String str) {
        this.f10469a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f10469a.O();
            O.a("TcfManager", "Attempting to update consent from Additional Consent string: " + str);
        }
        Boolean a10 = z6.a(1301, str);
        if (a10 != null) {
            if (a10.booleanValue()) {
                this.f10469a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f10469a.O().a("TcfManager", "Found AppLovin ID in the list of consented ATP IDs - setting user consent to true");
                }
                p0.b(true, com.applovin.impl.sdk.k.o());
            } else {
                this.f10469a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f10469a.O().a("TcfManager", "Could not find AppLovin ID in the list of consented ATP IDs - setting user consent to false");
                }
                p0.b(false, com.applovin.impl.sdk.k.o());
            }
            this.f10469a.S0();
            return;
        }
        this.f10469a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f10469a.O().a("TcfManager", "AC string is not valid or AppLovin was not listed on the CMP flow - no consent update");
        }
    }

    private void a() {
        this.f10471c = null;
        this.f10473e = null;
        this.f10474f = null;
        this.f10475g = null;
        this.f10476h = null;
    }

    private String a(String str, Object obj) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("\n");
        sb2.append(str);
        sb2.append(" - ");
        sb2.append(obj != null ? obj.toString() : "No value set");
        return sb2.toString();
    }
}
