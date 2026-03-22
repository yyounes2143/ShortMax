package lp;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdRequest;
import io.bidmachine.CustomParams;
import io.bidmachine.PriceFloorParams;
import lp.f;
/* compiled from: RequestBuilder.java */
/* loaded from: classes8.dex */
public interface f<SelfType extends f, ReturnType extends AdRequest> {
    @NonNull
    SelfType setCustomParams(@Nullable CustomParams customParams);

    @NonNull
    SelfType setPlacementId(@Nullable String str);

    @NonNull
    SelfType setPriceFloorParams(@Nullable PriceFloorParams priceFloorParams);
}
