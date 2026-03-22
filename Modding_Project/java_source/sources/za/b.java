package za;

import android.content.Context;
import android.text.TextUtils;
import com.huawei.hms.framework.common.AssetsUtil;
import com.huawei.hms.framework.common.Logger;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, b> f71547b = new ConcurrentHashMap(16);

    /* renamed from: c  reason: collision with root package name */
    private static final Object f71548c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private a f71549a;

    public b(Context context, boolean z10) {
        e(context, z10);
        f71547b.put(context.getPackageName(), this);
    }

    public static b d(String str) {
        return f71547b.get(str);
    }

    private void e(Context context, boolean z10) {
        long currentTimeMillis;
        String[] split;
        StringBuilder sb2;
        List<String> asList;
        long currentTimeMillis2 = System.currentTimeMillis();
        String a10 = db.c.a("grs_route_config_files_list.txt", context);
        Logger.i("LocalManagerProxy", "Io.getConfigContent timeCost:" + (System.currentTimeMillis() - currentTimeMillis2));
        Logger.i("LocalManagerProxy", "initLocalManager configFileListContent:" + a10);
        if (TextUtils.isEmpty(a10)) {
            Logger.i("LocalManagerProxy", "Get config files list by AssetsManager");
            currentTimeMillis = System.currentTimeMillis();
            split = AssetsUtil.list(context, GrsApp.getInstance().getBrand(""));
            sb2 = new StringBuilder();
        } else {
            currentTimeMillis = System.currentTimeMillis();
            Logger.i("LocalManagerProxy", "Get config files list use configFileListContent: " + a10);
            split = a10.split("#");
            sb2 = new StringBuilder();
        }
        sb2.append("list timeCost:");
        sb2.append(System.currentTimeMillis() - currentTimeMillis);
        Logger.i("LocalManagerProxy", sb2.toString());
        if (split == null) {
            asList = new ArrayList<>();
        } else {
            asList = Arrays.asList(split);
        }
        String appConfigName = GrsApp.getInstance().getAppConfigName();
        Logger.i("LocalManagerProxy", "appConfigName is: " + appConfigName);
        Logger.i("LocalManagerProxy", "contains APP_20_CONFIG_FILE_NAME: " + asList.contains("grs_app_global_route_config.json"));
        boolean z11 = false;
        this.f71549a = new d(false, z10);
        if (asList.contains("grs_app_global_route_config.json") || !TextUtils.isEmpty(appConfigName)) {
            this.f71549a = new d(context, appConfigName, z10);
        }
        if (!this.f71549a.n() && asList.contains("grs_sdk_global_route_config.json")) {
            this.f71549a = new c(context, z10);
        }
        this.f71549a.h(context, asList);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("on initLocalManager finish, check appGrs: ");
        if (this.f71549a.f71542a == null) {
            z11 = true;
        }
        sb3.append(z11);
        Logger.i("LocalManagerProxy", sb3.toString());
    }

    public gb.a a() {
        return this.f71549a.b();
    }

    public String b(Context context, ya.a aVar, GrsBaseInfo grsBaseInfo, String str, String str2, boolean z10) {
        String c10;
        synchronized (f71548c) {
            c10 = this.f71549a.c(context, aVar, grsBaseInfo, str, str2, z10);
        }
        return c10;
    }

    public Map<String, String> c(Context context, ya.a aVar, GrsBaseInfo grsBaseInfo, String str, boolean z10) {
        Map<String, String> f10;
        synchronized (f71548c) {
            f10 = this.f71549a.f(context, aVar, grsBaseInfo, str, z10);
        }
        return f10;
    }

    public Set<String> f() {
        return this.f71549a.k();
    }
}
