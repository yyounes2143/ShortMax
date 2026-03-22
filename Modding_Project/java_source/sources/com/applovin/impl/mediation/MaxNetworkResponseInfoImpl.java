package com.applovin.impl.mediation;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxMediatedNetworkInfo;
import com.applovin.mediation.MaxNetworkResponseInfo;
/* loaded from: classes2.dex */
public class MaxNetworkResponseInfoImpl implements MaxNetworkResponseInfo {

    /* renamed from: a  reason: collision with root package name */
    private final MaxNetworkResponseInfo.AdLoadState f8530a;

    /* renamed from: b  reason: collision with root package name */
    private final MaxMediatedNetworkInfo f8531b;

    /* renamed from: c  reason: collision with root package name */
    private final Bundle f8532c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f8533d;

    /* renamed from: e  reason: collision with root package name */
    private final long f8534e;

    /* renamed from: f  reason: collision with root package name */
    private final String f8535f;

    /* renamed from: g  reason: collision with root package name */
    private final MaxError f8536g;

    /* loaded from: classes2.dex */
    static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f8537a;

        static {
            int[] iArr = new int[MaxNetworkResponseInfo.AdLoadState.values().length];
            f8537a = iArr;
            try {
                iArr[MaxNetworkResponseInfo.AdLoadState.FAILED_TO_LOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8537a[MaxNetworkResponseInfo.AdLoadState.AD_LOADED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public MaxNetworkResponseInfoImpl(MaxNetworkResponseInfo.AdLoadState adLoadState, MaxMediatedNetworkInfo maxMediatedNetworkInfo, Bundle bundle, boolean z10, long j10, String str, @Nullable MaxError maxError) {
        this.f8530a = adLoadState;
        this.f8531b = maxMediatedNetworkInfo;
        this.f8532c = bundle;
        this.f8533d = z10;
        this.f8534e = j10;
        this.f8535f = str;
        this.f8536g = maxError;
    }

    protected boolean canEqual(Object obj) {
        return obj instanceof MaxNetworkResponseInfoImpl;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MaxNetworkResponseInfoImpl)) {
            return false;
        }
        MaxNetworkResponseInfoImpl maxNetworkResponseInfoImpl = (MaxNetworkResponseInfoImpl) obj;
        if (!maxNetworkResponseInfoImpl.canEqual(this) || isBidding() != maxNetworkResponseInfoImpl.isBidding() || getLatencyMillis() != maxNetworkResponseInfoImpl.getLatencyMillis()) {
            return false;
        }
        MaxNetworkResponseInfo.AdLoadState adLoadState = getAdLoadState();
        MaxNetworkResponseInfo.AdLoadState adLoadState2 = maxNetworkResponseInfoImpl.getAdLoadState();
        if (adLoadState != null ? !adLoadState.equals(adLoadState2) : adLoadState2 != null) {
            return false;
        }
        MaxMediatedNetworkInfo mediatedNetwork = getMediatedNetwork();
        MaxMediatedNetworkInfo mediatedNetwork2 = maxNetworkResponseInfoImpl.getMediatedNetwork();
        if (mediatedNetwork != null ? !mediatedNetwork.equals(mediatedNetwork2) : mediatedNetwork2 != null) {
            return false;
        }
        Bundle credentials = getCredentials();
        Bundle credentials2 = maxNetworkResponseInfoImpl.getCredentials();
        if (credentials != null ? !credentials.equals(credentials2) : credentials2 != null) {
            return false;
        }
        String bCode = getBCode();
        String bCode2 = maxNetworkResponseInfoImpl.getBCode();
        if (bCode != null ? !bCode.equals(bCode2) : bCode2 != null) {
            return false;
        }
        MaxError error = getError();
        MaxError error2 = maxNetworkResponseInfoImpl.getError();
        if (error != null ? error.equals(error2) : error2 == null) {
            return true;
        }
        return false;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public MaxNetworkResponseInfo.AdLoadState getAdLoadState() {
        return this.f8530a;
    }

    public String getBCode() {
        return this.f8535f;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public Bundle getCredentials() {
        return this.f8532c;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    @Nullable
    public MaxError getError() {
        return this.f8536g;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public long getLatencyMillis() {
        return this.f8534e;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public MaxMediatedNetworkInfo getMediatedNetwork() {
        return this.f8531b;
    }

    public int hashCode() {
        int i10;
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        if (isBidding()) {
            i10 = 79;
        } else {
            i10 = 97;
        }
        long latencyMillis = getLatencyMillis();
        int i11 = ((i10 + 59) * 59) + ((int) (latencyMillis ^ (latencyMillis >>> 32)));
        MaxNetworkResponseInfo.AdLoadState adLoadState = getAdLoadState();
        int i12 = i11 * 59;
        int i13 = 43;
        if (adLoadState == null) {
            hashCode = 43;
        } else {
            hashCode = adLoadState.hashCode();
        }
        int i14 = i12 + hashCode;
        MaxMediatedNetworkInfo mediatedNetwork = getMediatedNetwork();
        int i15 = i14 * 59;
        if (mediatedNetwork == null) {
            hashCode2 = 43;
        } else {
            hashCode2 = mediatedNetwork.hashCode();
        }
        int i16 = i15 + hashCode2;
        Bundle credentials = getCredentials();
        int i17 = i16 * 59;
        if (credentials == null) {
            hashCode3 = 43;
        } else {
            hashCode3 = credentials.hashCode();
        }
        int i18 = i17 + hashCode3;
        String bCode = getBCode();
        int i19 = i18 * 59;
        if (bCode == null) {
            hashCode4 = 43;
        } else {
            hashCode4 = bCode.hashCode();
        }
        int i20 = i19 + hashCode4;
        MaxError error = getError();
        int i21 = i20 * 59;
        if (error != null) {
            i13 = error.hashCode();
        }
        return i21 + i13;
    }

    @Override // com.applovin.mediation.MaxNetworkResponseInfo
    public boolean isBidding() {
        return this.f8533d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0044, code lost:
        if (r1 != 2) goto L6;
     */
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "MaxResponseInfo{adLoadState="
            r1.append(r2)
            com.applovin.mediation.MaxNetworkResponseInfo$AdLoadState r2 = r3.f8530a
            r1.append(r2)
            java.lang.String r2 = ", mediatedNetwork="
            r1.append(r2)
            com.applovin.mediation.MaxMediatedNetworkInfo r2 = r3.f8531b
            r1.append(r2)
            java.lang.String r2 = ", credentials="
            r1.append(r2)
            android.os.Bundle r2 = r3.f8532c
            r1.append(r2)
            java.lang.String r2 = ", isBidding="
            r1.append(r2)
            boolean r2 = r3.f8533d
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            int[] r1 = com.applovin.impl.mediation.MaxNetworkResponseInfoImpl.a.f8537a
            com.applovin.mediation.MaxNetworkResponseInfo$AdLoadState r2 = r3.f8530a
            int r2 = r2.ordinal()
            r1 = r1[r2]
            r2 = 1
            if (r1 == r2) goto L47
            r2 = 2
            if (r1 == r2) goto L51
            goto L5b
        L47:
            java.lang.String r1 = ", error="
            r0.append(r1)
            com.applovin.mediation.MaxError r1 = r3.f8536g
            r0.append(r1)
        L51:
            java.lang.String r1 = ", latencyMillis="
            r0.append(r1)
            long r1 = r3.f8534e
            r0.append(r1)
        L5b:
            java.lang.String r1 = "}"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.mediation.MaxNetworkResponseInfoImpl.toString():java.lang.String");
    }
}
