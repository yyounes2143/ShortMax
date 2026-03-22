package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.Nullable;
/* compiled from: WakeLockManager.java */
/* loaded from: classes4.dex */
final class w1 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final PowerManager f19321a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private PowerManager.WakeLock f19322b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f19323c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f19324d;

    public w1(Context context) {
        this.f19321a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    @SuppressLint({"WakelockTimeout"})
    private void c() {
        PowerManager.WakeLock wakeLock = this.f19322b;
        if (wakeLock == null) {
            return;
        }
        if (this.f19323c && this.f19324d) {
            wakeLock.acquire();
        } else {
            wakeLock.release();
        }
    }

    public void a(boolean z10) {
        if (z10 && this.f19322b == null) {
            PowerManager powerManager = this.f19321a;
            if (powerManager == null) {
                b7.q.i("WakeLockManager", "PowerManager is null, therefore not creating the WakeLock.");
                return;
            }
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
            this.f19322b = newWakeLock;
            newWakeLock.setReferenceCounted(false);
        }
        this.f19323c = z10;
        c();
    }

    public void b(boolean z10) {
        this.f19324d = z10;
        c();
    }
}
