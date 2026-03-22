package wq;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import io.bidmachine.AdsType;
import io.bidmachine.ApiRequest;
import io.bidmachine.TrackEventType;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.analytics.events.SDKEvent;
import io.bidmachine.protobuf.sdk.Error;
/* compiled from: EventTrackerImpl.java */
/* loaded from: classes8.dex */
public class e implements b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private AdExtension.EventConfiguration f70124a;

    public e() {
        this(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String i(int i10) {
        return String.format("Sending event to server - %s", Integer.valueOf(i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String j(int i10, fr.a aVar) {
        return String.format("Sending error event to server - %s, error - %s", Integer.valueOf(i10), aVar);
    }

    @NonNull
    private static Error.Data l(@NonNull fr.a aVar) {
        return Error.Data.newBuilder().setCode(aVar.e()).setDescription(aVar.g()).build();
    }

    private static boolean m(@Nullable AdExtension.EventConfiguration eventConfiguration, final int i10, long j10, long j11, @Nullable AdsType adsType, @Nullable String str, @Nullable Double d10, @Nullable Struct struct, @Nullable final fr.a aVar) {
        if (eventConfiguration != null) {
            try {
                if (eventConfiguration.getActionsList().contains(Integer.valueOf(i10))) {
                    String url = eventConfiguration.getUrl();
                    if (TextUtils.isEmpty(url)) {
                        return false;
                    }
                    if (aVar == null) {
                        io.bidmachine.core.a.a(new hr.b() { // from class: wq.c
                            @Override // hr.b
                            public final Object get() {
                                String i11;
                                i11 = e.i(i10);
                                return i11;
                            }
                        });
                    } else {
                        io.bidmachine.core.a.a(new hr.b() { // from class: wq.d
                            @Override // hr.b
                            public final Object get() {
                                String j12;
                                j12 = e.j(i10, aVar);
                                return j12;
                            }
                        });
                    }
                    SDKEvent.Builder finishTime = SDKEvent.newBuilder().setAction(i10).setContext(eventConfiguration.getContext()).setStartTime(fr.e.o(j10)).setFinishTime(fr.e.o(j11));
                    if (adsType != null) {
                        finishTime.setAdType(StringValue.newBuilder().setValue(adsType.getName()).build());
                    }
                    if (!TextUtils.isEmpty(str)) {
                        finishTime.setNetwork(StringValue.newBuilder().setValue(str).build());
                    }
                    if (d10 != null) {
                        finishTime.setPrice(d10.doubleValue());
                    }
                    if (struct != null) {
                        finishTime.setCustomParams(struct);
                    }
                    if (aVar != null) {
                        Error.Builder error = Error.newBuilder().setError(l(aVar));
                        fr.a f10 = aVar.f();
                        if (f10 != null) {
                            error.setReason(l(f10));
                        }
                        finishTime.setError(error);
                    }
                    new ApiRequest.Builder().url(url).setMethod(NetworkRequest.Method.Post).setDataBinder(new ApiRequest.ApiEventDataBinder()).setRequestData(finishTime.build()).request();
                    return true;
                }
            } catch (Throwable th2) {
                io.bidmachine.core.a.m(th2);
            }
        }
        return false;
    }

    @Override // wq.b
    public void a(@NonNull k kVar, @NonNull TrackEventType trackEventType, @Nullable j jVar, @Nullable AdsType adsType, @Nullable fr.a aVar, @Nullable a aVar2) {
        long currentTimeMillis;
        long j10;
        String str;
        Double d10;
        Struct struct;
        if (aVar != null && !aVar.j()) {
            return;
        }
        if (jVar != null) {
            currentTimeMillis = jVar.c();
            j10 = jVar.b();
        } else {
            currentTimeMillis = System.currentTimeMillis();
            j10 = currentTimeMillis;
        }
        if (aVar2 != null) {
            str = aVar2.c();
            d10 = aVar2.d();
            struct = aVar2.b();
        } else {
            str = null;
            d10 = null;
            struct = null;
        }
        int actionValue = trackEventType.getActionValue();
        if (!m(kVar.getEventConfiguration(), actionValue, currentTimeMillis, j10, adsType, str, d10, struct, aVar)) {
            m(this.f70124a, actionValue, currentTimeMillis, j10, adsType, str, d10, struct, aVar);
        }
    }

    public void k(@Nullable AdExtension.EventConfiguration eventConfiguration) {
        if (eventConfiguration != null && eventConfiguration.equals(AdExtension.EventConfiguration.getDefaultInstance())) {
            eventConfiguration = null;
        }
        this.f70124a = eventConfiguration;
    }

    public e(@Nullable AdExtension.EventConfiguration eventConfiguration) {
        k(eventConfiguration);
    }
}
