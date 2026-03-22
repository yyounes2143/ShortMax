package um;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import tm.d;
/* loaded from: classes7.dex */
public class a implements b {
    @Override // um.b
    @Nullable
    public String a(@Nullable String str, @Nullable Bundle bundle) {
        int i10;
        if (!TextUtils.isEmpty(str) && bundle != null && bundle.containsKey("params_error_code") && (i10 = bundle.getInt("params_error_code", -1)) > -1) {
            d.a("VastAdUrlProcessor", "Before prepare url: %s", str);
            if (str.contains("[ERRORCODE]")) {
                str = str.replace("[ERRORCODE]", String.valueOf(i10));
            }
            if (str.contains("%5BERRORCODE%5D")) {
                str = str.replace("%5BERRORCODE%5D", String.valueOf(i10));
            }
            d.a("VastAdUrlProcessor", "After prepare url: %s", str);
        }
        return str;
    }
}
