package ym;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.iab.omid.library.appodeal.Omid;
import com.iab.omid.library.appodeal.adsession.Partner;
import io.bidmachine.BuildConfig;
import io.bidmachine.ExtraParamsManager;
import io.bidmachine.ProtoExtConstants;
import io.bidmachine.core.g;
import io.bidmachine.protobuf.sdk.SDK;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: OMSDKSettings.java */
/* loaded from: classes7.dex */
public class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicBoolean f71002a = new AtomicBoolean(false);
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicBoolean f71003b = new AtomicBoolean(false);
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static Partner f71004c;

    /* compiled from: OMSDKSettings.java */
    /* renamed from: ym.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    class RunnableC0976a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f71005a;

        RunnableC0976a(Context context) {
            this.f71005a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (Omid.isActive()) {
                    return;
                }
                Omid.activate(this.f71005a);
                Omid.updateLastActivity();
                Partner unused = a.f71004c = Partner.createPartner("Appodeal", BuildConfig.OMSDK_VERSION_NAME);
                a.f71003b.set(true);
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
    }

    public static void c(@NonNull SDK.Builder builder) {
        builder.setOmidpn("Appodeal");
        builder.setOmidpv(BuildConfig.OMSDK_VERSION_NAME);
    }

    public static void d(@NonNull Struct.Builder builder) {
        builder.putFields(ProtoExtConstants.Source.OMID_PN, Value.newBuilder().setStringValue("Appodeal").build());
        builder.putFields(ProtoExtConstants.Source.OMID_PV, Value.newBuilder().setStringValue(BuildConfig.OMSDK_VERSION_NAME).build());
    }

    @Nullable
    public static Partner e() {
        return f71004c;
    }

    public static void f(@NonNull Context context) {
        if (!f71002a.compareAndSet(false, true)) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (ExtraParamsManager.get().getInternalDataRetriever(applicationContext).l("omsdk_disabled", false)) {
            return;
        }
        g.Z(new RunnableC0976a(applicationContext));
    }

    public static boolean g() {
        return f71003b.get();
    }
}
