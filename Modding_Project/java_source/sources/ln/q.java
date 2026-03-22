package ln;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.drm.WidevineUtil;
import io.bidmachine.media3.exoplayer.drm.DrmSession;
import java.util.Map;
/* compiled from: WidevineUtil.java */
/* loaded from: classes8.dex */
public final class q {
    private static long a(Map<String, String> map, String str) {
        if (map != null) {
            try {
                String str2 = map.get(str);
                if (str2 != null) {
                    return Long.parseLong(str2);
                }
                return -9223372036854775807L;
            } catch (NumberFormatException unused) {
                return -9223372036854775807L;
            }
        }
        return -9223372036854775807L;
    }

    @Nullable
    public static Pair<Long, Long> b(DrmSession drmSession) {
        Map<String, String> queryKeyStatus = drmSession.queryKeyStatus();
        if (queryKeyStatus == null) {
            return null;
        }
        return new Pair<>(Long.valueOf(a(queryKeyStatus, WidevineUtil.PROPERTY_LICENSE_DURATION_REMAINING)), Long.valueOf(a(queryKeyStatus, WidevineUtil.PROPERTY_PLAYBACK_DURATION_REMAINING)));
    }
}
