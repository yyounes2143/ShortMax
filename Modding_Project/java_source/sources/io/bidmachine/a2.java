package io.bidmachine;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.ApiRequest;
import io.bidmachine.core.NetworkRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BidMachineEventTracker.java */
/* loaded from: classes7.dex */
public class a2 implements wq.b {
    @Nullable
    private static List<String> k(@NonNull wq.k kVar, @NonNull TrackEventType trackEventType) {
        ArrayList arrayList;
        List<String> t10 = j2.e().t(trackEventType);
        if (t10 != null) {
            arrayList = new ArrayList(t10);
        } else {
            arrayList = null;
        }
        List<String> trackingUrls = kVar.getTrackingUrls(trackEventType);
        if (trackingUrls != null) {
            if (arrayList == null) {
                return new ArrayList(trackingUrls);
            }
            arrayList.addAll(trackingUrls);
            return arrayList;
        }
        return arrayList;
    }

    private static void l(@Nullable String str, @Nullable NetworkRequest.b<String, fr.a> bVar) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        new ApiRequest.Builder().url(str).setMethod(NetworkRequest.Method.Get).setDataBinder(new ApiRequest.ApiTrackerDataBinder()).setCallback(bVar).request();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String m(int i10, fr.a aVar) {
        return String.format("Dispatching error event to server - (%s-%s) - %s", Integer.valueOf(i10), Integer.valueOf(aVar.e()), aVar.g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String n(TrackEventType trackEventType) {
        return String.format("Dispatching event to server - %s", trackEventType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String o(fr.a aVar) {
        return String.format("Dispatching tracking fail to server - %s", aVar);
    }

    @NonNull
    private static String p(@NonNull String str, @NonNull String str2, @NonNull Object obj) {
        String replace = str.replace("${" + str2 + "}", String.valueOf(obj));
        return replace.replace("%24%7B" + str2 + "%7D", String.valueOf(obj));
    }

    @NonNull
    private static String q(@NonNull String str, @Nullable Map<String, Object> map) {
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (!TextUtils.isEmpty(key) && value != null) {
                    str = p(str, key, value);
                }
            }
        }
        return str;
    }

    @Nullable
    @VisibleForTesting
    static String r(@Nullable String str, @Nullable wq.j jVar, int i10, int i11, @Nullable wq.a aVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String p10 = p(p(p(str, Constants.URL_MACROS_BM_EVENT_CODE, Integer.valueOf(i10)), Constants.URL_MACROS_BM_ACTION_CODE, Integer.valueOf(i10)), Constants.URL_MACROS_BM_ERROR_REASON, Integer.valueOf(i11));
        if (aVar != null) {
            String c10 = aVar.c();
            if (c10 != null) {
                p10 = p(p10, Constants.URL_MACROS_AUCTION_SEAT_ID, c10);
            }
            Double d10 = aVar.d();
            if (d10 != null) {
                p10 = p(p10, Constants.URL_MACROS_AUCTION_PRICE, d10);
            }
        }
        if (jVar != null) {
            return q(p(p(p10, Constants.URL_MACROS_BM_ACTION_START, Long.valueOf(jVar.c())), Constants.URL_MACROS_BM_ACTION_FINISH, Long.valueOf(jVar.b())), jVar.a());
        }
        return p10;
    }

    private static void s(@Nullable List<String> list, @Nullable List<String> list2, @Nullable wq.j jVar, final int i10, @NonNull final fr.a aVar) {
        if (list == null || !aVar.j()) {
            return;
        }
        io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.x1
            @Override // hr.b
            public final Object get() {
                String m10;
                m10 = a2.m(i10, aVar);
                return m10;
            }
        });
        for (String str : list) {
            l(r(str, jVar, i10, aVar.e(), null), new b(list2, jVar));
        }
    }

    private static void t(@Nullable List<String> list, @Nullable List<String> list2, @Nullable wq.j jVar, @NonNull final TrackEventType trackEventType, @Nullable wq.a aVar) {
        if (list == null) {
            return;
        }
        io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.y1
            @Override // hr.b
            public final Object get() {
                String n10;
                n10 = a2.n(TrackEventType.this);
                return n10;
            }
        });
        for (String str : list) {
            l(r(str, jVar, trackEventType.getActionValue(), -1, aVar), new a(list2, jVar, trackEventType));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void u(@Nullable List<String> list, @Nullable wq.j jVar, int i10, @NonNull final fr.a aVar) {
        if (list == null || !aVar.j()) {
            return;
        }
        io.bidmachine.core.a.a(new hr.b() { // from class: io.bidmachine.z1
            @Override // hr.b
            public final Object get() {
                String o10;
                o10 = a2.o(fr.a.this);
                return o10;
            }
        });
        for (String str : list) {
            l(r(str, jVar, i10, aVar.e(), null), null);
        }
    }

    @Override // wq.b
    public void a(@NonNull wq.k kVar, @NonNull TrackEventType trackEventType, @Nullable wq.j jVar, @Nullable AdsType adsType, @Nullable fr.a aVar, @Nullable wq.a aVar2) {
        if (aVar != null) {
            s(k(kVar, TrackEventType.Error), k(kVar, TrackEventType.TrackingError), jVar, trackEventType.getActionValue(), aVar);
        } else {
            t(k(kVar, trackEventType), k(kVar, TrackEventType.TrackingError), jVar, trackEventType, aVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BidMachineEventTracker.java */
    /* loaded from: classes7.dex */
    public class a implements NetworkRequest.b<String, fr.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f53595a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ wq.j f53596b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ TrackEventType f53597c;

        a(List list, wq.j jVar, TrackEventType trackEventType) {
            this.f53595a = list;
            this.f53596b = jVar;
            this.f53597c = trackEventType;
        }

        @Override // io.bidmachine.core.NetworkRequest.b
        /* renamed from: b */
        public void a(@Nullable fr.a aVar) {
            if (aVar == null) {
                aVar = fr.a.i("Failed to track URL");
            }
            a2.u(this.f53595a, this.f53596b, this.f53597c.getActionValue(), aVar);
        }

        @Override // io.bidmachine.core.NetworkRequest.b
        /* renamed from: c */
        public void onSuccess(@Nullable String str) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BidMachineEventTracker.java */
    /* loaded from: classes7.dex */
    public class b implements NetworkRequest.b<String, fr.a> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f53598a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ wq.j f53599b;

        b(List list, wq.j jVar) {
            this.f53598a = list;
            this.f53599b = jVar;
        }

        @Override // io.bidmachine.core.NetworkRequest.b
        /* renamed from: b */
        public void a(@Nullable fr.a aVar) {
            if (aVar == null) {
                aVar = fr.a.i("Failed to track URL");
            }
            a2.u(this.f53598a, this.f53599b, TrackEventType.Error.getActionValue(), aVar);
        }

        @Override // io.bidmachine.core.NetworkRequest.b
        /* renamed from: c */
        public void onSuccess(@Nullable String str) {
        }
    }
}
