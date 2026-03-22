package io.bidmachine.iab.vast.processor;

import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.iab.vast.TrackingEvent;
import io.bidmachine.iab.vast.tags.AdContentTag;
import io.bidmachine.iab.vast.tags.AdTag;
import io.bidmachine.iab.vast.tags.AdVerificationsExtensionTag;
import io.bidmachine.iab.vast.tags.AppodealExtensionTag;
import io.bidmachine.iab.vast.tags.CompanionAdsCreativeTag;
import io.bidmachine.iab.vast.tags.CompanionTag;
import io.bidmachine.iab.vast.tags.CreativeContentTag;
import io.bidmachine.iab.vast.tags.CreativeTag;
import io.bidmachine.iab.vast.tags.ExtensionTag;
import io.bidmachine.iab.vast.tags.InLineAdTag;
import io.bidmachine.iab.vast.tags.LinearCreativeTag;
import io.bidmachine.iab.vast.tags.MediaFileTag;
import io.bidmachine.iab.vast.tags.VastTag;
import io.bidmachine.iab.vast.tags.VideoClicksTag;
import io.bidmachine.iab.vast.tags.WrapperAdTag;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import tm.d;
import tm.g;
/* loaded from: classes7.dex */
public class a {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final io.bidmachine.iab.vast.a f54861a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final VastMediaPicker<MediaFileTag> f54862b;
    @VisibleForTesting

    /* renamed from: c  reason: collision with root package name */
    final int f54863c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    final Stack<AdContentTag> f54864d;

    /* renamed from: e  reason: collision with root package name */
    private int f54865e;

    public a(@NonNull io.bidmachine.iab.vast.a aVar, @NonNull VastMediaPicker<MediaFileTag> vastMediaPicker) {
        this(aVar, vastMediaPicker, 5);
    }

