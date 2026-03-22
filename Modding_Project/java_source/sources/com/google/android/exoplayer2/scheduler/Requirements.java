package com.google.android.exoplayer2.scheduler;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import androidx.annotation.Nullable;
import b7.s0;
/* loaded from: classes4.dex */
public final class Requirements implements Parcelable {
    public static final Parcelable.Creator<Requirements> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final int f18180a;

    /* loaded from: classes4.dex */
    class a implements Parcelable.Creator<Requirements> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public Requirements createFromParcel(Parcel parcel) {
            return new Requirements(parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public Requirements[] newArray(int i10) {
            return new Requirements[i10];
        }
    }

    public Requirements(int i10) {
        this.f18180a = (i10 & 2) != 0 ? i10 | 1 : i10;
    }

    private int a(Context context) {
        if (!h()) {
            return 0;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) b7.a.e(context.getSystemService("connectivity"));
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected() && g(connectivityManager)) {
            if (!l() || !connectivityManager.isActiveNetworkMetered()) {
                return 0;
            }
            return 2;
        }
        return this.f18180a & 3;
    }

    private boolean d(Context context) {
        Intent E0 = s0.E0(context, null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (E0 == null) {
            return false;
        }
        int intExtra = E0.getIntExtra("status", -1);
        if (intExtra != 2 && intExtra != 5) {
            return false;
        }
        return true;
    }

    private boolean e(Context context) {
        PowerManager powerManager = (PowerManager) b7.a.e(context.getSystemService("power"));
        int i10 = s0.f2506a;
        if (i10 >= 23) {
            return powerManager.isDeviceIdleMode();
        }
        if (i10 < 20 ? powerManager.isScreenOn() : powerManager.isInteractive()) {
            return false;
        }
        return true;
    }

    private static boolean g(ConnectivityManager connectivityManager) {
        if (s0.f2506a < 24) {
            return true;
        }
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (activeNetwork == null) {
            return false;
        }
        try {
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities != null) {
                if (networkCapabilities.hasCapability(16)) {
                    return true;
                }
            }
            return false;
        } catch (SecurityException unused) {
            return true;
        }
    }

    private boolean j(Context context) {
        if (s0.E0(context, null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) == null) {
            return true;
        }
        return false;
    }

    public int b(Context context) {
        int a10 = a(context);
        if (c() && !d(context)) {
            a10 |= 8;
        }
        if (f() && !e(context)) {
            a10 |= 4;
        }
        if (k() && !j(context)) {
            return a10 | 16;
        }
        return a10;
    }

    public boolean c() {
        if ((this.f18180a & 8) != 0) {
            return true;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Requirements.class == obj.getClass() && this.f18180a == ((Requirements) obj).f18180a) {
            return true;
        }
        return false;
    }

    public boolean f() {
        if ((this.f18180a & 4) != 0) {
            return true;
        }
        return false;
    }

    public boolean h() {
        if ((this.f18180a & 1) != 0) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f18180a;
    }

    public boolean k() {
        if ((this.f18180a & 16) != 0) {
            return true;
        }
        return false;
    }

    public boolean l() {
        if ((this.f18180a & 2) != 0) {
            return true;
        }
        return false;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f18180a);
    }
}
