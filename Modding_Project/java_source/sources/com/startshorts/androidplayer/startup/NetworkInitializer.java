package com.startshorts.androidplayer.startup;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import androidx.startup.Initializer;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* compiled from: NetworkInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NetworkInitializer extends BaseInitializer<Object> {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f44864e = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f44865b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f44866c = true;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private String f44867d = "no_net";

    /* compiled from: NetworkInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: NetworkInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends ConnectivityManager.NetworkCallback {
        b() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            Intrinsics.checkNotNullParameter(network, "network");
            NetworkInitializer.this.k();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            Intrinsics.checkNotNullParameter(network, "network");
            NetworkInitializer.this.l();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k() {
        if (!this.f44865b) {
            this.f44865b = true;
            b("onAvailable");
            if (this.f44866c) {
                this.f44866c = false;
            } else {
                DeviceUtil.f48146a.m0();
            }
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l() {
        if (this.f44865b) {
            this.f44865b = false;
            b("onLost");
        }
    }

    private final r m() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "refreshNetworkType", false, new NetworkInitializer$refreshNetworkType$1(this, null), 2, null);
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public String c() {
        return "NetworkInitializer";
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(LoggerInitializer.class);
        return arrayList;
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public Object e(@NotNull Context context, boolean z10) {
        ConnectivityManager connectivityManager;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Object systemService = context.getSystemService("connectivity");
            if (systemService instanceof ConnectivityManager) {
                connectivityManager = (ConnectivityManager) systemService;
            } else {
                connectivityManager = null;
            }
            if (connectivityManager != null) {
                connectivityManager.registerDefaultNetworkCallback(new b());
            }
        } catch (Exception e10) {
            b("registerDefaultNetworkCallback failed -> " + e10.getMessage());
        }
        return new Object();
    }

    @NotNull
    public final String j() {
        return this.f44867d;
    }
}
