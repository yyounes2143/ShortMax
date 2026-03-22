package com.google.ads.mediation.bidmachine.prebid;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.ads.mediation.bidmachine.BidMachineUtils;
import com.google.android.gms.ads.mediation.MediationAdConfiguration;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import io.bidmachine.AdRequest;
import io.bidmachine.AdsType;
import io.bidmachine.BidMachineFetcher;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class a extends com.google.ads.mediation.bidmachine.common.a {
    /* JADX INFO: Access modifiers changed from: protected */
    public a(String str, AdsType adsType, MediationAdLoadCallback mediationAdLoadCallback) {
        super(str, adsType, mediationAdLoadCallback);
    }

    @Override // com.google.ads.mediation.bidmachine.common.a
    protected void a(AdsType adsType, MediationAdConfiguration mediationAdConfiguration, com.google.ads.mediation.bidmachine.common.b bVar) {
        Bundle mediationExtras = mediationAdConfiguration.getMediationExtras();
        if (!a(mediationExtras)) {
            bVar.a(fr.a.h("Skip line item (key 'bm_id' is not found in local extras)"));
            return;
        }
        Bundle a10 = com.google.ads.mediation.bidmachine.common.c.a(mediationAdConfiguration.getServerParameters());
        if (!a(a10, mediationExtras)) {
            bVar.a(fr.a.h("Skip line item (price does not matched)"));
            return;
        }
        AdRequest a11 = a(adsType, com.google.ads.mediation.bidmachine.common.c.a(a10, mediationExtras));
        if (a11 == null) {
            bVar.a(fr.a.h("Fetched AdRequest not found"));
            return;
        }
        String b10 = b();
        Log.d(b10, "Fetched request resolved: " + a11.getAuctionResult());
        a11.notifyMediationWin();
        bVar.onSuccess(a11);
    }

    private boolean a(Bundle bundle) {
        return bundle != null && bundle.containsKey(BidMachineFetcher.KEY_ID);
    }

    private boolean a(Bundle bundle, Bundle bundle2) {
        String string = bundle != null ? bundle.getString(BidMachineFetcher.KEY_PRICE) : null;
        String string2 = bundle2 != null ? bundle2.getString(BidMachineFetcher.KEY_PRICE) : null;
        if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
            Double a10 = com.google.ads.mediation.bidmachine.common.f.a((Object) string);
            Double a11 = com.google.ads.mediation.bidmachine.common.f.a((Object) string2);
            if (a10 != null && a11 != null) {
                String string3 = BidMachineUtils.getString(bundle, "bm_pf_compare");
                if (string3 == null) {
                    string3 = "equal_or_above_pf";
                }
                return string3.equals("equal_or_above_pf") ? a11.doubleValue() >= a10.doubleValue() : a10.equals(a11);
            }
        }
        return false;
    }

    private AdRequest a(AdsType adsType, Bundle bundle) {
        return a(adsType, bundle.get(BidMachineFetcher.KEY_ID));
    }

    private AdRequest a(AdsType adsType, Object obj) {
        if (obj != null) {
            return BidMachineFetcher.release(adsType, String.valueOf(obj));
        }
        return null;
    }
}
