package l0;

import android.annotation.SuppressLint;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import l0.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: NetworkObserver.kt */
@Metadata
@SuppressLint({"MissingPermission"})
/* loaded from: classes2.dex */
final class e implements c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final ConnectivityManager f62069a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final c.a f62070b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final a f62071c;

    /* compiled from: NetworkObserver.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class a extends ConnectivityManager.NetworkCallback {
        a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(@NotNull Network network) {
            e.this.d(network, true);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(@NotNull Network network) {
            e.this.d(network, false);
        }
    }

    public e(@NotNull ConnectivityManager connectivityManager, @NotNull c.a aVar) {
        this.f62069a = connectivityManager;
        this.f62070b = aVar;
        a aVar2 = new a();
        this.f62071c = aVar2;
        connectivityManager.registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).build(), aVar2);
    }

    private final boolean c(Network network) {
        NetworkCapabilities networkCapabilities = this.f62069a.getNetworkCapabilities(network);
        if (networkCapabilities != null && networkCapabilities.hasCapability(12)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(Network network, boolean z10) {
        boolean c10;
        Network[] allNetworks = this.f62069a.getAllNetworks();
        int length = allNetworks.length;
        boolean z11 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            Network network2 = allNetworks[i10];
            if (Intrinsics.areEqual(network2, network)) {
                c10 = z10;
            } else {
                c10 = c(network2);
            }
            if (c10) {
                z11 = true;
                break;
            }
            i10++;
        }
        this.f62070b.a(z11);
    }

    @Override // l0.c
    public boolean a() {
        for (Network network : this.f62069a.getAllNetworks()) {
            if (c(network)) {
                return true;
            }
        }
        return false;
    }

    @Override // l0.c
    public void shutdown() {
        this.f62069a.unregisterNetworkCallback(this.f62071c);
    }
}
