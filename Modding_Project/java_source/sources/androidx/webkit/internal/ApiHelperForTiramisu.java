package androidx.webkit.internal;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import androidx.annotation.RequiresApi;
@RequiresApi(33)
/* loaded from: classes2.dex */
public class ApiHelperForTiramisu {
    private ApiHelperForTiramisu() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ServiceInfo getServiceInfo(PackageManager packageManager, ComponentName componentName, PackageManager.ComponentInfoFlags componentInfoFlags) throws PackageManager.NameNotFoundException {
        ServiceInfo serviceInfo;
        serviceInfo = packageManager.getServiceInfo(componentName, componentInfoFlags);
        return serviceInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PackageManager.ComponentInfoFlags of(long j10) {
        PackageManager.ComponentInfoFlags of2;
        of2 = PackageManager.ComponentInfoFlags.of(j10);
        return of2;
    }
}
