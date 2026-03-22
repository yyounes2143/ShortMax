package e;

import com.google.android.gms.ads.ResponseInfo;
import kotlin.text.StringsKt;
/* loaded from: classes.dex */
public abstract class d {
    public static String a(ResponseInfo responseInfo) {
        String mediationAdapterClassName;
        if (responseInfo != null && (mediationAdapterClassName = responseInfo.getMediationAdapterClassName()) != null) {
            try {
                if (StringsKt.Z(mediationAdapterClassName, "moloco", true)) {
                    return "Moloco";
                }
                if (StringsKt.Z(mediationAdapterClassName, "maticoo", true)) {
                    return "Maticoo";
                }
                if (StringsKt.Z(mediationAdapterClassName, "bluex", true)) {
                    return "BlueX";
                }
                return StringsKt.P(StringsKt.l1(mediationAdapterClassName, ".", null, 2, null), "Adapter", "", false, 4, null);
            } catch (Exception unused) {
                return "Unknown";
            }
        }
        return "";
    }
}
