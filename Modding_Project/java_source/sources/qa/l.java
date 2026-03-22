package qa;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.io.UnsupportedEncodingException;
/* loaded from: classes5.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final pa.b f65277a;

    public l(Context context, String str) {
        pa.b hVar;
        if (!TextUtils.isEmpty(a(context, str)) && Build.VERSION.SDK_INT >= 26) {
            hVar = new i(context, str);
        } else {
            hVar = new h(context, str);
        }
        this.f65277a = hVar;
    }

    private String a(Context context, String str) {
        String b10 = m.b(context, str, "agc_plugin_", "crypto");
        if (b10 != null) {
            try {
                return new String(a.b(b10), "utf-8");
            } catch (UnsupportedEncodingException | IllegalArgumentException e10) {
                Log.e("ReaderStrategy", "UnsupportedEncodingException" + e10.getMessage());
                return null;
            }
        }
        return null;
    }

    public String b(String str, String str2) {
        return this.f65277a.a(str, str2);
    }
}
