package uh;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import com.startshorts.androidplayer.bean.download.DownloadTaskInfo;
import com.startshorts.androidplayer.log.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubtitleNetworkHelper.kt */
@Metadata
/* loaded from: classes7.dex */
public final class m1 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final m1 f68462a = new m1();
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private static DownloadTaskInfo f68463b;

    private m1() {
    }

    private final void c(String str) {
        if (str == null) {
            str = "err null string";
        }
        Logger.f41511a.h("SubtitleDownloadManager", str);
    }

    public final void a(@Nullable DownloadTaskInfo downloadTaskInfo) {
        if (!i0.f68447a.b() && downloadTaskInfo != null) {
            m1 m1Var = f68462a;
            if (!m1Var.b()) {
                m1Var.c("add subtitle download work but no network:" + downloadTaskInfo);
                f68463b = downloadTaskInfo;
                return;
            }
            m1Var.c("add subtitle download work:" + downloadTaskInfo);
            f68463b = null;
            l1.f68455a.d(downloadTaskInfo);
        }
    }

    public final boolean b() {
        NetworkCapabilities networkCapabilities;
        Object systemService = fk.u.f51776a.b().getSystemService("connectivity");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) == null) {
            return false;
        }
        if (!networkCapabilities.hasTransport(1) && !networkCapabilities.hasTransport(0) && !networkCapabilities.hasTransport(3)) {
            return false;
        }
        return true;
    }

    public final void d() {
        DownloadTaskInfo downloadTaskInfo = f68463b;
        if (downloadTaskInfo == null || i0.f68447a.b()) {
            return;
        }
        m1 m1Var = f68462a;
        if (!m1Var.b()) {
            m1Var.c("resume subtitle download work but no network");
            return;
        }
        m1Var.c("resume subtitle download work:" + downloadTaskInfo);
        l1.f68455a.d(downloadTaskInfo);
        f68463b = null;
    }
}
