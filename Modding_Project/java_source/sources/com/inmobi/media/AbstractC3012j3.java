package com.inmobi.media;

import com.mbridge.msdk.mbbid.out.BidResponsed;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
/* renamed from: com.inmobi.media.j3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3012j3 {
    public static JSONArray a(C2996i3 it, List skipList) {
        Intrinsics.checkNotNullParameter(it, "it");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        JSONArray jSONArray = new JSONArray();
        List list = C2996i3.f24842j;
        Intrinsics.checkNotNullParameter("ac", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("ac")) {
            jSONArray.put(it.f24843a);
        }
        Intrinsics.checkNotNullParameter(BidResponsed.KEY_BID_ID, "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains(BidResponsed.KEY_BID_ID)) {
            jSONArray.put(it.f24844b);
        }
        Intrinsics.checkNotNullParameter("its", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("its")) {
            jSONArray.put(it.f24845c);
        }
        Intrinsics.checkNotNullParameter("vtm", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("vtm")) {
            jSONArray.put(it.f24846d);
        }
        Intrinsics.checkNotNullParameter("plid", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("plid")) {
            jSONArray.put(it.f24847e);
        }
        Intrinsics.checkNotNullParameter("catid", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("catid")) {
            jSONArray.put(it.f24848f);
        }
        Intrinsics.checkNotNullParameter("hcd", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("hcd")) {
            jSONArray.put(it.f24849g);
        }
        Intrinsics.checkNotNullParameter("hsv", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("hsv")) {
            jSONArray.put(it.f24850h);
        }
        Intrinsics.checkNotNullParameter("hcv", "key");
        Intrinsics.checkNotNullParameter(skipList, "skipList");
        if (!skipList.contains("hcv")) {
            jSONArray.put(it.f24851i);
        }
        return jSONArray;
    }
}
