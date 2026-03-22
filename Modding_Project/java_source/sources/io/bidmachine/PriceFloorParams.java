package io.bidmachine;

import androidx.annotation.NonNull;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes7.dex */
public final class PriceFloorParams {
    private final Map<String, Double> priceFloorsMap = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public Map<String, Double> getPriceFloors() {
        return this.priceFloorsMap;
    }

    /* renamed from: addPriceFloor */
    public PriceFloorParams m4922addPriceFloor(double d10) {
        m4923addPriceFloor(UUID.randomUUID().toString(), d10);
        return this;
    }

    /* renamed from: addPriceFloor */
    public PriceFloorParams m4923addPriceFloor(@NonNull String str, double d10) {
        this.priceFloorsMap.put(str, Double.valueOf(d10));
        return this;
    }
}
