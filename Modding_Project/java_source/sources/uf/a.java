package uf;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import fk.a0;
import fk.u;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BadgeUtil.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f68420a = new a();

    private a() {
    }

    private final String b() {
        String str;
        ComponentName component;
        u uVar = u.f51776a;
        Intent launchIntentForPackage = uVar.b().getPackageManager().getLaunchIntentForPackage(uVar.b().getPackageName());
        if (launchIntentForPackage != null && (component = launchIntentForPackage.getComponent()) != null) {
            str = component.getClassName();
        } else {
            str = null;
        }
        if (str == null) {
            return uVar.b().getPackageName() + "/.ui.activity.RoutingActivity";
        }
        return str;
    }

    private final void e(int i10) {
        g(i10);
        f(i10);
    }

    private final void f(int i10) {
        Intent intent = new Intent();
        intent.setAction("launcher.action.CHANGE_APPLICATION_NOTIFICATION_NUM");
        u uVar = u.f51776a;
        intent.putExtra("packageName", uVar.b().getPackageName());
        intent.putExtra("className", f68420a.b());
        intent.putExtra("notificationNum", i10);
        uVar.b().sendBroadcast(intent);
    }

    @SuppressLint({"PrivateApi"})
    private final void g(int i10) {
        Bundle bundle = new Bundle();
        u uVar = u.f51776a;
        bundle.putString("package", uVar.b().getPackageName());
        bundle.putString("class", f68420a.b());
        bundle.putInt("badgenumber", i10);
        ContentProviderClient contentProviderClient = null;
        try {
            ContentProviderClient acquireUnstableContentProviderClient = uVar.b().getContentResolver().acquireUnstableContentProviderClient(Uri.parse("content://com.vivo.abe.provider.launcher.notification.num"));
            if (acquireUnstableContentProviderClient != null) {
                try {
                    Bundle call = acquireUnstableContentProviderClient.call("change_badge", null, bundle);
                    if (call != null) {
                        call.getInt("result");
                    }
                } catch (Exception unused) {
                    contentProviderClient = acquireUnstableContentProviderClient;
                    if (contentProviderClient != null) {
                        contentProviderClient.close();
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    th = th2;
                    contentProviderClient = acquireUnstableContentProviderClient;
                    if (contentProviderClient != null) {
                        contentProviderClient.close();
                    }
                    throw th;
                }
            }
            if (acquireUnstableContentProviderClient != null) {
                acquireUnstableContentProviderClient.close();
            }
        } catch (Exception unused2) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final void a() {
        if (a0.f51704a.c()) {
            g(0);
            f(0);
            ud.b.f68412a.L2(0);
        }
    }

    public final void c() {
        if (a0.f51704a.c()) {
            ud.b bVar = ud.b.f68412a;
            int B = bVar.B() + 1;
            e(B);
            bVar.L2(B);
        }
    }

    public final void d() {
        if (a0.f51704a.c()) {
            ud.b bVar = ud.b.f68412a;
            int B = bVar.B() - 1;
            if (B >= 0) {
                e(B);
                bVar.L2(B);
            }
        }
    }
}
