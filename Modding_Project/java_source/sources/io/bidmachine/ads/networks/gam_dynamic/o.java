package io.bidmachine.ads.networks.gam_dynamic;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdsFormat;
import io.bidmachine.NetworkAdUnit;
/* compiled from: GAMNetwork.java */
/* loaded from: classes7.dex */
interface o {
    void a();

    void b(@NonNull NetworkAdUnit networkAdUnit);

    void c(@NonNull NetworkAdUnit networkAdUnit, @NonNull z zVar);

    boolean d(@NonNull AdsFormat adsFormat, boolean z10);

    void e(@NonNull NetworkAdUnit networkAdUnit, @NonNull y yVar);

    @Nullable
    hm.j f(@NonNull NetworkAdUnit networkAdUnit, @NonNull AdsFormat adsFormat);

    void g(@NonNull NetworkAdUnit networkAdUnit, @NonNull w wVar);

    @Nullable
    String getVersion();

    void init(@NonNull Context context);

    boolean isInitialized();
}
