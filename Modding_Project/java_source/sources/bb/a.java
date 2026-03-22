package bb;

import android.content.Context;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import cb.d;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.StringUtils;
import com.huawei.hms.framework.network.grs.GrsApp;
import db.c;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2589a = "a";

    /* renamed from: b  reason: collision with root package name */
    private static d f2590b;

    /* renamed from: c  reason: collision with root package name */
    private static final Object f2591c = new Object();

    public static synchronized d a(Context context) {
        synchronized (a.class) {
            synchronized (f2591c) {
                d dVar = f2590b;
                if (dVar != null) {
                    return dVar;
                }
                String a10 = c.a(GrsApp.getInstance().getBrand(DomExceptionUtils.SEPARATOR) + "grs_sdk_server_config.json", context);
                ArrayList arrayList = null;
                if (TextUtils.isEmpty(a10)) {
                    return null;
                }
                try {
                    JSONObject jSONObject = new JSONObject(a10).getJSONObject("grs_server");
                    JSONArray jSONArray = jSONObject.getJSONArray("grs_base_url");
                    if (jSONArray != null && jSONArray.length() > 0) {
                        arrayList = new ArrayList();
                        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                            arrayList.add(jSONArray.get(i10).toString());
                        }
                    }
                    d dVar2 = new d();
                    f2590b = dVar2;
                    dVar2.d(arrayList);
                    f2590b.c(jSONObject.getString("grs_query_endpoint_2.0"));
                    f2590b.b(jSONObject.getInt("grs_query_timeout"));
                } catch (JSONException e10) {
                    Logger.w(f2589a, "getGrsServerBean catch JSONException: %s", StringUtils.anonymizeMessage(e10.getMessage()));
                }
                return f2590b;
            }
        }
    }
}
