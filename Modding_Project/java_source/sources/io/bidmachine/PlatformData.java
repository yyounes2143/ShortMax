package io.bidmachine;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.XmlResourceParser;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
/* loaded from: classes7.dex */
public final class PlatformData {
    @Nullable
    private static volatile PlatformData instance;
    @NonNull
    private final Context context;
    @Nullable
    final String kotlinVersion = getKotlinVersion();
    @Nullable
    private Integer minSdkVersion;

    private PlatformData(@NonNull Context context) {
        this.context = context.getApplicationContext();
    }

    @NonNull
    public static PlatformData get(@NonNull Context context) {
        PlatformData platformData = instance;
        if (platformData == null) {
            synchronized (PlatformData.class) {
                try {
                    platformData = instance;
                    if (platformData == null) {
                        platformData = new PlatformData(context);
                        instance = platformData;
                    }
                } finally {
                }
            }
        }
        return platformData;
    }

    @Nullable
    private String getKotlinVersion() {
        try {
            return ms.g.f62627f.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    @RequiresApi(api = 24)
    private Integer getMinSdkVersionFromApplicationInfo(@NonNull Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo;
            if (applicationInfo != null) {
                return Integer.valueOf(applicationInfo.minSdkVersion);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    private Integer getMinSdkVersionFromManifest(@NonNull Context context) {
        Integer num = null;
        try {
            XmlResourceParser openXmlResourceParser = context.getAssets().openXmlResourceParser("AndroidManifest.xml");
            for (int eventType = openXmlResourceParser.getEventType(); eventType != 1; eventType = openXmlResourceParser.next()) {
                if (eventType == 2 && "uses-sdk".equals(openXmlResourceParser.getName())) {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= openXmlResourceParser.getAttributeCount()) {
                            break;
                        } else if ("minSdkVersion".equals(openXmlResourceParser.getAttributeName(i10))) {
                            num = Integer.valueOf(Integer.parseInt(openXmlResourceParser.getAttributeValue(i10)));
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
            }
            openXmlResourceParser.close();
        } catch (Exception unused) {
        }
        return num;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public Integer getMinSdkVersion() {
        Integer num = this.minSdkVersion;
        if (num != null) {
            return num;
        }
        Integer minSdkVersionFromApplicationInfo = getMinSdkVersionFromApplicationInfo(this.context);
        this.minSdkVersion = minSdkVersionFromApplicationInfo;
        if (minSdkVersionFromApplicationInfo == null) {
            this.minSdkVersion = getMinSdkVersionFromManifest(this.context);
        }
        return this.minSdkVersion;
    }
}
