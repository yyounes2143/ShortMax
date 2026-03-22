package com.huawei.hms.api;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Fragment;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.text.TextUtils;
import com.huawei.hms.activity.BridgeActivity;
import com.huawei.hms.activity.EnableServiceActivity;
import com.huawei.hms.activity.ForegroundIntentBuilder;
import com.huawei.hms.activity.internal.BusResponseCallback;
import com.huawei.hms.activity.internal.BusResponseResult;
import com.huawei.hms.adapter.AvailableUtil;
import com.huawei.hms.adapter.ui.UpdateAdapter;
import com.huawei.hms.common.ErrorDialogFragment;
import com.huawei.hms.common.HuaweiApi;
import com.huawei.hms.common.api.AvailabilityException;
import com.huawei.hms.common.api.HuaweiApiCallable;
import com.huawei.hms.common.internal.ConnectionErrorMessages;
import com.huawei.hms.common.internal.DialogRedirect;
import com.huawei.hms.common.internal.Preconditions;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.update.note.AppSpoofResolution;
import com.huawei.hms.update.note.DoNothingResolution;
import com.huawei.hms.update.note.NotInstalledHmsResolution;
import com.huawei.hms.update.ui.UpdateBean;
import com.huawei.hms.utils.Checker;
import com.huawei.hms.utils.HMSPackageManager;
import com.huawei.hms.utils.PackageManagerHelper;
import com.huawei.hms.utils.ResourceLoaderUtil;
import com.huawei.hms.utils.UIUtil;
import com.huawei.hms.utils.Util;
import ua.f;
import ua.g;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HuaweiApiAvailabilityImpl.java */
/* loaded from: classes5.dex */
public final class b extends HuaweiApiAvailability {

    /* renamed from: a  reason: collision with root package name */
    private static final b f21914a = new b();

    /* compiled from: HuaweiApiAvailabilityImpl.java */
    /* loaded from: classes5.dex */
    class a implements BusResponseCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g[] f21915a;

        a(g[] gVarArr) {
            this.f21915a = gVarArr;
        }

        @Override // com.huawei.hms.activity.internal.BusResponseCallback
        public BusResponseResult innerError(Activity activity, int i10, String str) {
            HMSLog.e("HuaweiApiAvailabilityImpl", "Test foreground bus error: resultCode " + i10 + ", errMessage" + str);
            this.f21915a[0].b(new AvailabilityException());
            return null;
        }

