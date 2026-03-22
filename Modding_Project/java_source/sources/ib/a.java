package ib;

import android.app.Activity;
import android.content.Context;
import com.huawei.hms.adapter.AvailableAdapter;
/* compiled from: HmsAccountKitVersionCheckUtil.java */
/* loaded from: classes5.dex */
public class a {
    public static int a() {
        return 40004000;
    }

    public static void b(Activity activity, AvailableAdapter.AvailableCallBack availableCallBack) {
        t.b("HmsAccountKitVersionCheckUtil", "====== HMSSDK version: 61200300 ======", true);
        Context applicationContext = activity.getApplicationContext();
        int a10 = a();
        t.b("HmsAccountKitVersionCheckUtil", "check minVersion:" + a10, true);
        AvailableAdapter availableAdapter = new AvailableAdapter(a10);
        int isHuaweiMobileServicesAvailable = availableAdapter.isHuaweiMobileServicesAvailable(applicationContext);
        if (isHuaweiMobileServicesAvailable == 0) {
            availableCallBack.onComplete(isHuaweiMobileServicesAvailable);
        } else if (availableAdapter.isUserResolvableError(isHuaweiMobileServicesAvailable)) {
            availableAdapter.startResolution(activity, availableCallBack);
        } else {
            availableCallBack.onComplete(isHuaweiMobileServicesAvailable);
        }
    }
}
