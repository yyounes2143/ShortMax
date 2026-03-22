package ya;

import android.content.Context;
import android.content.pm.PackageManager;
import com.huawei.hms.framework.common.ContextHolder;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.common.PLSharedPreferences;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
public class c {

    /* renamed from: b  reason: collision with root package name */
    private static final String f70762b = "c";

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, PLSharedPreferences> f70763c = new ConcurrentHashMap(16);

    /* renamed from: a  reason: collision with root package name */
    private final PLSharedPreferences f70764a;

    public c(Context context, String str) {
        String packageName = context.getPackageName();
        Logger.d(f70762b, "get pkgname from context is{%s}", packageName);
        Map<String, PLSharedPreferences> map = f70763c;
        if (map.containsKey(str + packageName)) {
            this.f70764a = map.get(str + packageName);
        } else {
            PLSharedPreferences pLSharedPreferences = new PLSharedPreferences(context, str + packageName);
            this.f70764a = pLSharedPreferences;
            map.put(str + packageName, pLSharedPreferences);
        }
        c(context);
    }

    private void c(Context context) {
        String str = f70762b;
        Logger.i(str, "ContextHolder.getAppContext() from GRS is:" + ContextHolder.getAppContext());
        if (ContextHolder.getAppContext() != null) {
            context = ContextHolder.getAppContext();
        }
        try {
            String l10 = Long.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionCode);
            String a10 = a("version", "");
            if (!l10.equals(a10)) {
                Logger.i(str, "app version changed! old version{%s} and new version{%s}", a10, l10);
                e();
                f("version", l10);
            }
        } catch (PackageManager.NameNotFoundException unused) {
            Logger.w(f70762b, "get app version failed and catch NameNotFoundException");
        }
    }

    public String a(String str, String str2) {
        String string;
        PLSharedPreferences pLSharedPreferences = this.f70764a;
        if (pLSharedPreferences == null) {
            return str2;
        }
        synchronized (pLSharedPreferences) {
            string = this.f70764a.getString(str, str2);
        }
        return string;
    }

    public Map<String, ?> b() {
        Map<String, ?> all;
        PLSharedPreferences pLSharedPreferences = this.f70764a;
        if (pLSharedPreferences == null) {
            return new HashMap();
        }
        synchronized (pLSharedPreferences) {
            all = this.f70764a.getAll();
        }
        return all;
    }

    public void d(String str) {
        PLSharedPreferences pLSharedPreferences = this.f70764a;
        if (pLSharedPreferences == null) {
            return;
        }
        synchronized (pLSharedPreferences) {
            this.f70764a.remove(str);
        }
    }

    public void e() {
        PLSharedPreferences pLSharedPreferences = this.f70764a;
        if (pLSharedPreferences == null) {
            return;
        }
        synchronized (pLSharedPreferences) {
            this.f70764a.clear();
        }
    }

    public void f(String str, String str2) {
        PLSharedPreferences pLSharedPreferences = this.f70764a;
        if (pLSharedPreferences == null) {
            return;
        }
        synchronized (pLSharedPreferences) {
            this.f70764a.putString(str, str2);
        }
    }
}
