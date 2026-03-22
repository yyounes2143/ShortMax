package com.inmobi.media;

import android.content.ContentValues;
import com.adjust.sdk.Constants;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Pa extends T1 {
    public Pa() {
        super("pings", "(id TEXT PRIMARY KEY,url TEXT NOT NULL,headers TEXT,allow_redirects TEXT NOT NULL,priority TEXT NOT NULL,ack_required TEXT NOT NULL,time_created INTEGER NOT NULL,owner TEXT NOT NULL,retry_count INTEGER DEFAULT 0,retryAfter INTEGER DEFAULT 0,telemetry_metadata TEXT)");
    }

    @Override // com.inmobi.media.T1
    public final Object a(ContentValues contentValues) {
        long j10;
        Long l10;
        C2989hc c2989hc;
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("id");
        String asString2 = contentValues.getAsString("url");
        JSONObject jSONObject = new JSONObject(contentValues.getAsString(IVideoEventLogger.GEAR_STRATEGY_KEY_HEADERS));
        Intrinsics.checkNotNullParameter(jSONObject, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> keys = jSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(keys, "keys(...)");
        while (true) {
            String str = "";
            if (!keys.hasNext()) {
                break;
            }
            String next = keys.next();
            Intrinsics.checkNotNull(next);
            String string = jSONObject.getString(next);
            if (string != null) {
                Intrinsics.checkNotNull(string);
                str = string;
            }
            linkedHashMap.put(next, str);
        }
        boolean parseBoolean = Boolean.parseBoolean(contentValues.getAsString("allow_redirects"));
        String asString3 = contentValues.getAsString(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY);
        boolean parseBoolean2 = Boolean.parseBoolean(contentValues.getAsString("ack_required"));
        Integer asInteger = contentValues.getAsInteger("retry_count");
        int intValue = asInteger == null ? 0 : asInteger.intValue();
        String asString4 = contentValues.getAsString("owner");
        if (asString4 == null) {
            asString4 = "unknown";
        }
        String str2 = asString4;
        Long asLong = contentValues.getAsLong("retryAfter");
        Long asLong2 = contentValues.getAsLong("time_created");
        Intrinsics.checkNotNull(asString2);
        Intrinsics.checkNotNull(asString);
        Intrinsics.checkNotNull(asString3);
        Intrinsics.checkNotNull(asLong2);
        long longValue = asLong2.longValue();
        String json = contentValues.getAsString("telemetry_metadata");
        if (json != null) {
            Intrinsics.checkNotNullParameter(json, "json");
            try {
                JSONObject jSONObject2 = new JSONObject(json);
                l10 = asLong;
                try {
                    String string2 = jSONObject2.getString("adType");
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                    j10 = longValue;
                    try {
                        Z a10 = new X(string2).a(jSONObject2.getLong("plId")).a();
                        String string3 = jSONObject2.getString("markupType");
                        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                        String optString = jSONObject2.optString("metadataBlob", "");
                        Intrinsics.checkNotNullExpressionValue(optString, "optString(...)");
                        String string4 = jSONObject2.getString("creativeType");
                        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
                        String string5 = jSONObject2.getString("creativeId");
                        Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
                        c2989hc = new C2989hc(a10, string3, optString, 0, string4, string5, jSONObject2.getBoolean("isRewarded"), jSONObject2.getInt("adPosition"), null, null, null);
                    } catch (JSONException unused) {
                    }
                } catch (JSONException unused2) {
                    j10 = longValue;
                }
            } catch (JSONException unused3) {
            }
            return new C3274za(asString2, asString, linkedHashMap, parseBoolean, asString3, parseBoolean2, intValue, str2, j10, l10, c2989hc);
        }
        j10 = longValue;
        l10 = asLong;
        c2989hc = null;
        return new C3274za(asString2, asString, linkedHashMap, parseBoolean, asString3, parseBoolean2, intValue, str2, j10, l10, c2989hc);
    }

    @Override // com.inmobi.media.T1
    public final ContentValues b(Object obj) {
        long j10;
        C3274za item = (C3274za) obj;
        Intrinsics.checkNotNullParameter(item, "item");
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", item.f25505b);
        contentValues.put("url", item.f25504a);
        Map map = item.f25506c;
        Intrinsics.checkNotNullParameter(map, "<this>");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry entry : map.entrySet()) {
            jSONObject.put((String) entry.getKey(), (String) entry.getValue());
        }
        contentValues.put(IVideoEventLogger.GEAR_STRATEGY_KEY_HEADERS, jSONObject.toString());
        contentValues.put("allow_redirects", String.valueOf(item.f25507d));
        contentValues.put(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, item.f25508e);
        contentValues.put("ack_required", String.valueOf(item.f25509f));
        contentValues.put("time_created", Long.valueOf(item.f25512i));
        contentValues.put("retry_count", Integer.valueOf(item.f25510g));
        contentValues.put("owner", item.f25511h);
        Long l10 = item.f25513j;
        if (l10 != null) {
            j10 = l10.longValue();
        } else {
            j10 = 0;
        }
        contentValues.put("retryAfter", Long.valueOf(j10));
        C2989hc c2989hc = item.f25514k;
        if (c2989hc != null) {
            String jSONObject2 = new JSONObject().put("plType", c2989hc.f24816a.m()).put("plId", c2989hc.f24816a.l()).put("adType", c2989hc.f24816a.b()).put("markupType", c2989hc.f24817b).put("networkType", L3.q()).put("creativeType", c2989hc.f24820e).put("creativeId", c2989hc.f24821f).put("isRewarded", c2989hc.f24822g).put("adPosition", c2989hc.f24823h).put("metadataBlob", c2989hc.f24818c).toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
            contentValues.put("telemetry_metadata", jSONObject2);
        }
        return contentValues;
    }

    public final ArrayList a(Integer num) {
        Intrinsics.checkNotNullParameter(Constants.HIGH, HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY);
        return T1.a(this, "priority = ? AND retry_count >= ? AND retryAfter <= ?", new String[]{Constants.HIGH, "1", String.valueOf(System.currentTimeMillis())}, null, null, "time_created ASC", num, 12);
    }

    public final C3274za a(String priority) {
        Intrinsics.checkNotNullParameter(priority, "priority");
        C3274za c3274za = (C3274za) CollectionsKt.firstOrNull(T1.a(this, "priority = ?", new String[]{priority}, null, null, "time_created ASC", 1, 12));
        if (c3274za != null) {
            a("id = ?", new String[]{c3274za.f25505b});
            return c3274za;
        }
        return null;
    }
}
