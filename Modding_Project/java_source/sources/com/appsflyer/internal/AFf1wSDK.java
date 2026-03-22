package com.appsflyer.internal;

import android.adservices.measurement.MeasurementManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.OutcomeReceiver;
import androidx.annotation.RequiresApi;
import com.appsflyer.AFLogger;
import com.appsflyer.internal.AFe1rSDK;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@RequiresApi(33)
@Metadata
@SourceDebugExtension({"SMAP\nRegisterTriggerTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegisterTriggerTask.kt\ncom/appsflyer/internal/components/queue/tasks/RegisterTriggerTask\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,169:1\n215#2,2:170\n*S KotlinDebug\n*F\n+ 1 RegisterTriggerTask.kt\ncom/appsflyer/internal/components/queue/tasks/RegisterTriggerTask\n*L\n163#1:170,2\n*E\n"})
/* loaded from: classes2.dex */
public final class AFf1wSDK extends AFe1mSDK<Unit> {
    @NotNull
    public AFg1nSDK areAllFieldsValid;
    @NotNull
    public AFc1oSDK component1;
    @NotNull
    public AFe1rSDK component2;
    @NotNull
    public Executor component3;
    @NotNull
    public AFc1hSDK component4;
    @NotNull
    public Function1<AFe1uSDK, Unit> equals;
    @NotNull
    public AFf1eSDK toString;

    /* loaded from: classes2.dex */
    public static final class AFa1uSDK implements OutcomeReceiver {
        private /* synthetic */ Ref.ObjectRef<AFe1uSDK> AFAdRevenueData;
        private /* synthetic */ CountDownLatch getCurrencyIso4217Code;
        private /* synthetic */ AFf1wSDK getRevenue;

        AFa1uSDK(Ref.ObjectRef<AFe1uSDK> objectRef, CountDownLatch countDownLatch, AFf1wSDK aFf1wSDK) {
            this.AFAdRevenueData = objectRef;
            this.getCurrencyIso4217Code = countDownLatch;
            this.getRevenue = aFf1wSDK;
        }

