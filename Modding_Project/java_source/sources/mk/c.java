package mk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.activity.result.ActivityResultLauncher;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import com.startshorts.androidplayer.bean.permission.CheckPermissionResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.permission.PermissionCallbacks;
import fk.u;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PermissionUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPermissionUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionUtil.kt\ncom/startshorts/androidplayer/utils/permission/PermissionUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,184:1\n1#2:185\n*E\n"})
/* loaded from: classes7.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final c f62521a = new c();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f62522b;

    private c() {
    }

    private final void a(Object obj) {
        boolean z10 = obj instanceof Activity;
        boolean z11 = obj instanceof Fragment;
        boolean z12 = obj instanceof android.app.Fragment;
        if (!z11 && !z10 && !z12) {
            if (!z12) {
                throw new IllegalArgumentException("Caller must be an Activity or a Fragment.");
            }
            throw new IllegalArgumentException("Target SDK needs to be greater than 23 if caller is android.app.Fragment");
        }
    }

    private final void h() {
        Context b10 = u.f51776a.b();
        try {
            Intent intent = new Intent();
            if (Build.VERSION.SDK_INT >= 26) {
                intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
                intent.putExtra("android.provider.extra.APP_PACKAGE", b10.getPackageName());
                intent.putExtra("android.provider.extra.CHANNEL_ID", b10.getApplicationInfo().uid);
            } else {
                intent.putExtra("app_package", b10.getPackageName());
                intent.putExtra("app_uid", b10.getApplicationInfo().uid);
            }
            intent.addFlags(268435456);
            b10.startActivity(intent);
            f62522b = true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("PermissionUtil", "openNotificationSettingsForApp failed -> " + e10.getMessage());
            try {
                Uri fromParts = Uri.fromParts("package", b10.getPackageName(), null);
                Intent intent2 = new Intent();
                intent2.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent2.setData(fromParts);
                intent2.addFlags(268435456);
                b10.startActivity(intent2);
                f62522b = true;
            } catch (Exception e11) {
                Logger logger2 = Logger.f41511a;
                logger2.e("PermissionUtil", "openNotificationSettingsForApp failed -> " + e11.getMessage());
            }
        }
    }

    @NotNull
    public final List<CheckPermissionResult> b(@NotNull Context context, @NotNull String[] permissions) {
        boolean z10;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        if (permissions.length == 1) {
            String str = permissions[0];
            if (Intrinsics.areEqual(str, "android.permission.POST_NOTIFICATIONS")) {
                return CollectionsKt.h(new CheckPermissionResult(str, d()));
            }
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : permissions) {
            if (ContextCompat.checkSelfPermission(context, str2) == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            arrayList.add(new CheckPermissionResult(str2, z10));
        }
        return arrayList;
    }

    public final boolean c() {
        return f62522b;
    }

    public final boolean d() {
        try {
            return NotificationManagerCompat.from(u.f51776a.b()).areNotificationsEnabled();
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("PermissionUtil", "checkNotificationsEnabled exception -> " + e10.getMessage());
            return false;
        }
    }

    public final void e(int i10, @NotNull String[] permissions, @NotNull int[] grantResults, @NotNull Object obj) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        Intrinsics.checkNotNullParameter(obj, "obj");
        a(obj);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int length = permissions.length;
        for (int i11 = 0; i11 < length; i11++) {
            String str = permissions[i11];
            if (grantResults[i11] == 0) {
                arrayList.add(str);
            } else {
                arrayList2.add(str);
            }
        }
        if (obj instanceof PermissionCallbacks) {
            PermissionCallbacks permissionCallbacks = (PermissionCallbacks) obj;
            permissionCallbacks.d(i10, arrayList);
            permissionCallbacks.c(i10, arrayList2);
        }
    }

    public final boolean f(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        try {
            activity.startActivity(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + activity.getPackageName())));
            f62522b = true;
            return true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("PermissionUtil", "requestMiniWindowPermission failed -> " + e10.getMessage());
            return false;
        }
    }

    public final boolean g(@NotNull Activity activity, @Nullable ActivityResultLauncher<Intent> activityResultLauncher) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (activityResultLauncher == null) {
            return false;
        }
        try {
            activityResultLauncher.launch(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + activity.getPackageName())));
            f62522b = true;
            return true;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("PermissionUtil", "requestMiniWindowPermission failed -> " + e10.getMessage());
            return false;
        }
    }

    public final boolean i(@NotNull Object object, int i10, @NotNull String[] permissions) {
        Intrinsics.checkNotNullParameter(object, "object");
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Logger logger = Logger.f41511a;
        logger.h("PermissionUtil", "requestPermission -> " + permissions);
        if (permissions.length == 1 && Intrinsics.areEqual(permissions[0], "android.permission.POST_NOTIFICATIONS") && (DeviceUtil.f48146a.X() || ud.b.f68412a.o0() >= 2)) {
            h();
            return true;
        }
        a(object);
        if (object instanceof Activity) {
            ActivityCompat.requestPermissions((Activity) object, permissions, i10);
        } else if (object instanceof Fragment) {
            Fragment fragment = (Fragment) object;
            if (fragment.getHost() != null) {
                fragment.requestPermissions(permissions, i10);
            }
        }
        return false;
    }

    public final void j(boolean z10) {
        f62522b = z10;
    }
}
