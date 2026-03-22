package com.bytedance.dr.impl;

import android.content.Context;
import com.bytedance.bdtracker.u4;
import com.bytedance.dr.OaidApi;
import com.huawei.hms.common.PackageConstants;
/* loaded from: classes3.dex */
public final class b implements OaidApi {

    /* renamed from: a  reason: collision with root package name */
    public String f12550a;

    /* loaded from: classes3.dex */
    public static class a extends OaidApi.a {

        /* renamed from: c  reason: collision with root package name */
        public long f12551c = 0;
    }

    @Override // com.bytedance.dr.OaidApi
    public String getName() {
        return "Huawei";
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00ad  */
    @Override // com.bytedance.dr.OaidApi
    @androidx.annotation.Nullable
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.dr.OaidApi.a getOaid(@androidx.annotation.NonNull android.content.Context r11) {
        /*
            r10 = this;
            com.bytedance.dr.impl.b$a r0 = new com.bytedance.dr.impl.b$a
            r0.<init>()
            r1 = 1
            r2 = 0
            android.content.ContentResolver r3 = r11.getContentResolver()     // Catch: java.lang.Throwable -> L32
            java.lang.String r4 = "pps_oaid"
            java.lang.String r3 = android.provider.Settings.Global.getString(r3, r4)     // Catch: java.lang.Throwable -> L32
            android.content.ContentResolver r4 = r11.getContentResolver()     // Catch: java.lang.Throwable -> L32
            java.lang.String r5 = "pps_track_limit"
            java.lang.String r4 = android.provider.Settings.Global.getString(r4, r5)     // Catch: java.lang.Throwable -> L32
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L32
            if (r5 != 0) goto L3e
            r0.f12547a = r3     // Catch: java.lang.Throwable -> L32
            boolean r3 = java.lang.Boolean.parseBoolean(r4)     // Catch: java.lang.Throwable -> L32
            r0.f12548b = r3     // Catch: java.lang.Throwable -> L32
            r3 = 202003021704(0x2f08517f88, double:9.980275338E-313)
            r0.f12551c = r3     // Catch: java.lang.Throwable -> L32
            goto Ld7
        L32:
            r3 = move-exception
            com.bytedance.applog.log.IAppLogLogger r4 = com.bytedance.applog.log.LoggerImpl.global()
            java.lang.Object[] r5 = new java.lang.Object[r2]
            java.lang.String r6 = "getOaid failed"
            r4.error(r1, r6, r3, r5)
        L3e:
            java.lang.String r3 = r10.f12550a
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            r4 = 0
            if (r3 == 0) goto L48
            goto Lab
        L48:
            android.content.Intent r3 = new android.content.Intent
            java.lang.String r5 = "com.uodis.opendevice.OPENIDS_SERVICE"
            r3.<init>(r5)
            java.lang.String r5 = r10.f12550a
            android.content.Intent r3 = r3.setPackage(r5)
            com.bytedance.bdtracker.n5 r5 = new com.bytedance.bdtracker.n5
            com.bytedance.dr.impl.a r6 = new com.bytedance.dr.impl.a
            r6.<init>(r10)
            r5.<init>(r11, r3, r6)
            android.os.Looper r3 = android.os.Looper.getMainLooper()
            android.os.Looper r6 = android.os.Looper.myLooper()
            if (r3 != r6) goto L75
            com.bytedance.applog.log.IAppLogLogger r3 = com.bytedance.applog.log.LoggerImpl.global()
            java.lang.Object[] r5 = new java.lang.Object[r2]
            java.lang.String r6 = "can't run in ui thread"
            r3.warn(r1, r6, r5)
            goto La9
        L75:
            com.bytedance.bdtracker.n5$a r3 = new com.bytedance.bdtracker.n5$a     // Catch: java.lang.Throwable -> L9a
            java.util.concurrent.CountDownLatch r6 = r5.f12264a     // Catch: java.lang.Throwable -> L9a
            com.bytedance.bdtracker.n5$b<SERVICE, RESULT> r7 = r5.f12266c     // Catch: java.lang.Throwable -> L9a
            r3.<init>(r5, r6, r7)     // Catch: java.lang.Throwable -> L9a
            android.content.Context r6 = r5.f12267d     // Catch: java.lang.Throwable -> L9a
            android.content.Intent r7 = r5.f12265b     // Catch: java.lang.Throwable -> L9a
            r6.bindService(r7, r3, r1)     // Catch: java.lang.Throwable -> L9a
            java.util.concurrent.CountDownLatch r6 = r5.f12264a     // Catch: java.lang.Throwable -> L9a
            r6.await()     // Catch: java.lang.Throwable -> L9a
            com.bytedance.bdtracker.n5$b<SERVICE, RESULT> r6 = r5.f12266c     // Catch: java.lang.Throwable -> L98
            SERVICE r7 = r3.f12270c     // Catch: java.lang.Throwable -> L98
            com.bytedance.dr.impl.a r6 = (com.bytedance.dr.impl.a) r6
            java.lang.Object r4 = r6.a(r7)     // Catch: java.lang.Throwable -> L98
        L94:
            r5.a(r3)
            goto La9
        L98:
            r6 = move-exception
            goto L9d
        L9a:
            r3 = move-exception
            r6 = r3
            r3 = r4
        L9d:
            com.bytedance.applog.log.IAppLogLogger r7 = com.bytedance.applog.log.LoggerImpl.global()     // Catch: java.lang.Throwable -> Ld8
            java.lang.String r8 = "blockFetchResult failed"
            java.lang.Object[] r9 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Ld8
            r7.error(r1, r8, r6, r9)     // Catch: java.lang.Throwable -> Ld8
            goto L94
        La9:
            android.util.Pair r4 = (android.util.Pair) r4
        Lab:
            if (r4 == 0) goto Ld7
            java.lang.Object r3 = r4.first
            java.lang.String r3 = (java.lang.String) r3
            r0.f12547a = r3
            java.lang.Object r3 = r4.second
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            r0.f12548b = r3
            java.lang.String r3 = r10.f12550a
            android.content.pm.PackageInfo r11 = com.bytedance.bdtracker.u4.a(r11, r3, r2)     // Catch: java.lang.Throwable -> Lc8
            if (r11 == 0) goto Ld4
            int r2 = r11.versionCode     // Catch: java.lang.Throwable -> Lc8
            goto Ld4
        Lc8:
            r11 = move-exception
            com.bytedance.applog.log.IAppLogLogger r3 = com.bytedance.applog.log.LoggerImpl.global()
            java.lang.Object[] r4 = new java.lang.Object[r2]
            java.lang.String r5 = "getHwIdVersionCode failed"
            r3.error(r1, r5, r11, r4)
        Ld4:
            long r1 = (long) r2
            r0.f12551c = r1
        Ld7:
            return r0
        Ld8:
            r11 = move-exception
            r5.a(r3)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.dr.impl.b.getOaid(android.content.Context):com.bytedance.dr.OaidApi$a");
    }

    @Override // com.bytedance.dr.OaidApi
    public boolean support(Context context) {
        if (context == null) {
            return false;
        }
        String str = "com.huawei.hwid";
        if (!u4.a(context, "com.huawei.hwid")) {
            str = "com.huawei.hwid.tv";
            if (!u4.a(context, "com.huawei.hwid.tv")) {
                this.f12550a = PackageConstants.SERVICES_PACKAGE_ALL_SCENE;
                return u4.a(context, PackageConstants.SERVICES_PACKAGE_ALL_SCENE);
            }
        }
        this.f12550a = str;
        return true;
    }
}
