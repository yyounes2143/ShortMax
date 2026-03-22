package com.google.android.ump;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.consent_sdk.zzcm;
import com.google.android.gms.internal.consent_sdk.zzcu;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
/* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
/* loaded from: classes5.dex */
public class ConsentDebugSettings {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f20024a;

    /* renamed from: b  reason: collision with root package name */
    private final int f20025b;

    /* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: b  reason: collision with root package name */
        private final Context f20027b;

        /* renamed from: d  reason: collision with root package name */
        private boolean f20029d;

        /* renamed from: a  reason: collision with root package name */
        private final List f20026a = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        private int f20028c = 0;

        public Builder(@RecentlyNonNull Context context) {
            this.f20027b = context.getApplicationContext();
        }

        @RecentlyNonNull
        public Builder addTestDeviceHashedId(@RecentlyNonNull String str) {
            this.f20026a.add(str);
            return this;
        }

        @RecentlyNonNull
        public ConsentDebugSettings build() {
            boolean z10 = true;
            if (!zzcu.zza(true) && !this.f20026a.contains(zzcm.zza(this.f20027b)) && !this.f20029d) {
                z10 = false;
            }
            return new ConsentDebugSettings(z10, this, null);
        }

        @RecentlyNonNull
        public Builder setDebugGeography(int i10) {
            this.f20028c = i10;
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public Builder setForceTesting(boolean z10) {
            this.f20029d = z10;
            return this;
        }
    }

    /* compiled from: com.google.android.ump:user-messaging-platform@@3.2.0 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes5.dex */
    public @interface DebugGeography {
        public static final int DEBUG_GEOGRAPHY_DISABLED = 0;
        public static final int DEBUG_GEOGRAPHY_EEA = 1;
        @Deprecated
        public static final int DEBUG_GEOGRAPHY_NOT_EEA = 2;
        public static final int DEBUG_GEOGRAPHY_OTHER = 4;
        public static final int DEBUG_GEOGRAPHY_REGULATED_US_STATE = 3;
    }

    /* synthetic */ ConsentDebugSettings(boolean z10, Builder builder, zza zzaVar) {
        this.f20024a = z10;
        this.f20025b = builder.f20028c;
    }

    public int getDebugGeography() {
        return this.f20025b;
    }

    public boolean isTestDevice() {
        return this.f20024a;
    }
}
