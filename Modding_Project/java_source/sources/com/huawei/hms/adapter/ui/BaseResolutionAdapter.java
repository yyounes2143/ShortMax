package com.huawei.hms.adapter.ui;

import android.app.Activity;
import android.content.Intent;
import android.view.KeyEvent;
import com.huawei.hms.activity.IBridgeActivityDelegate;
import com.huawei.hms.adapter.internal.CommonCode;
import com.huawei.hms.adapter.sysobs.SystemManager;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.huawei.hms.support.hianalytics.HiAnalyticsUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.kpms.KpmsConstant;
import com.huawei.hms.utils.RegionUtils;
import com.huawei.hms.utils.ResolutionFlagUtil;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes5.dex */
public class BaseResolutionAdapter implements IBridgeActivityDelegate {

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Activity> f21849a;

    /* renamed from: b  reason: collision with root package name */
    private String f21850b = "";

    /* renamed from: c  reason: collision with root package name */
    private long f21851c = 0;

    private void a(long j10) {
        if (!RegionUtils.isChinaROM(d())) {
            HMSLog.i("BaseResolutionAdapter", "not ChinaROM");
            return;
        }
        Activity d10 = d();
        if (d10 != null && !d10.isFinishing()) {
            HashMap hashMap = new HashMap();
            hashMap.put("package", d10.getPackageName());
            hashMap.put(CommonCode.MapKey.RESOLUTION_FLAG, this.f21851c + "-" + j10);
            HiAnalyticsUtils.getInstance().onEvent(d10, HiAnalyticsConstant.HMS_SDK_BASE_START_RESOLUTION, hashMap);
            HMSLog.e("BaseResolutionAdapter", "check resolution flag failed, transactionId: " + this.f21850b + ", carriedTimeStamp: " + this.f21851c + ", savedTimeStamp: " + j10);
        }
    }

    private boolean b() {
        long resolutionFlag = ResolutionFlagUtil.getInstance().getResolutionFlag(this.f21850b);
        ResolutionFlagUtil.getInstance().removeResolutionFlag(this.f21850b);
        if (resolutionFlag != 0 && resolutionFlag == this.f21851c) {
            return true;
        }
        a(resolutionFlag);
        return false;
    }

    private void c() {
        Activity d10 = d();
        if (d10 != null && !d10.isFinishing()) {
            d10.finish();
        }
    }

