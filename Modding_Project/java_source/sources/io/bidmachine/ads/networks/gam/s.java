package io.bidmachine.ads.networks.gam;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdsFormat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: GAMTypeConfigFactory.java */
/* loaded from: classes7.dex */
public class s {
    @Nullable
    public static r a(@NonNull JSONObject jSONObject) {
        try {
            AdsFormat byRemoteName = AdsFormat.byRemoteName(jSONObject.getString("format"));
            if (byRemoteName == null) {
                return null;
            }
            String string = jSONObject.getString("ad_unit_id");
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("units");
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                arrayList.add(u.c(string, jSONArray.getJSONObject(i10)));
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new r(byRemoteName, arrayList, jSONObject.optInt("cache_size", 2));
        } catch (Throwable unused) {
            return null;
        }
    }
}
