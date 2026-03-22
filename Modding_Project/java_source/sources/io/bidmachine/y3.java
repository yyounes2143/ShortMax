package io.bidmachine;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.inmobi.InMobiNetworkKeys;
import com.vungle.ads.internal.model.Cookie;
import java.util.ArrayList;
import java.util.List;
/* compiled from: IABSharedPreferenceImpl.java */
/* loaded from: classes7.dex */
class y3 implements x3 {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences.OnSharedPreferenceChangeListener f58727b = new a();
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Boolean f58728c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Boolean f58729d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f58730e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f58731f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f58732g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private String f58733h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private List<Integer> f58734i;

    /* compiled from: IABSharedPreferenceImpl.java */
    /* loaded from: classes7.dex */
    class a implements SharedPreferences.OnSharedPreferenceChangeListener {
        a() {
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            y3.this.n(sharedPreferences, str);
        }
    }

    private void j(@NonNull SharedPreferences sharedPreferences) {
        this.f58730e = fr.i.c(sharedPreferences, "IABConsent_ConsentString", null);
    }

    private void k(@NonNull SharedPreferences sharedPreferences) {
        Boolean bool = null;
        String c10 = fr.i.c(sharedPreferences, "IABConsent_SubjectToGDPR", null);
        if (c10 != null) {
            bool = Boolean.valueOf(c10.equals("1"));
        }
        this.f58728c = bool;
    }

    private void l(@NonNull SharedPreferences sharedPreferences) {
        String c10 = fr.i.c(sharedPreferences, "IABGPP_GppSID", null);
        if (TextUtils.isEmpty(c10)) {
            this.f58734i = null;
            return;
        }
        try {
            String[] split = c10.split("_");
            if (split.length == 0) {
                this.f58734i = null;
                return;
            }
            this.f58734i = new ArrayList();
            for (String str : split) {
                Integer g02 = io.bidmachine.core.g.g0(str, null);
                if (g02 != null) {
                    this.f58734i.add(g02);
                }
            }
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            this.f58734i = null;
        }
    }

    private void m(@NonNull SharedPreferences sharedPreferences) {
        this.f58733h = fr.i.c(sharedPreferences, "IABGPP_HDR_GppString", null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(@NonNull SharedPreferences sharedPreferences, @Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case 83641339:
                if (str.equals(Cookie.IABTCF_GDPR_APPLIES)) {
                    c10 = 0;
                    break;
                }
                break;
            case 126060329:
                if (str.equals("IABGPP_GppSID")) {
                    c10 = 1;
                    break;
                }
                break;
            case 743443760:
                if (str.equals(InMobiNetworkKeys.IAB_US_PRIVACY_STRING)) {
                    c10 = 2;
                    break;
                }
                break;
            case 969191740:
                if (str.equals("IABConsent_ConsentString")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1218895378:
                if (str.equals("IABTCF_TCString")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1233058135:
                if (str.equals("IABConsent_SubjectToGDPR")) {
                    c10 = 5;
                    break;
                }
                break;
            case 2023018157:
                if (str.equals("IABGPP_HDR_GppString")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                o(sharedPreferences);
                return;
            case 1:
                l(sharedPreferences);
                return;
            case 2:
                q(sharedPreferences);
                return;
            case 3:
                j(sharedPreferences);
                return;
            case 4:
                p(sharedPreferences);
                return;
            case 5:
                k(sharedPreferences);
                return;
            case 6:
                m(sharedPreferences);
                return;
            default:
                return;
        }
    }

    private void o(@NonNull SharedPreferences sharedPreferences) {
        int a10 = fr.i.a(sharedPreferences, Cookie.IABTCF_GDPR_APPLIES, -1);
        if (a10 == 1) {
            this.f58729d = Boolean.TRUE;
        } else if (a10 == 0) {
            this.f58729d = Boolean.FALSE;
        } else {
            this.f58729d = null;
        }
    }

    private void p(@NonNull SharedPreferences sharedPreferences) {
        this.f58731f = fr.i.c(sharedPreferences, "IABTCF_TCString", null);
    }

    private void q(@NonNull SharedPreferences sharedPreferences) {
        this.f58732g = fr.i.c(sharedPreferences, InMobiNetworkKeys.IAB_US_PRIVACY_STRING, null);
    }

    @Override // io.bidmachine.x3
    public void a(@NonNull Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this.f58727b);
        for (String str : x3.f58718a) {
            n(defaultSharedPreferences, str);
        }
    }

    @Override // io.bidmachine.x3
    @Nullable
    public String b() {
        return this.f58733h;
    }

    @Override // io.bidmachine.x3
    @Nullable
    public String c() {
        return this.f58732g;
    }

    @Override // io.bidmachine.x3
    @Nullable
    public Boolean d() {
        return this.f58729d;
    }

    @Override // io.bidmachine.x3
    @Nullable
    public String e() {
        return this.f58731f;
    }

    @Override // io.bidmachine.x3
    @Nullable
    public Boolean f() {
        return this.f58728c;
    }

    @Override // io.bidmachine.x3
    @Nullable
    public String g() {
        return this.f58730e;
    }

    @Override // io.bidmachine.x3
    @Nullable
    public List<Integer> h() {
        return this.f58734i;
    }
}