        public final /* synthetic */ void onError(Throwable th2) {
            Exception exc = (Exception) th2;
            Intrinsics.checkNotNullParameter(exc, "");
            AFf1wSDK.getMediationNetwork(exc);
            this.getCurrencyIso4217Code.countDown();
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.appsflyer.internal.AFe1uSDK, T] */
        public final void onResult(@NotNull Object obj) {
            Intrinsics.checkNotNullParameter(obj, "");
            this.AFAdRevenueData.element = AFe1uSDK.SUCCESS;
            AFLogger.INSTANCE.d(AFg1cSDK.PRIVACY_SANDBOX, "Privacy Sandbox trigger has been registered successfully. ", true);
            this.getCurrencyIso4217Code.countDown();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AFf1wSDK(@NotNull AFe1rSDK aFe1rSDK, @NotNull Executor executor, @NotNull AFc1oSDK aFc1oSDK, @NotNull AFc1hSDK aFc1hSDK, @NotNull AFg1nSDK aFg1nSDK, @NotNull AFf1eSDK aFf1eSDK, @NotNull Function1<? super AFe1uSDK, Unit> function1) {
        super(AFe1pSDK.REGISTER_TRIGGER, new AFe1pSDK[]{AFe1pSDK.RC_CDN, AFe1pSDK.FETCH_ADVERTISING_ID}, null);
        Intrinsics.checkNotNullParameter(aFe1rSDK, "");
        Intrinsics.checkNotNullParameter(executor, "");
        Intrinsics.checkNotNullParameter(aFc1oSDK, "");
        Intrinsics.checkNotNullParameter(aFc1hSDK, "");
        Intrinsics.checkNotNullParameter(aFg1nSDK, "");
        Intrinsics.checkNotNullParameter(aFf1eSDK, "");
        Intrinsics.checkNotNullParameter(function1, "");
        this.component2 = aFe1rSDK;
        this.component3 = executor;
        this.component1 = aFc1oSDK;
        this.component4 = aFc1hSDK;
        this.areAllFieldsValid = aFg1nSDK;
        this.toString = aFf1eSDK;
        this.equals = function1;
        if (aFe1rSDK instanceof AFe1rSDK.AFa1tSDK) {
            this.AFAdRevenueData.add(AFe1pSDK.CONVERSION);
        }
        if (this.component2 instanceof AFe1rSDK.AFa1uSDK) {
            this.getCurrencyIso4217Code.add(AFe1pSDK.CONVERSION);
        }
        if (this.component2 instanceof AFe1rSDK.AFa1zSDK) {
            this.getCurrencyIso4217Code.add(AFe1pSDK.INAPP);
        }
    }

    public static final /* synthetic */ void getMediationNetwork(Throwable th2) {
        AFLogger aFLogger = AFLogger.INSTANCE;
        AFg1cSDK aFg1cSDK = AFg1cSDK.PRIVACY_SANDBOX;
        String message = th2.getMessage();
        aFLogger.e(aFg1cSDK, "Error occurred: " + message, th2, false, false, false, true);
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final long AFAdRevenueData() {
        return 20000L;
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final void getCurrencyIso4217Code() {
        super.getCurrencyIso4217Code();
        AFe1uSDK aFe1uSDK = this.getMonetizationNetwork;
        if (aFe1uSDK != null) {
            this.equals.invoke(aFe1uSDK);
        }
    }

    @Override // com.appsflyer.internal.AFe1mSDK
    public final boolean getMonetizationNetwork() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.appsflyer.internal.AFe1uSDK, T] */
    /* JADX WARN: Type inference failed for: r0v4, types: [com.appsflyer.internal.AFe1uSDK, T] */
    @Override // com.appsflyer.internal.AFe1mSDK
    @SuppressLint({"NewApi"})
    @NotNull
    public final AFe1uSDK getRevenue() {
        MeasurementManager a10;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = AFe1uSDK.FAILURE;
        CountDownLatch countDownLatch = new CountDownLatch(1);
        try {
            Context context = this.component4.getMonetizationNetwork;
            if (context != null && (a10 = androidx.privacysandbox.ads.adservices.measurement.n.a(context.getSystemService(androidx.privacysandbox.ads.adservices.measurement.m.a()))) != null) {
                new AFj1cSDK(this.component1, null, 2, null);
                Uri.Builder buildUpon = Uri.parse(AFj1cSDK.getMediationNetwork()).buildUpon();
                String areAllFieldsValid = this.component1.areAllFieldsValid();
                if (areAllFieldsValid == null) {
                    areAllFieldsValid = "";
                }
                Map o10 = p0.o(ms.k.a("event_name", this.component2.getRevenue), ms.k.a("app_id", this.component1.getCurrencyIso4217Code.getMonetizationNetwork.getPackageName()), ms.k.a("app_version", this.component1.n_().versionName), ms.k.a("sdk_version", AFc1oSDK.getMonetizationNetwork()), ms.k.a("api_version", AFc1oSDK.getCurrencyIso4217Code()), ms.k.a("timestamp", String.valueOf(this.areAllFieldsValid.getCurrencyIso4217Code())), ms.k.a("request_id", AFc1oSDK.getMediationNetwork()), ms.k.a("gaid", areAllFieldsValid));
                String currencyIso4217Code = AFb1kSDK.getCurrencyIso4217Code(this.component1.getMediationNetwork);
                if (currencyIso4217Code != null) {
                    o10.put("appsflyer_id", currencyIso4217Code);
                }
                Long monetizationNetwork = this.areAllFieldsValid.getMonetizationNetwork();
                if (monetizationNetwork != null) {
                    o10.put("install_time", String.valueOf(monetizationNetwork.longValue()));
                }
                AFe1rSDK aFe1rSDK = this.component2;
                if (aFe1rSDK instanceof AFe1rSDK.AFa1zSDK) {
                    Float f10 = ((AFe1rSDK.AFa1zSDK) aFe1rSDK).getCurrencyIso4217Code;
                    if (f10 != null) {
                        o10.put("event_revenue", String.valueOf(f10.floatValue()));
                    }
                    Integer num = ((AFe1rSDK.AFa1zSDK) this.component2).AFAdRevenueData;
                    if (num != null) {
                        o10.put("event_count", String.valueOf(num.intValue()));
                    }
                }
                for (Map.Entry entry : o10.entrySet()) {
                    buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
                }
                Uri build = buildUpon.build();
                Intrinsics.checkNotNullExpressionValue(build, "");
                a10.registerTrigger(build, this.component3, androidx.core.os.b.a(new AFa1uSDK(objectRef, countDownLatch, this)));
            }
            countDownLatch.await(4L, TimeUnit.SECONDS);
        } catch (InterruptedException unused) {
            objectRef.element = AFe1uSDK.TIMEOUT;
        } catch (Throwable th2) {
            AFLogger aFLogger = AFLogger.INSTANCE;
            AFg1cSDK aFg1cSDK = AFg1cSDK.PRIVACY_SANDBOX;
            String message = th2.getMessage();
            aFLogger.e(aFg1cSDK, "Error occurred: " + message, th2, false, false, false, true);
        }
        return (AFe1uSDK) objectRef.element;
    }
}