    @Nullable
    private Pair<LinearCreativeTag, MediaFileTag> a(@NonNull InLineAdTag inLineAdTag) {
        LinearCreativeTag linearCreativeTag;
        List<MediaFileTag> q02;
        List<CreativeTag> q03 = inLineAdTag.q0();
        if (q03 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (CreativeTag creativeTag : q03) {
            if (creativeTag != null) {
                CreativeContentTag Z = creativeTag.Z();
                if ((Z instanceof LinearCreativeTag) && (q02 = (linearCreativeTag = (LinearCreativeTag) Z).q0()) != null && !q02.isEmpty()) {
                    for (MediaFileTag mediaFileTag : q02) {
                        arrayList.add(new Pair(linearCreativeTag, mediaFileTag));
                    }
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        Pair<LinearCreativeTag, MediaFileTag> b10 = this.f54862b.b(arrayList);
        if (b10 != null) {
            return b10;
        }
        return new Pair<>(null, null);
    }

    @NonNull
    private b b(@Nullable AdContentTag adContentTag, @NonNull VastTag vastTag, @NonNull c cVar) {
        b bVar = new b();
        for (int i10 = 0; i10 < vastTag.Z().size(); i10++) {
            AdTag adTag = vastTag.Z().get(i10);
            if (adTag != null && adTag.Z() != null) {
                AdContentTag Z = adTag.Z();
                if (Z instanceof InLineAdTag) {
                    b i11 = i((InLineAdTag) Z);
                    if (i11.i()) {
                        return i11;
                    }
                    f(i11.a());
                    if (adContentTag != null) {
                        if (i11.f()) {
                            g h10 = i11.h();
                            if (h10 == null) {
                                h10 = g.f67428n;
                            }
                            bVar.c(adContentTag, h10);
                        }
                    } else {
                        bVar.d(i11.h());
                    }
                } else if ((Z instanceof WrapperAdTag) && cVar.c()) {
                    b c10 = c((WrapperAdTag) Z);
                    if (c10.i()) {
                        return c10;
                    }
                    f(c10.a());
                    if (adContentTag != null) {
                        if (c10.f()) {
                            g h11 = c10.h();
                            if (h11 == null) {
                                h11 = g.f67428n;
                            }
                            bVar.c(adContentTag, h11);
                        } else {
                            bVar.c(adContentTag, g.f67422h);
                        }
                    } else {
                        bVar.d(g.f67422h);
                    }
                    if (i10 == 0 && !cVar.b()) {
                        return bVar;
                    }
                }
                j(Z);
            }
        }
        if (bVar.h() == null && adContentTag != null) {
            bVar.c(adContentTag, g.f67422h);
        }
        return bVar;
    }

    @NonNull
    private ArrayList<String> d() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.f54864d.empty()) {
            return arrayList;
        }
        Iterator<AdContentTag> it = this.f54864d.iterator();
        while (it.hasNext()) {
            AdContentTag next = it.next();
            if (next != null && next.r0() != null) {
                arrayList.addAll(next.r0());
            }
        }
        return arrayList;
    }

    @NonNull
    private ArrayList<CompanionTag> e(@NonNull AdContentTag adContentTag) {
        ArrayList<CompanionTag> arrayList = new ArrayList<>();
        List<CreativeTag> q02 = adContentTag.q0();
        if (q02 == null) {
            return arrayList;
        }
        for (CreativeTag creativeTag : q02) {
            if (creativeTag != null) {
                CreativeContentTag Z = creativeTag.Z();
                if (Z instanceof CompanionAdsCreativeTag) {
                    arrayList.addAll(((CompanionAdsCreativeTag) Z).Z());
                }
            }
        }
        return arrayList;
    }

    private void g(@NonNull List<String> list, @NonNull CompanionAdsCreativeTag companionAdsCreativeTag) {
        List<String> k02;
        for (CompanionTag companionTag : companionAdsCreativeTag.Z()) {
            if (!companionTag.s0() && (k02 = companionTag.k0()) != null) {
                list.addAll(k02);
            }
        }
    }

    private void h(@NonNull Map<TrackingEvent, List<String>> map, @Nullable Map<TrackingEvent, List<String>> map2) {
        if (map2 != null && !map2.isEmpty()) {
            for (Map.Entry<TrackingEvent, List<String>> entry : map2.entrySet()) {
                TrackingEvent key = entry.getKey();
                List<String> list = map.get(key);
                if (list == null) {
                    list = new ArrayList<>();
                    map.put(key, list);
                }
                list.addAll(entry.getValue());
            }
        }
    }

    @NonNull
    private b i(@NonNull InLineAdTag inLineAdTag) {
        this.f54864d.push(inLineAdTag);
        b bVar = new b();
        Pair<LinearCreativeTag, MediaFileTag> a10 = a(inLineAdTag);
        if (a10 == null) {
            bVar.c(inLineAdTag, g.f67417c);
        } else if (a10.first == null && a10.second == null) {
            bVar.c(inLineAdTag, g.f67425k);
        } else {
            ArrayList<String> arrayList = new ArrayList<>();
            ArrayList<String> arrayList2 = new ArrayList<>();
            ArrayList<String> arrayList3 = new ArrayList<>();
            EnumMap<TrackingEvent, List<String>> enumMap = new EnumMap<>(TrackingEvent.class);
            ArrayList arrayList4 = new ArrayList();
            AppodealExtensionTag appodealExtensionTag = null;
            if (!this.f54864d.empty()) {
                Iterator<AdContentTag> it = this.f54864d.iterator();
                while (it.hasNext()) {
                    AdContentTag next = it.next();
                    if (next != null) {
                        if (next.u0() != null) {
                            arrayList.addAll(next.u0());
                        }
                        List<CreativeTag> q02 = next.q0();
                        if (q02 != null) {
                            for (CreativeTag creativeTag : q02) {
                                if (creativeTag != null) {
                                    CreativeContentTag Z = creativeTag.Z();
                                    if (Z instanceof LinearCreativeTag) {
                                        LinearCreativeTag linearCreativeTag = (LinearCreativeTag) Z;
                                        VideoClicksTag s02 = linearCreativeTag.s0();
                                        if (s02 != null && s02.a0() != null) {
                                            arrayList2.addAll(s02.a0());
                                        }
                                        h(enumMap, linearCreativeTag.r0());
                                    } else if (Z instanceof CompanionAdsCreativeTag) {
                                        g(arrayList3, (CompanionAdsCreativeTag) Z);
                                    }
                                }
                            }
                        }
                        List<ExtensionTag> s03 = next.s0();
                        if (s03 != null) {
                            for (ExtensionTag extensionTag : s03) {
                                if (extensionTag instanceof AppodealExtensionTag) {
                                    if (appodealExtensionTag == null) {
                                        appodealExtensionTag = (AppodealExtensionTag) extensionTag;
                                    }
                                } else if (extensionTag instanceof AdVerificationsExtensionTag) {
                                    arrayList4.add((AdVerificationsExtensionTag) extensionTag);
                                }
                            }
                        }
                    }
                }
            }
            VastAd vastAd = new VastAd((LinearCreativeTag) a10.first, (MediaFileTag) a10.second);
            vastAd.g(arrayList);
            vastAd.f(d());
            vastAd.b(arrayList2);
            vastAd.C(arrayList3);
            vastAd.c(enumMap);
            vastAd.e(e(inLineAdTag));
            vastAd.a(appodealExtensionTag);
            vastAd.A(arrayList4);
            bVar.b(vastAd);
        }
        return bVar;
    }

    private boolean k() {
        if (this.f54865e >= this.f54863c) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0132 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.NonNull
    @androidx.annotation.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    io.bidmachine.iab.vast.processor.b c(@androidx.annotation.NonNull io.bidmachine.iab.vast.tags.WrapperAdTag r10) {
        /*
            Method dump skipped, instructions count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.iab.vast.processor.a.c(io.bidmachine.iab.vast.tags.WrapperAdTag):io.bidmachine.iab.vast.processor.b");
    }

    @VisibleForTesting
    void f(@NonNull List<String> list) {
        this.f54861a.A(list, null);
    }

    @VisibleForTesting
    void j(AdContentTag adContentTag) {
        if (this.f54864d.empty()) {
            return;
        }
        int search = this.f54864d.search(adContentTag);
        for (int i10 = 0; i10 < search; i10++) {
            this.f54864d.pop();
        }
    }

    @NonNull
    public b l(@Nullable String str) {
        d.a("VastProcessor", "process", new Object[0]);
        b bVar = new b();
        try {
            VastTag b10 = io.bidmachine.iab.vast.tags.a.b(str);
            if (b10 != null && b10.a0()) {
                return b(null, b10, new c());
            }
            bVar.d(g.f67417c);
            return bVar;
        } catch (Exception unused) {
            bVar.d(g.f67416b);
            return bVar;
        }
    }

    @VisibleForTesting
    a(@NonNull io.bidmachine.iab.vast.a aVar, @NonNull VastMediaPicker<MediaFileTag> vastMediaPicker, int i10) {
        this.f54865e = 0;
        this.f54861a = aVar;
        this.f54862b = vastMediaPicker;
        this.f54863c = i10;
        this.f54864d = new Stack<>();
    }
}
