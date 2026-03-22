package io.bidmachine;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes7.dex */
public class NetworkAdUnitManager {
    @NonNull
    private final AtomicBoolean isNetworkAuctionNotified;
    @NonNull
    private final List<NetworkAdUnit> networkAdUnitList;
    @NonNull
    private final fr.j tag;

    public NetworkAdUnitManager() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public NetworkAdUnit findOrAddWinnerNetworkAdUnit(@NonNull NetworkAdapter networkAdapter, @NonNull AdsFormat adsFormat, @NonNull Map<String, String> map) {
        String str = map.get(ProtoExtConstants.AD_UNIT_ID);
        NetworkAdUnit networkAdUnit = null;
        if (!TextUtils.isEmpty(str)) {
            for (NetworkAdUnit networkAdUnit2 : this.networkAdUnitList) {
                if (networkAdUnit2.getId().equals(str)) {
                    networkAdUnit = networkAdUnit2;
                }
            }
        }
        if (networkAdUnit == null) {
            NetworkAdUnit networkAdUnit3 = new NetworkAdUnit(networkAdapter, adsFormat, map);
            this.networkAdUnitList.add(networkAdUnit3);
            return networkAdUnit3;
        }
        return networkAdUnit;
    }

    @NonNull
    @VisibleForTesting
    List<NetworkAdUnit> getNetworkAdUnitList() {
        return this.networkAdUnitList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyNetworkAuctionResult(@Nullable NetworkAdUnit networkAdUnit) {
        if (!this.isNetworkAuctionNotified.compareAndSet(false, true)) {
            return;
        }
        io.bidmachine.core.a.c(this.tag, "notifyNetworkAuctionResult");
        for (NetworkAdUnit networkAdUnit2 : this.networkAdUnitList) {
            if (networkAdUnit2 == networkAdUnit) {
                try {
                    networkAdUnit2.onWinAuction();
                } catch (Throwable unused) {
                }
            } else {
                networkAdUnit2.onLossAuction();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void notifyNetworkClearAuction() {
        if (this.networkAdUnitList.isEmpty()) {
            return;
        }
        io.bidmachine.core.a.c(this.tag, "notifyNetworkClearAuction");
        for (NetworkAdUnit networkAdUnit : this.networkAdUnitList) {
            try {
                networkAdUnit.clearAuction();
            } catch (Throwable unused) {
            }
        }
        this.networkAdUnitList.clear();
    }

    void setNetworkAdUnitList(@Nullable List<NetworkAdUnit> list) {
        this.networkAdUnitList.clear();
        if (!io.bidmachine.core.g.I(list)) {
            this.networkAdUnitList.addAll(list);
        }
    }

    public NetworkAdUnitManager(@Nullable List<NetworkAdUnit> list) {
        this.tag = new fr.j("NetworkAdUnitManager");
        this.isNetworkAuctionNotified = new AtomicBoolean(false);
        this.networkAdUnitList = new CopyOnWriteArrayList();
        setNetworkAdUnitList(list);
    }
}
