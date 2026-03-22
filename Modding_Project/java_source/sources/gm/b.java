package gm;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import io.bidmachine.ads.networks.gam.j;
import io.bidmachine.ads.networks.gam.t;
import java.util.Map;
/* loaded from: classes7.dex */
class b {
    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static AdManagerAdRequest a(@NonNull j jVar, @NonNull t tVar) {
        AdManagerAdRequest.Builder builder = new AdManagerAdRequest.Builder();
        String m10 = jVar.m();
        if (!TextUtils.isEmpty(m10)) {
            builder.setRequestAgent(m10);
        }
        for (Map.Entry<String, String> entry : tVar.b().entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                builder.addCustomTargeting(key, value);
            }
        }
        return builder.build();
    }
}
