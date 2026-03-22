package io.bidmachine;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.inmobi.InMobiNetworkKeys;
import com.vungle.ads.internal.model.Cookie;
import java.util.List;
/* compiled from: IABSharedPreference.java */
/* loaded from: classes7.dex */
interface x3 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f58718a = {"IABConsent_SubjectToGDPR", Cookie.IABTCF_GDPR_APPLIES, "IABConsent_ConsentString", "IABTCF_TCString", InMobiNetworkKeys.IAB_US_PRIVACY_STRING, "IABGPP_HDR_GppString", "IABGPP_GppSID"};

    void a(@NonNull Context context);

    @Nullable
    String b();

    @Nullable
    String c();

    @Nullable
    Boolean d();

    @Nullable
    String e();

    @Nullable
    Boolean f();

    @Nullable
    String g();

    @Nullable
    List<Integer> h();
}
