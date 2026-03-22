package hm;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.protobuf.Waterfall;
/* compiled from: GAMUtils.java */
/* loaded from: classes7.dex */
public class a {
    @NonNull
    public static String a(@NonNull Waterfall.Configuration.AdUnit adUnit) {
        return "adUnitId - " + adUnit.getAdUnitId() + ", price - " + adUnit.getPrice();
    }

    @NonNull
    public static String b(@NonNull Waterfall.Result.AdUnit adUnit) {
        return "adUnitId - " + adUnit.getAdUnitId() + ", price - " + adUnit.getPrice() + ", status - " + adUnit.getStatus();
    }

    @NonNull
    public static String c(@Nullable Waterfall.Result.EstimatedPrice estimatedPrice) {
        if (estimatedPrice == null) {
            return "estimated price - null";
        }
        return "estimated price - " + estimatedPrice.getValue().getValue() + " " + estimatedPrice.getCurrency().getValue() + ", precision - " + estimatedPrice.getPrecision().getValue();
    }
}
