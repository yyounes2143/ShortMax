package cm;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.appodeal.adsession.VerificationScriptResource;
import io.bidmachine.ads.networks.adaptiverendering.measurer.OMHtmlMeasurer;
import io.bidmachine.ads.networks.adaptiverendering.measurer.OMVideoMeasurer;
import io.bidmachine.rendering.measurer.HtmlMeasurer;
import io.bidmachine.rendering.measurer.VideoMeasurer;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import qq.b;
/* compiled from: AdMeasurerFactory.java */
/* loaded from: classes7.dex */
public class a implements b {
    @VisibleForTesting
    static void c(@NonNull List<VerificationScriptResource> list, @NonNull String str, @Nullable String str2, @Nullable String str3) {
        VerificationScriptResource createVerificationScriptResourceWithoutParameters;
        try {
            URL url = new URL(str);
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                createVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithParameters(str2, url, str3);
            } else {
                createVerificationScriptResourceWithoutParameters = VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url);
            }
            list.add(createVerificationScriptResourceWithoutParameters);
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
        }
    }

    @Nullable
    @VisibleForTesting
    static Float d(@NonNull Map<String, String> map) {
        String str = map.get("skip_offset");
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Float.valueOf(((float) Long.parseLong(str)) / 1000.0f);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    @VisibleForTesting
    static List<VerificationScriptResource> e(@NonNull Map<String, String> map) {
        String str = map.get("verifications");
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() == 0) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                if (optJSONObject != null) {
                    c(arrayList, optJSONObject.optString("java_script_resource_url"), optJSONObject.optString("vendor"), optJSONObject.optString("verification_parameters"));
                }
            }
            return arrayList;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // qq.b
    @Nullable
    public VideoMeasurer a(@NonNull Context context, @NonNull String str, @Nullable Map<String, String> map) {
        List<VerificationScriptResource> e10;
        if (!str.equalsIgnoreCase("om") || !ym.a.g() || map == null || map.isEmpty() || (e10 = e(map)) == null || e10.isEmpty()) {
            return null;
        }
        return new OMVideoMeasurer(e10, d(map));
    }

    @Override // qq.b
    @Nullable
    public HtmlMeasurer b(@NonNull Context context, @NonNull String str, @Nullable Map<String, String> map) {
        if (str.equalsIgnoreCase("om") && ym.a.g()) {
            return new OMHtmlMeasurer();
        }
        return null;
    }
}
