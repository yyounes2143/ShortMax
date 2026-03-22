package rm;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.mraid.MraidWebView;
import io.bidmachine.iab.mraid.h;
import io.bidmachine.iab.mraid.o;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes7.dex */
public class b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final List<a> f65904a = new CopyOnWriteArrayList();

    @Nullable
    private static a a(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (a aVar : f65904a) {
            if (aVar.a(str)) {
                return aVar;
            }
        }
        return null;
    }

    public static boolean b(@NonNull a aVar) {
        List<a> list = f65904a;
        if (!list.contains(aVar) && list.add(aVar)) {
            return true;
        }
        return false;
    }

    public static void c(@Nullable MraidWebView mraidWebView, @NonNull String str) {
        Map<String, String> q10;
        h.c("JsBridgeHandler", "handleJsCommand - %s", str);
        try {
            a a10 = a(str);
            if (a10 == null || (q10 = o.q(str, a10.c())) == null) {
                return;
            }
            String str2 = q10.get("command");
            if (str2 == null) {
                h.h("JsBridgeHandler", "handleJsCommand not found", new Object[0]);
            } else {
                a10.b(mraidWebView, str2, q10);
            }
        } catch (Throwable th2) {
            h.e("JsBridgeHandler", th2);
        }
    }

    public static boolean d(@Nullable String str) {
        if (a(str) != null) {
            return true;
        }
        return false;
    }

    @NonNull
    public static String e() {
        StringBuilder sb2 = new StringBuilder();
        for (a aVar : f65904a) {
            sb2.append("<script type='application/javascript'>");
            sb2.append(aVar.getJs());
            sb2.append("</script>");
        }
        return sb2.toString();
    }
}
