package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
/* compiled from: AutoValue_NetworkConnectionInfo.java */
/* loaded from: classes4.dex */
final class l extends NetworkConnectionInfo {

    /* renamed from: a  reason: collision with root package name */
    private final NetworkConnectionInfo.NetworkType f17151a;

    /* renamed from: b  reason: collision with root package name */
    private final NetworkConnectionInfo.MobileSubtype f17152b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AutoValue_NetworkConnectionInfo.java */
    /* loaded from: classes4.dex */
    public static final class b extends NetworkConnectionInfo.a {

        /* renamed from: a  reason: collision with root package name */
        private NetworkConnectionInfo.NetworkType f17153a;

        /* renamed from: b  reason: collision with root package name */
        private NetworkConnectionInfo.MobileSubtype f17154b;

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo a() {
            return new l(this.f17153a, this.f17154b);
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo.a b(@Nullable NetworkConnectionInfo.MobileSubtype mobileSubtype) {
            this.f17154b = mobileSubtype;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.a
        public NetworkConnectionInfo.a c(@Nullable NetworkConnectionInfo.NetworkType networkType) {
            this.f17153a = networkType;
            return this;
        }
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    @Nullable
    public NetworkConnectionInfo.MobileSubtype b() {
        return this.f17152b;
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    @Nullable
    public NetworkConnectionInfo.NetworkType c() {
        return this.f17151a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkConnectionInfo)) {
            return false;
        }
        NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
        NetworkConnectionInfo.NetworkType networkType = this.f17151a;
        if (networkType != null ? networkType.equals(networkConnectionInfo.c()) : networkConnectionInfo.c() == null) {
            NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f17152b;
            if (mobileSubtype == null) {
                if (networkConnectionInfo.b() == null) {
                    return true;
                }
            } else if (mobileSubtype.equals(networkConnectionInfo.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        NetworkConnectionInfo.NetworkType networkType = this.f17151a;
        int i10 = 0;
        if (networkType == null) {
            hashCode = 0;
        } else {
            hashCode = networkType.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        NetworkConnectionInfo.MobileSubtype mobileSubtype = this.f17152b;
        if (mobileSubtype != null) {
            i10 = mobileSubtype.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f17151a + ", mobileSubtype=" + this.f17152b + "}";
    }

    private l(@Nullable NetworkConnectionInfo.NetworkType networkType, @Nullable NetworkConnectionInfo.MobileSubtype mobileSubtype) {
        this.f17151a = networkType;
        this.f17152b = mobileSubtype;
    }
}
