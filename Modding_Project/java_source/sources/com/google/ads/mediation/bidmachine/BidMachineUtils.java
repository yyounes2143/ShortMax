package com.google.ads.mediation.bidmachine;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.bidmachine.prebid.request.a;
import com.google.android.gms.ads.AdRequest;
/* loaded from: classes4.dex */
public final class BidMachineUtils {
    private static Object a(Bundle bundle, String str) {
        if (bundle != null && !TextUtils.isEmpty(str)) {
            return bundle.get(str);
        }
        return null;
    }

    public static void appendRequest(@NonNull AdRequest.Builder builder, @NonNull io.bidmachine.AdRequest<?, ?, ?> adRequest) {
        a.a(builder, adRequest);
    }

    @NonNull
    public static AdRequest createAdRequest(@NonNull io.bidmachine.AdRequest<?, ?, ?> adRequest) {
        return a.a(adRequest);
    }

    @NonNull
    public static AdRequest.Builder createAdRequestBuilder(@NonNull io.bidmachine.AdRequest<?, ?, ?> adRequest) {
        return a.b(adRequest);
    }

    @Nullable
    public static String getString(@Nullable Bundle bundle, @Nullable String str) {
        Object a10 = a(bundle, str);
        if (a10 instanceof String) {
            return (String) a10;
        }
        return null;
    }
}
