package com.inmobi.media;

import android.content.ContentValues;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.m2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3059m2 extends T1 {
    public C3059m2() {
        super("click", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, pending_attempts INTEGER NOT NULL, url TEXT NOT NULL, ping_in_webview TEXT NOT NULL, follow_redirect TEXT NOT NULL, ts TEXT NOT NULL, track_extras TEXT, created_ts TEXT NOT NULL )");
    }

    @Override // com.inmobi.media.T1
    public final Object a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        Integer asInteger = contentValues.getAsInteger("id");
        Integer asInteger2 = contentValues.getAsInteger("pending_attempts");
        String asString = contentValues.getAsString("url");
        Long asLong = contentValues.getAsLong(CampaignEx.JSON_KEY_ST_TS);
        Long asLong2 = contentValues.getAsLong("created_ts");
        Boolean asBoolean = contentValues.getAsBoolean("follow_redirect");
        Boolean asBoolean2 = contentValues.getAsBoolean("ping_in_webview");
        String asString2 = contentValues.getAsString("track_extras");
        HashMap hashMap = new HashMap();
        if (asString2 != null) {
            try {
                hashMap.putAll(a(new JSONObject(asString2)));
            } catch (JSONException unused) {
                Intrinsics.checkNotNullExpressionValue("m2", "TAG");
            } catch (Exception unused2) {
                Intrinsics.checkNotNullExpressionValue("m2", "TAG");
            }
        }
        Intrinsics.checkNotNull(asInteger);
        int intValue = asInteger.intValue();
        Intrinsics.checkNotNull(asString);
        Intrinsics.checkNotNull(asBoolean);
        boolean booleanValue = asBoolean.booleanValue();
        Intrinsics.checkNotNull(asBoolean2);
        boolean booleanValue2 = asBoolean2.booleanValue();
        Intrinsics.checkNotNull(asInteger2);
        int intValue2 = asInteger2.intValue();
        Intrinsics.checkNotNull(asLong);
        long longValue = asLong.longValue();
        Intrinsics.checkNotNull(asLong2);
        return new C3043l2(intValue, asString, hashMap, booleanValue, booleanValue2, intValue2, longValue, asLong2.longValue());
    }

    @Override // com.inmobi.media.T1
    public final ContentValues b(Object obj) {
        C3043l2 click = (C3043l2) obj;
        Intrinsics.checkNotNullParameter(click, "click");
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(click.f24943a));
        contentValues.put("url", click.f24944b);
        contentValues.put("pending_attempts", Integer.valueOf(click.f24948f));
        contentValues.put(CampaignEx.JSON_KEY_ST_TS, Long.valueOf(click.f24949g));
        contentValues.put("created_ts", Long.valueOf(click.f24950h));
        contentValues.put("follow_redirect", Boolean.valueOf(click.f24946d));
        contentValues.put("ping_in_webview", Boolean.valueOf(click.f24947e));
        Map map = click.f24945c;
        if (map != null && !map.isEmpty()) {
            Map map2 = click.f24945c;
            Intrinsics.checkNotNull(map2, "null cannot be cast to non-null type kotlin.collections.Map<*, *>");
            contentValues.put("track_extras", new JSONObject(map2).toString());
        }
        return contentValues;
    }

    public final ArrayList a(int i10, int i11) {
        if (T1.a(this, null, null, 63) == 0) {
            return new ArrayList();
        }
        Integer valueOf = -1 != i10 ? Integer.valueOf(i10) : null;
        ArrayList<C3043l2> a10 = T1.a(this, null, null, CampaignEx.JSON_KEY_ST_TS, "ts < " + (System.currentTimeMillis() - i11), "ts ASC ", valueOf, 3);
        ArrayList arrayList = new ArrayList();
        for (C3043l2 c3043l2 : a10) {
            if (c3043l2 != null) {
                arrayList.add(c3043l2);
            }
        }
        return arrayList;
    }

    public static HashMap a(JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Intrinsics.checkNotNull(next);
            Object obj = jSONObject.get(next);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            hashMap.put(next, (String) obj);
        }
        return hashMap;
    }
}
