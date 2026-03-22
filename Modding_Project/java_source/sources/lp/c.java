package lp;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.CreativeFormat;
import java.util.Map;
/* compiled from: AuctionResult.java */
/* loaded from: classes8.dex */
public interface c {
    @NonNull
    String a();

    @NonNull
    Map<String, String> b();

    @Nullable
    CreativeFormat c();

    @NonNull
    String getCreativeId();

    @NonNull
    Map<String, String> getCustomParams();

    @Nullable
    String getDeal();

    @NonNull
    String getId();

    double getPrice();
}
