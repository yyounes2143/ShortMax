package im;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import hm.k;
import hm.s;
import hm.u;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam_dynamic.InternalAd;
import io.bidmachine.protobuf.Waterfall;
/* compiled from: VersionWrapper.java */
/* loaded from: classes7.dex */
public interface b {
    void a(@NonNull Context context) throws Throwable;

    int b();

    @NonNull
    lr.a c();

    boolean d(@NonNull Context context);

    @Nullable
    InternalAd e(@NonNull s sVar, @NonNull u uVar, @NonNull AdsFormat adsFormat, @NonNull Waterfall.Configuration.AdUnit adUnit, @NonNull k kVar);

    @Nullable
    lr.a getVersion() throws Throwable;
}
