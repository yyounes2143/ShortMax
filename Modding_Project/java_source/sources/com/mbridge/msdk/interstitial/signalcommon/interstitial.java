package com.mbridge.msdk.interstitial.signalcommon;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.mbridge.msdk.click.c;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.mbsignalcommon.windvane.AbsFeedBackForH5;
import com.mbridge.msdk.mbsignalcommon.windvane.f;
import com.vungle.ads.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class interstitial extends AbsFeedBackForH5 {

    /* renamed from: h  reason: collision with root package name */
    private static final String f27641h = "com.mbridge.msdk.interstitial.signalcommon.interstitial";

    /* renamed from: i  reason: collision with root package name */
    public static final /* synthetic */ int f27642i = 0;

    /* renamed from: g  reason: collision with root package name */
    private Object f27643g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f27644a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27645b;

        a(List list, String str) {
            this.f27644a = list;
            this.f27645b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.interstitial.cache.a a10 = com.mbridge.msdk.interstitial.cache.a.a();
            if (a10 != null) {
                a10.a(this.f27644a, this.f27645b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f27647a;

        b(List list) {
            this.f27647a = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i10 = 0; i10 < this.f27647a.size(); i10++) {
                CampaignEx campaignEx = (CampaignEx) this.f27647a.get(i10);
                if (campaignEx != null) {
                    j.a(g.a(((com.mbridge.msdk.mbsignalcommon.windvane.g) interstitial.this).f28262a)).b(campaignEx.getId());
                }
            }
        }
    }

    private void b() {
        try {
            Context context = this.f28262a;
            if (context == null) {
                return;
            }
            if (a(context) == 1) {
                try {
                    MBInterstitialActivity mBInterstitialActivity = (MBInterstitialActivity) this.f28262a;
                    if (mBInterstitialActivity != null) {
                        mBInterstitialActivity.hideLoading();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private void c() {
        try {
            f.a().b(this.f27643g, "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        MBInterstitialActivity mBInterstitialActivity;
        try {
            Context context = this.f28262a;
            if (context != null && a(context) == 1 && (mBInterstitialActivity = (MBInterstitialActivity) this.f28262a) != null) {
                mBInterstitialActivity.showWebView();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public List<String> getExcludeIdList(String str) {
        Exception e10;
        ArrayList arrayList;
        try {
        } catch (Exception e11) {
            e10 = e11;
            arrayList = null;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String optString = new JSONObject(str).optString(e.f27191h);
        if (TextUtils.isEmpty(optString)) {
            return null;
        }
        JSONArray jSONArray = new JSONArray(optString);
        if (jSONArray.length() <= 0) {
            return null;
        }
        arrayList = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            try {
                if (!TextUtils.isEmpty(jSONArray.optString(i10))) {
                    arrayList.add(jSONArray.optString(i10));
                }
            } catch (Exception e12) {
                e10 = e12;
                e10.printStackTrace();
                return arrayList;
            }
        }
        return arrayList;
    }

    public void getInfo(Object obj, String str) {
        try {
            this.f27643g = obj;
            Context context = this.f28262a;
            if (context == null) {
                c();
                return;
            }
            int a10 = a(context);
            if (TextUtils.isEmpty(a())) {
                c();
            } else if (a10 == 1) {
                a(obj, str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            c();
        }
    }

    public void install(Object obj, String str) {
        try {
            Context context = this.f28262a;
            if (context != null && (context instanceof MBInterstitialActivity)) {
                ((MBInterstitialActivity) context).clickTracking();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void openURL(Object obj, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String optString = jSONObject.optString("url");
                int optInt = jSONObject.optInt("type");
                if (optInt == 1) {
                    c.c(this.f28262a, optString);
                } else if (optInt == 2) {
                    c.e(this.f28262a, optString);
                }
            } catch (JSONException e10) {
                p0.b(f27641h, e10.getMessage());
            } catch (Throwable th2) {
                p0.b(f27641h, th2.getMessage());
            }
        }
    }

    private void a(Object obj, String str) {
        try {
            b();
            d();
            Context context = this.f28262a;
            if (context == null) {
                c();
            } else if (a(context) != 1) {
                c();
            } else {
                Context context2 = this.f28262a;
                if (context2 instanceof MBInterstitialActivity) {
                    ((MBInterstitialActivity) context2).mIsMBPage = true;
                }
                String a10 = a();
                if (TextUtils.isEmpty(a10)) {
                    c();
                    return;
                }
                List<CampaignEx> a11 = a(a10);
                if (a11 != null) {
                    String a12 = a(a11);
                    if (TextUtils.isEmpty(a12)) {
                        c();
                        return;
                    }
                    f.a().b(obj, a12);
                    a(a10, a11);
                    b(a10, a11);
                    a(a11, a10);
                    return;
                }
                c();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            c();
        }
    }

    private void b(String str, List<CampaignEx> list) {
        try {
            if (!TextUtils.isEmpty(str) && list != null && list.size() != 0) {
                new Thread(new b(list)).start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private List<CampaignEx> a(String str) {
        try {
            if (!TextUtils.isEmpty(str) && com.mbridge.msdk.interstitial.cache.a.a() != null) {
                return com.mbridge.msdk.interstitial.cache.a.a().a(str, 1);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    private void a(List<CampaignEx> list, String str) {
        try {
            new Thread(new a(list, str)).start();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private String a(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    JSONArray parseCamplistToJson = CampaignEx.parseCamplistToJson(list);
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("campaignList", parseCamplistToJson);
                    String jSONObject2 = jSONObject.toString();
                    if (!TextUtils.isEmpty(jSONObject2)) {
                        return Base64.encodeToString(jSONObject2.getBytes(), 2);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return "";
    }

    private int a(Context context) {
        return (context == null || !(context instanceof MBInterstitialActivity)) ? -1 : 1;
    }

    private String a() {
        try {
            Context context = this.f28262a;
            if (context != null && a(context) == 1) {
                try {
                    Context context2 = this.f28262a;
                    if (context2 != null && (context2 instanceof MBInterstitialActivity)) {
                        return ((MBInterstitialActivity) context2).mUnitid;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        return null;
    }

    private void a(String str, List<CampaignEx> list) {
        try {
            if (!TextUtils.isEmpty(str) && list != null && list.size() != 0) {
                for (int i10 = 0; i10 < list.size(); i10++) {
                    CampaignEx campaignEx = list.get(i10);
                    if (campaignEx != null) {
                        com.mbridge.msdk.foundation.same.buffer.b.a(str, campaignEx, Constants.PLACEMENT_TYPE_INTERSTITIAL);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
