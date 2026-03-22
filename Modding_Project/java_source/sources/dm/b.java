package dm;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam.InternalGAMAd;
import io.bidmachine.ads.networks.gam.j;
import io.bidmachine.ads.networks.gam.t;
/* compiled from: VersionWrapper.java */
/* loaded from: classes7.dex */
public interface b {
    void a(@NonNull Context context) throws Throwable;

    int b();

    @NonNull
    lr.a c();

    boolean d(@NonNull Context context);

    @Nullable
    InternalGAMAd e(@NonNull j jVar, @NonNull AdsFormat adsFormat, @NonNull t tVar);

    @Nullable
    lr.a getVersion() throws Throwable;
}
