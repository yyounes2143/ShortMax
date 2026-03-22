package ib;

import android.content.Context;
import com.huawei.hms.api.Api;
import com.huawei.hms.api.HuaweiApiAvailability;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.support.api.entity.core.CoreNaming;
import com.huawei.hms.support.hianalytics.HiAnalyticsClient;
import com.huawei.hms.utils.Util;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SignInNoticeClientImpl.java */
/* loaded from: classes5.dex */
public class p0 extends HuaweiApi<a> {

    /* renamed from: p  reason: collision with root package name */
    private static final Api<a> f53379p = new Api<>(HuaweiApiAvailability.HMS_API_NAME_GAME);

    /* renamed from: q  reason: collision with root package name */
    private static final a f53380q = new a();

    /* renamed from: o  reason: collision with root package name */
    private Context f53381o;

    /* compiled from: SignInNoticeClientImpl.java */
    /* loaded from: classes5.dex */
    public static class a implements Api.ApiOptions.Optional {
    }

    public p0(Context context) {
        super(context, f53379p, f53380q, new o0());
        this.f53381o = context;
    }

    public void d() {
        t.b("SignInNoticeClientImpl", "request Jos Notice.", true);
        String reportEntry = HiAnalyticsClient.reportEntry(getContext(), CoreNaming.GETNOTICE, 60900100);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("noticeType", 1);
            jSONObject.put("hmsSdkVersionName", "6.12.0.300");
            jSONObject.put("cpId", Util.getCpId(this.f53381o));
            doWrite(new f(CoreNaming.GETNOTICE, jSONObject.toString(), reportEntry));
        } catch (JSONException unused) {
            t.c("SignInNoticeClientImpl", "createParams Notice request meet JSONException.", true);
        }
    }

    @Override // com.huawei.hms.common.HuaweiApi
    public int getApiLevel() {
        return 1;
    }
}