        @Override // com.huawei.hms.activity.internal.BusResponseCallback
        public BusResponseResult succeedReturn(Activity activity, int i10, Intent intent) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "Test foreground bus success: resultCode " + i10 + ", data" + intent);
            return null;
        }
    }

    private b() {
    }

    private static Dialog a(Activity activity, int i10, DialogRedirect dialogRedirect, DialogInterface.OnCancelListener onCancelListener) {
        if (i10 == 0) {
            return null;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(activity, UIUtil.getDialogThemeId(activity));
        builder.setMessage(ConnectionErrorMessages.getErrorMessage(activity, i10));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        builder.setPositiveButton(ConnectionErrorMessages.getErrorDialogButtonMessage(activity, i10), dialogRedirect);
        if (Util.isAvailableLibExist(activity) && AvailableUtil.isInstallerLibExist(activity)) {
            String errorTitle = ConnectionErrorMessages.getErrorTitle(activity, i10);
            if (errorTitle != null) {
                builder.setTitle(errorTitle);
            }
        } else {
            String errorTitle2 = ConnectionErrorMessages.getErrorTitle(activity, i10);
            if (errorTitle2 != null) {
                builder.setTitle(errorTitle2);
            }
        }
        return builder.create();
    }

    private Intent b(Activity activity, int i10) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "getErrorResolutionIntent, errorCode: " + i10);
        if (i10 != 1 && i10 != 2) {
            if (i10 != 6) {
                if (i10 == 9 && Util.isAvailableLibExist(activity)) {
                    return BridgeActivity.getIntentStartBridgeActivity(activity, AppSpoofResolution.class.getName());
                }
                return null;
            }
            return BridgeActivity.getIntentStartBridgeActivity(activity, BindingFailedResolution.class.getName());
        } else if (Util.isAvailableLibExist(activity) && AvailableUtil.isInstallerLibExist(activity)) {
            return (Intent) UpdateAdapter.invokeMethod("com.huawei.hms.update.manager.UpdateManager", "startUpdateIntent", new Object[]{activity});
        } else {
            return BridgeActivity.getIntentStartBridgeActivity(activity, DoNothingResolution.class.getName());
        }
    }

    private static Intent c(Activity activity, String str) {
        return BridgeActivity.getIntentStartBridgeActivity(activity, str);
    }

    private static Intent d(Context context, String str) {
        return BridgeActivity.getIntentStartBridgeActivity(context, str);
    }

    private UpdateBean e(Context context) {
        UpdateBean updateBean = new UpdateBean();
        updateBean.setHmsOrApkUpgrade(true);
        updateBean.setClientPackageName(HMSPackageManager.getInstance(context).getHMSPackageName());
        if (TextUtils.isEmpty(updateBean.getClientPackageName())) {
            updateBean.setClientPackageName("com.huawei.hwid");
        }
        updateBean.setClientVersionCode(HuaweiApiAvailability.getServicesVersionCode());
        updateBean.setClientAppId("C10132067");
        if (ResourceLoaderUtil.getmContext() == null) {
            ResourceLoaderUtil.setmContext(context);
        }
        try {
            updateBean.setClientAppName(ResourceLoaderUtil.getString("hms_update_title"));
        } catch (Exception e10) {
            HMSLog.e("HuaweiApiAvailabilityImpl", "getString has Exception:" + e10.getMessage());
        }
        return updateBean;
    }

    private static void f(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        Checker.checkNonNull(activity, "activity must not be null.");
        ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    private void g(Object obj) throws AvailabilityException {
        ConnectionResult connectionResult;
        AvailabilityException availabilityException = new AvailabilityException();
        if (obj instanceof HuaweiApi) {
            connectionResult = availabilityException.getConnectionResult((HuaweiApi) obj);
        } else {
            connectionResult = availabilityException.getConnectionResult((HuaweiApiCallable) obj);
        }
        if (connectionResult.getErrorCode() == 0) {
            return;
        }
        HMSLog.i("HuaweiApiAvailabilityImpl", "The service is unavailable: " + availabilityException.getMessage());
        throw availabilityException;
    }

    public static b h() {
        return f21914a;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public f<Void> checkApiAccessible(HuaweiApi<?> huaweiApi, HuaweiApi<?>... huaweiApiArr) {
        f<Void> a10 = new g().a();
        if (huaweiApi != null) {
            try {
                g(huaweiApi);
            } catch (AvailabilityException e10) {
                HMSLog.i("HuaweiApiAvailabilityImpl", "checkApi has AvailabilityException " + e10.getMessage());
            }
        }
        if (huaweiApiArr != null) {
            for (HuaweiApi<?> huaweiApi2 : huaweiApiArr) {
                g(huaweiApi2);
            }
        }
        return a10;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public PendingIntent getErrPendingIntent(Context context, ConnectionResult connectionResult) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(connectionResult);
        return j(context, connectionResult.getErrorCode());
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public Dialog getErrorDialog(Activity activity, int i10, int i11) {
        Checker.checkNonNull(activity, "activity must not be null.");
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getErrorDialog, errorCode: " + i10);
        return getErrorDialog(activity, i10, i11, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public String getErrorString(int i10) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getErrorString, errorCode: " + i10);
        return ConnectionResult.getErrorString(i10);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public f<Void> getHuaweiServicesReady(Activity activity) {
        Preconditions.checkNotNull(activity);
        g[] gVarArr = {new g()};
        f<Void> a10 = gVarArr[0].a();
        int isHuaweiMobileServicesAvailable = isHuaweiMobileServicesAvailable(activity.getApplicationContext(), 30000000);
        Intent resolveErrorIntent = getResolveErrorIntent(activity, isHuaweiMobileServicesAvailable);
        Intent intentStartBridgeActivity = BridgeActivity.getIntentStartBridgeActivity(activity, ResolutionDelegate.class.getName());
        if (resolveErrorIntent != null) {
            ForegroundIntentBuilder.registerResponseCallback(ResolutionDelegate.CALLBACK_METHOD, new a(gVarArr));
            Bundle bundle = new Bundle();
            bundle.putParcelable("resolution", resolveErrorIntent);
            intentStartBridgeActivity.putExtras(bundle);
            activity.startActivity(intentStartBridgeActivity);
        } else if (isHuaweiMobileServicesAvailable == 3) {
            Intent intent = new Intent();
            intent.setClass(activity, EnableServiceActivity.class);
            activity.startActivity(intent);
        } else if (isHuaweiMobileServicesAvailable == 0) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "The HMS service is available.");
        } else {
            HMSLog.e("HuaweiApiAvailabilityImpl", "Framework can not solve the availability problem.");
            gVarArr[0].b(new AvailabilityException());
        }
        return a10;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public Intent getResolveErrorIntent(Activity activity, int i10) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorIntent, errorCode: " + i10);
        if (activity == null) {
            return null;
        }
        if (i10 != 1 && i10 != 2) {
            if (i10 != 6) {
                if (i10 != 9 || !Util.isAvailableLibExist(activity)) {
                    return null;
                }
                return c(activity, AppSpoofResolution.class.getName());
            }
            return c(activity, BindingFailedResolution.class.getName());
        } else if (Util.isAvailableLibExist(activity) && AvailableUtil.isInstallerLibExist(activity)) {
            return (Intent) UpdateAdapter.invokeMethod("com.huawei.hms.update.manager.UpdateManager", "getStartUpdateIntent", new Object[]{activity, e(activity.getApplicationContext())});
        } else {
            return c(activity, NotInstalledHmsResolution.class.getName());
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public PendingIntent getResolveErrorPendingIntent(Activity activity, int i10) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorPendingIntent, errorCode: " + i10);
        Intent resolveErrorIntent = getResolveErrorIntent(activity, i10);
        if (resolveErrorIntent != null) {
            return PendingIntent.getActivity(activity, 0, resolveErrorIntent, 67108864);
        }
        return null;
    }

    public Intent i(Context context, int i10) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorIntent, errorCode: " + i10);
        if (i10 != 1 && i10 != 2) {
            if (i10 != 6) {
                if (i10 == 9 && Util.isAvailableLibExist(context)) {
                    return d(context, AppSpoofResolution.class.getName());
                }
                return null;
            }
            return d(context, BindingFailedResolution.class.getName());
        } else if (Util.isAvailableLibExist(context) && AvailableUtil.isInstallerLibExist(context)) {
            return (Intent) UpdateAdapter.invokeMethod("com.huawei.hms.update.manager.UpdateManager", "getStartUpdateIntent", new Object[]{context, e(context.getApplicationContext())});
        } else {
            return d(context, NotInstalledHmsResolution.class.getName());
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public int isHuaweiMobileNoticeAvailable(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        PackageManagerHelper packageManagerHelper = new PackageManagerHelper(context);
        String hMSPackageNameForMultiService = HMSPackageManager.getInstance(context).getHMSPackageNameForMultiService();
        if (TextUtils.isEmpty(hMSPackageNameForMultiService)) {
            HMSLog.w("HuaweiApiAvailabilityImpl", "hmsPackageName is empty, Service is invalid.");
            return 1;
        }
        if (PackageManagerHelper.PackageStates.NOT_INSTALLED.equals(packageManagerHelper.getPackageStates(hMSPackageNameForMultiService))) {
            HMSLog.w("HuaweiApiAvailabilityImpl", "hmsPackageName is not installed, Service is invalid.");
            return 1;
        } else if (HMSPackageManager.getInstance(context).isApkUpdateNecessary(20600000)) {
            return 2;
        } else {
            return 0;
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public int isHuaweiMobileServicesAvailable(Context context) {
        Checker.checkNonNull(context, "context must not be null.");
        return HuaweiMobileServicesUtil.isHuaweiMobileServicesAvailable(context, HuaweiApiAvailability.getServicesVersionCode());
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean isUserResolvableError(int i10, PendingIntent pendingIntent) {
        if (i10 == 0) {
            return false;
        }
        return pendingIntent != null || i10 == 1 || i10 == 2 || i10 == 6 || i10 == 9;
    }

    public PendingIntent j(Context context, int i10) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorPendingIntent, errorCode: " + i10);
        Intent i11 = i(context, i10);
        if (i11 != null) {
            return PendingIntent.getActivity(context, 0, i11, 67108864);
        }
        return null;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void popupErrNotification(Context context, ConnectionResult connectionResult) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(connectionResult);
        showErrorNotification(context, connectionResult.getErrorCode());
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void resolveError(Activity activity, int i10, int i11) {
        resolveError(activity, i10, i11, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean showErrorDialogFragment(Activity activity, int i10, int i11) {
        return showErrorDialogFragment(activity, i10, i11, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void showErrorNotification(Context context, int i10) {
        Checker.checkNonNull(context, "context must not be null.");
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter showErrorNotification, errorCode: " + i10);
        if (!(context instanceof Activity)) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "context not instanceof Activity");
            return;
        }
        Dialog errorDialog = getErrorDialog((Activity) context, i10, 0);
        if (errorDialog == null) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "showErrorNotification errorDialog can not be null");
        } else {
            errorDialog.show();
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean isUserResolvableError(int i10) {
        return isUserResolvableError(i10, null);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public void resolveError(Activity activity, int i10, int i11, PendingIntent pendingIntent) {
        Checker.checkNonNull(activity, "activity must not be null.");
        if (pendingIntent != null) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "Enter resolveError, param pendingIntent is not null. and.errorCode: " + i10);
        } else {
            HMSLog.i("HuaweiApiAvailabilityImpl", "Enter resolveError, param pendingIntent is  null. get pendingIntent from error code.and.errorCode: " + i10);
            pendingIntent = getResolveErrorPendingIntent(activity, i10);
        }
        if (pendingIntent != null) {
            HMSLog.i("HuaweiApiAvailabilityImpl", "In resolveError, start pendingIntent.errorCode: " + i10);
            try {
                activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i11, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException unused) {
                HMSLog.e("HuaweiApiAvailabilityImpl", "Enter resolveError, start pendingIntent failed.errorCode: " + i10);
            }
        }
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean showErrorDialogFragment(Activity activity, int i10, int i11, DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i10, i11, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        f(activity, errorDialog, HuaweiMobileServicesUtil.HMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public Dialog getErrorDialog(Activity activity, int i10, int i11, DialogInterface.OnCancelListener onCancelListener) {
        Checker.checkNonNull(activity, "activity must not be null.");
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getErrorDialog, errorCode: " + i10);
        return a(activity, i10, DialogRedirect.getInstance(activity, b(activity, i10), i11), onCancelListener);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public int isHuaweiMobileServicesAvailable(Context context, int i10) {
        Checker.checkNonNull(context, "context must not be null.");
        return HuaweiMobileServicesUtil.isHuaweiMobileServicesAvailable(context, i10);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public boolean showErrorDialogFragment(Activity activity, int i10, Fragment fragment, int i11, DialogInterface.OnCancelListener onCancelListener) {
        return showErrorDialogFragment(activity, i10, i11, onCancelListener);
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public PendingIntent getErrPendingIntent(Context context, int i10, int i11) {
        HMSLog.i("HuaweiApiAvailabilityImpl", "Enter getResolveErrorPendingIntent, errorCode: " + i10 + " requestCode: " + i11);
        Intent i12 = i(context, i10);
        if (i12 != null) {
            return PendingIntent.getActivity(context, i11, i12, 67108864);
        }
        return null;
    }

    @Override // com.huawei.hms.api.HuaweiApiAvailability
    public f<Void> checkApiAccessible(HuaweiApiCallable huaweiApiCallable, HuaweiApiCallable... huaweiApiCallableArr) {
        f<Void> a10 = new g().a();
        if (huaweiApiCallable != null) {
            try {
                g(huaweiApiCallable);
            } catch (AvailabilityException e10) {
                HMSLog.i("HuaweiApiAvailabilityImpl", "HuaweiApiCallable checkApi has AvailabilityException " + e10.getMessage());
            }
        }
        if (huaweiApiCallableArr != null) {
            for (HuaweiApiCallable huaweiApiCallable2 : huaweiApiCallableArr) {
                g(huaweiApiCallable2);
            }
        }
        return a10;
    }
}
