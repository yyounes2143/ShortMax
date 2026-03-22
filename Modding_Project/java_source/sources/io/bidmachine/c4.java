package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.ConnectionType;
import com.explorestack.protobuf.adcom.Context;
import com.explorestack.protobuf.adcom.DeviceType;
import com.explorestack.protobuf.adcom.OS;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import io.bidmachine.ApiRequest;
import io.bidmachine.c4;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.protobuf.InitRequest;
import io.bidmachine.protobuf.InitResponse;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InitialRequest.java */
/* loaded from: classes7.dex */
public class c4 {

    /* renamed from: j  reason: collision with root package name */
    private static final long f54391j;

    /* renamed from: k  reason: collision with root package name */
    private static final long f54392k;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Context f54393a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final String f54394b;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final Queue<String> f54397e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final Queue<String> f54398f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private c f54399g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private ApiRequest<InitRequest, InitResponse> f54400h;

    /* renamed from: i  reason: collision with root package name */
    private long f54401i = 0;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final wq.k f54395c = new BidMachineTrackingObject();
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final Runnable f54396d = new b(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InitialRequest.java */
    /* loaded from: classes7.dex */
    public class a implements Runnable {

        /* compiled from: InitialRequest.java */
        /* renamed from: io.bidmachine.c4$a$a  reason: collision with other inner class name */
        /* loaded from: classes7.dex */
        class C0789a implements NetworkRequest.b<InitResponse, fr.a> {
            C0789a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ String c(long j10) {
                return String.format("reschedule init request (%s)", Long.valueOf(j10));
            }

            @Override // io.bidmachine.core.NetworkRequest.b
            /* renamed from: d */
            public void a(@Nullable fr.a aVar) {
                final long j10;
                c4.this.f54400h = null;
                if (c4.this.f54398f.isEmpty()) {
                    j10 = c4.this.j();
                    io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.b4
                        @Override // hr.b
                        public final Object get() {
                            String c10;
                            c10 = c4.a.C0789a.c(j10);
                            return c10;
                        }
                    });
                    if (c4.this.f54399g != null) {
                        c4.this.f54399g.a(aVar);
                    }
                } else {
                    j10 = 0;
                }
                io.bidmachine.core.g.Y(c4.this.f54396d, j10);
                c4.this.f54395c.eventFinish(TrackEventType.InitLoading, null, null, aVar);
            }

            @Override // io.bidmachine.core.NetworkRequest.b
            /* renamed from: e */
            public void onSuccess(@Nullable InitResponse initResponse) {
                c4.this.f54400h = null;
                c4.this.f54401i = 0L;
                io.bidmachine.core.g.g(c4.this.f54396d);
                if (c4.this.f54399g != null) {
                    c4.this.f54399g.onSuccess(initResponse);
                }
                c4.this.f54395c.eventFinish(TrackEventType.InitLoading, null, null, null);
            }
        }

        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c4.this.f54400h = new ApiRequest.Builder().url(c4.this.q()).setDataBinder(new ApiRequest.ApiInitDataBinder()).setRequestData(c4.this.l()).setCallback(new C0789a()).request();
        }
    }

    /* compiled from: InitialRequest.java */
    /* loaded from: classes7.dex */
    private static class b implements Runnable {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<c4> f54404a;

        public b(@NonNull c4 c4Var) {
            this.f54404a = new WeakReference<>(c4Var);
        }

        @Override // java.lang.Runnable
        public void run() {
            c4 c4Var = this.f54404a.get();
            if (c4Var != null) {
                c4Var.r();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InitialRequest.java */
    /* loaded from: classes7.dex */
    public interface c extends NetworkRequest.b<InitResponse, fr.a> {
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f54391j = timeUnit.toMillis(2L);
        f54392k = timeUnit.toMillis(128L);
    }

    public c4(@NonNull Context context, @NonNull String str, @NonNull Queue<String> queue) {
        this.f54393a = context;
        this.f54394b = str;
        this.f54397e = new LinkedList(queue);
        this.f54398f = new LinkedList(queue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long j() {
        long j10 = this.f54401i;
        if (j10 <= 0) {
            this.f54401i = f54391j;
        } else {
            long j11 = j10 * 2;
            this.f54401i = j11;
            long j12 = f54392k;
            if (j11 >= j12) {
                this.f54401i = j12;
            }
        }
        return this.f54401i;
    }

    @NonNull
    private Struct k(@NonNull Context context) {
        Struct.Builder newBuilder = Struct.newBuilder();
        newBuilder.putFields("networks_info", Value.newBuilder().setListValue(m(context)).build());
        return newBuilder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public InitRequest l() {
        DeviceType deviceType;
        ConnectionType connectionType;
        AdvertisingDataManager.d(this.f54393a);
        j2 e10 = j2.e();
        v5 u10 = e10.u();
        TargetingParams s10 = e10.s();
        InitRequest.Builder newBuilder = InitRequest.newBuilder();
        String packageName = this.f54393a.getPackageName();
        if (packageName != null) {
            newBuilder.setBundle(packageName);
        }
        newBuilder.setSellerId(this.f54394b);
        newBuilder.setOs(OS.OS_ANDROID);
        newBuilder.setOsv(fr.c.h());
        String u11 = io.bidmachine.core.g.u(this.f54393a);
        if (u11 != null) {
            newBuilder.setAppVer(u11);
        }
        newBuilder.setSdk(BidMachine.NAME);
        newBuilder.setSdkver("3.4.0");
        newBuilder.setIfa(AdvertisingDataManager.a(this.f54393a, !u10.b()));
        String j10 = e10.j();
        if (!TextUtils.isEmpty(j10)) {
            newBuilder.setIfv(j10);
        }
        newBuilder.setBmIfv(e10.I(this.f54393a));
        newBuilder.setSessionId(SessionManager.get().getSessionId());
        DeviceInfo obtain = DeviceInfo.obtain(this.f54393a);
        String str = obtain.manufacturer;
        if (str != null) {
            newBuilder.setMake(str);
        }
        String str2 = obtain.model;
        if (str2 != null) {
            newBuilder.setModel(str2);
        }
        String hwv = obtain.getHWV();
        if (hwv != null) {
            newBuilder.setHwv(hwv);
        }
        if (obtain.isTablet) {
            deviceType = DeviceType.DEVICE_TYPE_TABLET;
        } else {
            deviceType = DeviceType.DEVICE_TYPE_PHONE_DEVICE;
        }
        newBuilder.setDeviceType(deviceType);
        if (u10.a()) {
            ConnectionType b10 = fr.c.b(this.f54393a);
            newBuilder.setContype(b10);
            connectionType = b10;
        } else {
            connectionType = null;
        }
        if (u10.c()) {
            Context.Geo.Builder b11 = fr.e.b(this.f54393a, s10.getDeviceLocation(), null, true);
            s10.build(b11);
            newBuilder.setGeo(b11);
        }
        newBuilder.setContext(RequestDataRetriever.collectContext(this.f54393a, e10, u10, s10, connectionType, null));
        newBuilder.setAndroid(o(this.f54393a));
        newBuilder.setExt(k(this.f54393a));
        return newBuilder.build();
    }

    @NonNull
    private ListValue.Builder m(@NonNull android.content.Context context) {
        ListValue.Builder newBuilder = ListValue.newBuilder();
        for (l4 l4Var : k4.e(context).values()) {
            newBuilder.addValues(n(l4Var.c(), l4Var.d(), l4Var.a()));
        }
        newBuilder.addValues(n(CampaignEx.JSON_KEY_MRAID, "3.4.0", "3.4.0.1"));
        newBuilder.addValues(n("vast", "3.4.0", "3.4.0.1"));
        newBuilder.addValues(n("nast", "1.0", "3.4.0.1"));
        newBuilder.addValues(n("adaptive_rendering", "3.4.0", "3.4.0.1"));
        return newBuilder;
    }

    @NonNull
    private Value n(@NonNull String str, @NonNull String str2, @NonNull String str3) {
        Value build = Value.newBuilder().setStringValue(str).build();
        Value build2 = Value.newBuilder().setStringValue(str2).build();
        return Value.newBuilder().setStructValue(Struct.newBuilder().putFields("network", build).putFields("network_version", build2).putFields("network_adapter_version", Value.newBuilder().setStringValue(str3).build()).build()).build();
    }

    @NonNull
    private InitRequest.AndroidPlatformData o(@NonNull android.content.Context context) {
        PlatformData platformData = PlatformData.get(context);
        final InitRequest.AndroidPlatformData.Builder newBuilder = InitRequest.AndroidPlatformData.newBuilder();
        Integer minSdkVersion = platformData.getMinSdkVersion();
        Objects.requireNonNull(newBuilder);
        io.bidmachine.core.g.H(minSdkVersion, new Executable() { // from class: io.bidmachine.z3
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                InitRequest.AndroidPlatformData.Builder.this.setMinApiLevel(((Integer) obj).intValue());
            }
        });
        io.bidmachine.core.g.H(platformData.kotlinVersion, new Executable() { // from class: io.bidmachine.a4
            @Override // io.bidmachine.Executable
            public final void execute(Object obj) {
                InitRequest.AndroidPlatformData.Builder.this.setKotlinVersion((String) obj);
            }
        });
        return newBuilder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String q() {
        if (this.f54398f.isEmpty()) {
            this.f54398f.addAll(this.f54397e);
        }
        return this.f54398f.poll();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() {
        this.f54399g = null;
        this.f54400h = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        this.f54395c.eventStart(TrackEventType.InitLoading, null);
        io.bidmachine.core.g.X(new a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(@Nullable c cVar) {
        this.f54399g = cVar;
    }
}
