package com.inmobi.media;

import com.adjust.sdk.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Le {

    /* renamed from: h  reason: collision with root package name */
    public static final List f23820h = CollectionsKt.q("image/jpeg", "image/png", "image/jpg");

    /* renamed from: a  reason: collision with root package name */
    public final int f23821a;

    /* renamed from: b  reason: collision with root package name */
    public final int f23822b;

    /* renamed from: d  reason: collision with root package name */
    public final String f23824d;

    /* renamed from: g  reason: collision with root package name */
    public boolean f23827g;

    /* renamed from: c  reason: collision with root package name */
    public String f23823c = null;

    /* renamed from: e  reason: collision with root package name */
    public final ArrayList f23825e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    public final ArrayList f23826f = new ArrayList();

    public Le(int i10, int i11, String str) {
        this.f23821a = i10;
        this.f23822b = i11;
        this.f23824d = str;
    }

    public final ArrayList a(int i10) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f23825e.iterator();
        while (it.hasNext()) {
            Ke ke2 = (Ke) it.next();
            if (ke2.f23788a == i10) {
                arrayList.add(ke2);
            }
        }
        return arrayList;
    }

    public final String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.f23824d;
            if (str != null) {
                jSONObject.put("id", str);
            }
            jSONObject.put("width", this.f23821a);
            jSONObject.put("height", this.f23822b);
            jSONObject.put("clickThroughUrl", this.f23823c);
            JSONArray jSONArray = new JSONArray();
            Iterator it = this.f23825e.iterator();
            while (it.hasNext()) {
                jSONArray.put(((Ke) it.next()).toString());
            }
            jSONObject.put("resources", jSONArray);
            JSONArray jSONArray2 = new JSONArray();
            Iterator it2 = this.f23826f.iterator();
            while (it2.hasNext()) {
                jSONArray2.put(((U8) it2.next()).toString());
            }
            jSONObject.put(Constants.ADJUST_PREINSTALL_CONTENT_URI_PATH, jSONArray2);
            String jSONObject2 = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
            return jSONObject2;
        } catch (JSONException e10) {
            Intrinsics.checkNotNullExpressionValue("Le", "TAG");
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
            return "";
        }
    }

    public final ArrayList a(String trackerEventType) {
        Intrinsics.checkNotNullParameter(trackerEventType, "trackerEventType");
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f23826f.iterator();
        while (it.hasNext()) {
            U8 u82 = (U8) it.next();
            if (Intrinsics.areEqual(u82.f24261b, trackerEventType)) {
                arrayList.add(u82);
            }
        }
        return arrayList;
    }
}
