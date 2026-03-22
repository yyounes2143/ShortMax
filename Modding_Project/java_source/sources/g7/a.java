package g7;

import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.play:review@@2.0.2 */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final Map f52215a;

    /* renamed from: b  reason: collision with root package name */
    private static final Map f52216b;

    static {
        HashMap hashMap = new HashMap();
        f52215a = hashMap;
        HashMap hashMap2 = new HashMap();
        f52216b = hashMap2;
        hashMap.put(-1, "The Play Store app is either not installed or not the official version.");
        hashMap.put(-2, "Call first requestReviewFlow to get the ReviewInfo.");
        hashMap.put(-100, "Retry with an exponential backoff. Consider filing a bug if fails consistently.");
        hashMap2.put(-1, "PLAY_STORE_NOT_FOUND");
        hashMap2.put(-2, "INVALID_REQUEST");
        hashMap2.put(-100, "INTERNAL_ERROR");
    }

    public static String a(int i10) {
        Map map = f52215a;
        Integer valueOf = Integer.valueOf(i10);
        if (!map.containsKey(valueOf)) {
            return "";
        }
        return ((String) map.get(valueOf)) + " (https://developer.android.com/reference/com/google/android/play/core/review/model/ReviewErrorCode.html#" + ((String) f52216b.get(valueOf)) + ")";
    }
}
