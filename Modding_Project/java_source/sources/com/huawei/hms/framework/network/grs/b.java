package com.huawei.hms.framework.network.grs;

import android.content.Context;
import com.huawei.hms.framework.common.Logger;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, a> f22182a = new ConcurrentHashMap(16);

    /* renamed from: b  reason: collision with root package name */
    private static final Object f22183b = new Object();

    public static a a(GrsBaseInfo grsBaseInfo, Context context) {
        synchronized (f22183b) {
            try {
                int uniqueCode = grsBaseInfo.uniqueCode();
                Map<String, a> map = f22182a;
                a aVar = map.get(context.getPackageName() + uniqueCode);
                if (aVar != null) {
                    if (aVar.o(new a(grsBaseInfo))) {
                        return aVar;
                    }
                    Logger.i("GrsClientManager", "The app_name, ser_country, reg_country and issue_country is equal, but other not.");
                    a aVar2 = new a(context, grsBaseInfo);
                    map.put(context.getPackageName() + uniqueCode, aVar2);
                    return aVar2;
                }
                Logger.i("GrsClientManager", "grsClientImpl == null, and new GrsClientImpl");
                a aVar3 = new a(context, grsBaseInfo);
                map.put(context.getPackageName() + uniqueCode, aVar3);
                return aVar3;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
