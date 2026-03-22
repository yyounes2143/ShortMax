package com.inmobi.media;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
/* renamed from: com.inmobi.media.c9  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2904c9 extends C2920d8 {
    public final boolean A;
    public final boolean B;
    public final boolean C;
    public int D;
    public int E;
    public HashMap F;

    /* renamed from: x  reason: collision with root package name */
    public final boolean f24551x;

    /* renamed from: y  reason: collision with root package name */
    public final ArrayList f24552y;

    /* renamed from: z  reason: collision with root package name */
    public boolean f24553z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2904c9(String assetId, String assetName, C2887b9 assetStyle, Ve ve2, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, ArrayList arrayList, boolean z15) {
        super(assetId, assetName, "VIDEO", assetStyle, 16);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        this.f24551x = z15;
        this.f24582e = ve2;
        Intrinsics.checkNotNullParameter("EXTERNAL", "<set-?>");
        this.f24584g = "EXTERNAL";
        this.f24553z = z10;
        this.A = z11;
        this.B = z12;
        this.C = z13;
        this.f24552y = new ArrayList();
        Map map = null;
        this.f24593p = ve2 != null ? ((Ue) ve2).f24289k : null;
        ArrayList<U8> trackers = ve2 != null ? ((Ue) ve2).f24286h : null;
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                U8 u82 = (U8) it.next();
                if (Intrinsics.areEqual("OMID_VIEWABILITY", u82.f24261b)) {
                    map = u82.f24262c;
                    if (!TextUtils.isEmpty(u82.f24263d) && TypeIntrinsics.isMutableList(trackers)) {
                        trackers.add(u82);
                    }
                } else if (TypeIntrinsics.isMutableList(trackers)) {
                    trackers.add(u82);
                }
            }
        }
        if (trackers != null) {
            for (U8 u83 : trackers) {
                if (Intrinsics.areEqual("OMID_VIEWABILITY", u83.f24261b)) {
                    u83.f24262c = map;
                }
            }
        }
        if (trackers != null && !trackers.isEmpty()) {
            Intrinsics.checkNotNullParameter(trackers, "trackers");
            this.f24596s.addAll(trackers);
        }
        HashMap hashMap = this.f24597t;
        hashMap.put("placementType", (byte) 0);
        hashMap.put("lastVisibleTimestamp", Integer.MIN_VALUE);
        Boolean bool = Boolean.FALSE;
        hashMap.put("visible", bool);
        hashMap.put("seekPosition", 0);
        hashMap.put("didStartPlaying", bool);
        hashMap.put("didPause", bool);
        hashMap.put("didCompleteQ1", bool);
        hashMap.put("didCompleteQ2", bool);
        hashMap.put("didCompleteQ3", bool);
        hashMap.put("didCompleteQ4", bool);
        hashMap.put("didRequestFullScreen", bool);
        hashMap.put("isFullScreen", bool);
        hashMap.put("didImpressionFire", bool);
        hashMap.put("mapViewabilityParams", new HashMap());
        hashMap.put("didSignalVideoCompleted", bool);
        hashMap.put("shouldAutoPlay", Boolean.valueOf(z14));
        hashMap.put("lastMediaVolume", 0);
        hashMap.put("currentMediaVolume", 0);
        hashMap.put("didQ4Fire", bool);
    }

    public final void a(HashMap hashMap) {
        this.F = new HashMap(hashMap);
    }

    public final int b() {
        return this.D;
    }

    public final boolean c() {
        if (this.f24551x) {
            return this.f24553z && !Uc.o();
        }
        return this.f24553z;
    }

    public final void d(int i10) {
        this.E = i10;
    }

    public final void a(C2904c9 source) {
        HashMap hashMap;
        Intrinsics.checkNotNullParameter(source, "source");
        this.f24597t.putAll(source.f24597t);
        HashMap hashMap2 = source.F;
        if (hashMap2 != null && (hashMap = this.F) != null) {
            hashMap.putAll(hashMap2);
        }
        ArrayList trackers = source.f24596s;
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        this.f24596s.addAll(trackers);
    }

    public final Ve d() {
        Object obj = this.f24582e;
        if (obj instanceof Ve) {
            return (Ve) obj;
        }
        return null;
    }

    public final void c(int i10) {
        this.D = i10;
    }
}
