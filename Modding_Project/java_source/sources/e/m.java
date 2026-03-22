package e;

import com.applovin.sdk.AppLovinMediationProvider;
import java.util.Comparator;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class m implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ps.a.a(Double.valueOf(((JSONObject) obj2).getDouble(AppLovinMediationProvider.MAX)), Double.valueOf(((JSONObject) obj).getDouble(AppLovinMediationProvider.MAX)));
    }
}
