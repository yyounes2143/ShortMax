package ab;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.mbridge.msdk.MBridgeConstans;
import org.json.JSONException;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f332a;

    /* renamed from: b  reason: collision with root package name */
    private final GrsBaseInfo f333b;

    /* renamed from: c  reason: collision with root package name */
    private final ya.a f334c;

    public b(Context context, ya.a aVar, GrsBaseInfo grsBaseInfo) {
        this.f332a = context;
        this.f333b = grsBaseInfo;
        this.f334c = aVar;
    }

    public String a(boolean z10) {
        String str;
        String str2 = xa.a.g(this.f334c.b().a("geoipCountryCode", ""), "geoip.countrycode").get("ROOT");
        Logger.i("GeoipCountry", "geoIpCountry is: " + str2);
        String a10 = this.f334c.b().a("geoipCountryCodetime", MBridgeConstans.ENDCARD_URL_TYPE_PL);
        long j10 = 0;
        if (!TextUtils.isEmpty(a10) && a10.matches("\\d+")) {
            try {
                j10 = Long.parseLong(a10);
            } catch (NumberFormatException e10) {
                Logger.w("GeoipCountry", "convert urlParamKey from String to Long catch NumberFormatException.", e10);
            }
        }
        if (TextUtils.isEmpty(str2) || db.e.a(Long.valueOf(j10))) {
            cb.c cVar = new cb.c(this.f333b, this.f332a);
            cVar.b("geoip.countrycode");
            ya.c i10 = this.f334c.i();
            if (i10 != null) {
                try {
                    str = h.a(i10.a("services", ""), cVar.d());
                } catch (JSONException e11) {
                    Logger.w("GeoipCountry", "getGeoipCountry merge services occure jsonException. %s", StringUtils.anonymizeMessage(e11.getMessage()));
                    str = null;
                }
                if (!TextUtils.isEmpty(str)) {
                    i10.f("services", str);
                }
            }
            if (z10) {
                d a11 = this.f334c.g().a(cVar, "geoip.countrycode", i10, -1);
                if (a11 != null) {
                    str2 = xa.a.g(a11.y(), "geoip.countrycode").get("ROOT");
                }
                Logger.i("GeoipCountry", "sync request to query geoip.countrycode is:" + str2);
            } else {
                Logger.i("GeoipCountry", "async request to query geoip.countrycode");
                this.f334c.g().f(cVar, null, "geoip.countrycode", i10, -1);
            }
        }
        return str2;
    }
}