    private Activity d() {
        WeakReference<Activity> weakReference = this.f21849a;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    private void e() {
        SystemManager.getInstance().notifyResolutionResult(null, this.f21850b);
        c();
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public int getRequestCode() {
        return 1001;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x006b  */
    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onBridgeActivityCreate(android.app.Activity r10) {
        /*
            r9 = this;
            java.lang.String r0 = "BaseResolutionAdapter"
            if (r10 != 0) goto Ld
            java.lang.String r10 = "activity is null"
            com.huawei.hms.support.log.HMSLog.e(r0, r10)
            r9.e()
            return
        Ld:
            boolean r1 = r10.isFinishing()
            if (r1 == 0) goto L19
            java.lang.String r10 = "activity is finishing"
            com.huawei.hms.support.log.HMSLog.e(r0, r10)
            return
        L19:
            java.lang.ref.WeakReference r1 = new java.lang.ref.WeakReference
            r1.<init>(r10)
            r9.f21849a = r1
            android.content.Intent r1 = r10.getIntent()
            if (r1 != 0) goto L2a
            r9.e()
            return
        L2a:
            android.os.Bundle r2 = r1.getExtras()     // Catch: java.lang.Throwable -> L43
            java.lang.String r3 = "transaction_id"
            java.lang.String r3 = r1.getStringExtra(r3)     // Catch: java.lang.Throwable -> L41
            r9.f21850b = r3     // Catch: java.lang.Throwable -> L41
            java.lang.String r3 = "resolution_flag"
            r4 = 0
            long r3 = r1.getLongExtra(r3, r4)     // Catch: java.lang.Throwable -> L41
            r9.f21851c = r3     // Catch: java.lang.Throwable -> L41
            goto L61
        L41:
            r1 = move-exception
            goto L45
        L43:
            r1 = move-exception
            r2 = 0
        L45:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "get transaction_id or resolution_flag exception:"
            r3.append(r4)
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            com.huawei.hms.support.log.HMSLog.e(r0, r1)
        L61:
            boolean r1 = r9.b()
            if (r1 != 0) goto L6b
            r9.e()
            return
        L6b:
            java.lang.String r1 = r9.f21850b
            if (r1 == 0) goto L83
            int r1 = android.os.Build.VERSION.SDK_INT
            r3 = 29
            if (r1 < r3) goto L83
            java.lang.String r1 = "remove apk resolution failed task."
            com.huawei.hms.support.log.HMSLog.i(r0, r1)
            com.huawei.hms.adapter.sysobs.ApkResolutionFailedManager r1 = com.huawei.hms.adapter.sysobs.ApkResolutionFailedManager.getInstance()
            java.lang.String r3 = r9.f21850b
            r1.removeTask(r3)
        L83:
            if (r2 != 0) goto L89
            r9.e()
            return
        L89:
            java.lang.String r1 = "resolution"
            android.os.Parcelable r1 = r2.getParcelable(r1)
            if (r1 != 0) goto L95
            r9.e()
            return
        L95:
            boolean r2 = r1 instanceof android.content.Intent
            if (r2 == 0) goto Lae
            android.content.Intent r1 = (android.content.Intent) r1     // Catch: java.lang.Throwable -> La5
            android.content.Intent r1 = com.huawei.hms.utils.IntentUtil.modifyIntentBehaviorsSafe(r1)     // Catch: java.lang.Throwable -> La5
            r2 = 1001(0x3e9, float:1.403E-42)
            r10.startActivityForResult(r1, r2)     // Catch: java.lang.Throwable -> La5
            goto Lcb
        La5:
            r9.e()
            java.lang.String r10 = "ActivityNotFoundException:exception"
            com.huawei.hms.support.log.HMSLog.e(r0, r10)
            goto Lcb
        Lae:
            boolean r2 = r1 instanceof android.app.PendingIntent
            if (r2 == 0) goto Lcb
            android.app.PendingIntent r1 = (android.app.PendingIntent) r1     // Catch: android.content.IntentSender.SendIntentException -> Lc3
            android.content.IntentSender r3 = r1.getIntentSender()     // Catch: android.content.IntentSender.SendIntentException -> Lc3
            r7 = 0
            r8 = 0
            r4 = 1001(0x3e9, float:1.403E-42)
            r5 = 0
            r6 = 0
            r2 = r10
            r2.startIntentSenderForResult(r3, r4, r5, r6, r7, r8)     // Catch: android.content.IntentSender.SendIntentException -> Lc3
            goto Lcb
        Lc3:
            r9.e()
            java.lang.String r10 = "SendIntentException:exception"
            com.huawei.hms.support.log.HMSLog.e(r0, r10)
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.adapter.ui.BaseResolutionAdapter.onBridgeActivityCreate(android.app.Activity):void");
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeActivityDestroy() {
        HMSLog.i("BaseResolutionAdapter", "onBridgeActivityDestroy");
        this.f21849a = null;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public boolean onBridgeActivityResult(int i10, int i11, Intent intent) {
        if (i10 != getRequestCode()) {
            return false;
        }
        HMSLog.i("BaseResolutionAdapter", "onBridgeActivityResult, resultCode: " + i11);
        if (i11 == 1001 || i11 == 1002) {
            if (intent == null) {
                intent = new Intent();
            }
            intent.putExtra(CommonCode.MapKey.PRIVACY_STATEMENT_CONFIRM_RESULT, i11);
        }
        if (i11 != -1 && !intent.hasExtra(KpmsConstant.KIT_UPDATE_RESULT) && !intent.hasExtra(CommonCode.MapKey.PRIVACY_STATEMENT_CONFIRM_RESULT)) {
            SystemManager.getInstance().notifyResolutionResult(null, this.f21850b);
        } else {
            SystemManager.getInstance().notifyResolutionResult(intent, this.f21850b);
        }
        c();
        return true;
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onBridgeConfigurationChanged() {
        HMSLog.i("BaseResolutionAdapter", "onBridgeConfigurationChanged");
    }

    @Override // com.huawei.hms.activity.IBridgeActivityDelegate
    public void onKeyUp(int i10, KeyEvent keyEvent) {
        HMSLog.i("BaseResolutionAdapter", "On key up when resolve conn error");
    }
}
