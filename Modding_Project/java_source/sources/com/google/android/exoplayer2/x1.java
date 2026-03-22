package com.google.android.exoplayer2;

import android.content.Context;
import android.net.wifi.WifiManager;
import androidx.annotation.Nullable;
/* compiled from: WifiLockManager.java */
/* loaded from: classes4.dex */
final class x1 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final WifiManager f19326a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private WifiManager.WifiLock f19327b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f19328c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f19329d;

    public x1(Context context) {
        this.f19326a = (WifiManager) context.getApplicationContext().getSystemService("wifi");
    }

    private void c() {
        WifiManager.WifiLock wifiLock = this.f19327b;
        if (wifiLock == null) {
            return;
        }
        if (this.f19328c && this.f19329d) {
            wifiLock.acquire();
        } else {
            wifiLock.release();
        }
    }

    public void a(boolean z10) {
        if (z10 && this.f19327b == null) {
            WifiManager wifiManager = this.f19326a;
            if (wifiManager == null) {
                b7.q.i("WifiLockManager", "WifiManager is null, therefore not creating the WifiLock.");
                return;
            }
            WifiManager.WifiLock createWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
            this.f19327b = createWifiLock;
            createWifiLock.setReferenceCounted(false);
        }
        this.f19328c = z10;
        c();
    }

    public void b(boolean z10) {
        this.f19329d = z10;
        c();
    }
}
