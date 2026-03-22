package ib;

import android.app.Activity;
import android.content.Context;
import com.huawei.hms.adapter.AvailableAdapter;
/* compiled from: HmsAPKVersionCheckUtil.java */
/* loaded from: classes5.dex */
public class j0 {
    public static int a() {
        return 30000000;
    }

    public static void b(Activity activity, AvailableAdapter.AvailableCallBack availableCallBack) {
        t.b("HmsAPKVersionCheckUtil", "====== HMSSDK version: 61200300 ======", true);
        Context applicationContext = activity.getApplicationContext();
        int a10 = a();
        t.b("HmsAPKVersionCheckUtil", "check minVersion:" + a10, true);
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
