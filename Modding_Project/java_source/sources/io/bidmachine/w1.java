package io.bidmachine;

import android.content.Context;
import androidx.annotation.NonNull;
import com.explorestack.protobuf.Struct;
import io.bidmachine.analytics.AnalyticsConfig;
import io.bidmachine.analytics.BidMachineAnalytics;
import io.bidmachine.analytics.MonitorConfig;
import io.bidmachine.analytics.ReaderConfig;
import io.bidmachine.protobuf.InitResponse;
import io.bidmachine.protobuf.sdk.Configuration;
import io.bidmachine.protobuf.sdk.Monitor;
import io.bidmachine.protobuf.sdk.Reader;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BidMachineAnalyticsInitializer.java */
/* loaded from: classes7.dex */
public class w1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(@NonNull Context context) {
        try {
            BidMachineAnalytics.initialize(context);
        } catch (Throwable unused) {
        }
    }

    @NonNull
    private List<MonitorConfig> c(@NonNull List<Monitor.Configuration> list) {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        for (Monitor.Configuration configuration : list) {
            if (configuration.hasShouldReport()) {
                z10 = configuration.getShouldReport().f();
            } else {
                z10 = false;
            }
            arrayList.add(new MonitorConfig(configuration.getName().getValue(), configuration.getUrl().getValue(), configuration.getBatchSize().getValue(), configuration.getInterval().getValue(), z10));
        }
        return arrayList;
    }

    @NonNull
    private List<ReaderConfig> d(@NonNull List<Reader.Configuration> list) {
        boolean z10;
        ArrayList arrayList = new ArrayList();
        for (Reader.Configuration configuration : list) {
            if (configuration.hasUniqueOnly()) {
                z10 = configuration.getUniqueOnly().f();
            } else {
                z10 = true;
            }
            arrayList.add(new ReaderConfig(configuration.getName().getValue(), configuration.getUrl().getValue(), configuration.getUpdateInterval().getValue(), z10, e(configuration.getRulesList())));
        }
        return arrayList;
    }

    @NonNull
    private List<ReaderConfig.Rule> e(@NonNull List<Reader.Rule> list) {
        ArrayList arrayList = new ArrayList();
        for (Reader.Rule rule : list) {
            if (rule.hasGeneralRule()) {
                Reader.Rule.GeneralRule generalRule = rule.getGeneralRule();
                arrayList.add(new ReaderConfig.Rule(generalRule.getTag().getValue(), generalRule.getPath().getValue()));
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(@NonNull Context context, @NonNull String str, @NonNull InitResponse initResponse, @NonNull String str2) {
        try {
            if (!initResponse.hasSdkAnalyticConfigV2()) {
                return;
            }
            Configuration sdkAnalyticConfigV2 = initResponse.getSdkAnalyticConfigV2();
            List<MonitorConfig> c10 = c(sdkAnalyticConfigV2.getMonitorsList());
            List<ReaderConfig> d10 = d(sdkAnalyticConfigV2.getReadersList());
            Struct struct = initResponse.getExtras().getPrivate();
            String value = sdkAnalyticConfigV2.getBpk().getValue();
            BidMachineAnalytics.configure(context, new AnalyticsConfig(str2, c10, d10, value, struct));
            if (!str.equals(str2)) {
                BidMachineAnalytics.configure(context, new AnalyticsConfig(str, c10, d10, value, struct));
            }
        } catch (Throwable unused) {
        }
    }
}
