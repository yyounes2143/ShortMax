package com.inmobi.media;

import com.inmobi.ads.InMobiAdRequestStatus;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class V {

    /* renamed from: a  reason: collision with root package name */
    public final P9 f24291a;

    /* renamed from: b  reason: collision with root package name */
    public final InMobiAdRequestStatus f24292b;

    public V(P9 mResponse) {
        String str;
        Intrinsics.checkNotNullParameter(mResponse, "mResponse");
        this.f24291a = mResponse;
        I9 i92 = mResponse.f23982d;
        if (i92 != null) {
            switch (U.f24227a[i92.f23737a.ordinal()]) {
                case 1:
                    this.f24292b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE);
                    return;
                case 2:
                    InMobiAdRequestStatus inMobiAdRequestStatus = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_INVALID);
                    this.f24292b = inMobiAdRequestStatus;
                    I9 i93 = mResponse.f23982d;
                    if (i93 != null) {
                        str = i93.f23738b;
                    } else {
                        str = null;
                    }
                    if (str != null) {
                        inMobiAdRequestStatus.setCustomMessage(str);
                        return;
                    }
                    return;
                case 3:
                    this.f24292b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT);
                    return;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    this.f24292b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.SERVER_ERROR);
                    return;
                case 9:
                    this.f24292b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.GDPR_COMPLIANCE_ENFORCED);
                    return;
                default:
                    this.f24292b = new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR);
                    return;
            }
        }
    }
}
