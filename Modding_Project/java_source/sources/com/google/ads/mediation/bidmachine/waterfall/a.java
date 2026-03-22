package com.google.ads.mediation.bidmachine.waterfall;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.ads.mediation.bidmachine.BidMachineUtils;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import io.bidmachine.BidMachine;
import io.bidmachine.InitializationCallback;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* loaded from: classes4.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final C0277a f16981a = new C0277a(null);

    /* renamed from: com.google.ads.mediation.bidmachine.waterfall.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public static final class C0277a {
        private C0277a() {
        }

        public /* synthetic */ C0277a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final String a(List list) {
        return a(b(list));
    }

    private final String a(Set set) {
        int size = set.size();
        if (size > 0) {
            String str = (String) set.iterator().next();
            if (size > 1) {
                Log.w("AdMobBMAdapter", "Multiple 'source_id' entries found: " + set + ". Using '" + str + "' to initialize the BidMachine SDK");
                return str;
            }
            return str;
        }
        return null;
    }

    private final Set b(List list) {
        ArrayList<MediationConfiguration> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((MediationConfiguration) obj).getServerParameters().containsKey(MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (MediationConfiguration mediationConfiguration : arrayList) {
            String a10 = a(mediationConfiguration);
            if (a10 != null) {
                arrayList2.add(a10);
            }
        }
        return CollectionsKt.b1(arrayList2);
    }

    private final String a(MediationConfiguration mediationConfiguration) {
        Bundle serverParameters = mediationConfiguration.getServerParameters();
        Intrinsics.checkNotNullExpressionValue(serverParameters, "getServerParameters(...)");
        Bundle a10 = com.google.ads.mediation.bidmachine.common.c.a(serverParameters);
        if (a10 != null) {
            return BidMachineUtils.getString(a10, "source_id");
        }
        return null;
    }

    public final void a(Context context, final InitializationCompleteCallback initializationCompleteCallback, List configurations) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initializationCompleteCallback, "initializationCompleteCallback");
        Intrinsics.checkNotNullParameter(configurations, "configurations");
        if (BidMachine.isInitialized()) {
            initializationCompleteCallback.onInitializationSucceeded();
            return;
        }
        String a10 = a(configurations);
        if (a10 == null || StringsKt.t0(a10)) {
            initializationCompleteCallback.onInitializationSucceeded();
            return;
        }
        BidMachine.setCoppa(Boolean.valueOf(MobileAds.getRequestConfiguration().getTagForChildDirectedTreatment() == 1));
        BidMachine.initialize(context, a10, new InitializationCallback() { // from class: com.google.ads.mediation.bidmachine.waterfall.g
            @Override // io.bidmachine.InitializationCallback
            public final void onInitialized() {
                a.a(InitializationCompleteCallback.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(InitializationCompleteCallback initializationCompleteCallback) {
        initializationCompleteCallback.onInitializationSucceeded();
    }
}
