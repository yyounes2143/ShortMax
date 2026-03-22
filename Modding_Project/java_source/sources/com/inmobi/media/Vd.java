package com.inmobi.media;

import android.content.ContentValues;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Vd extends AbstractC3140r4 {
    public Vd() {
        super("telemetry", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, eventType TEXT NOT NULL, payload TEXT NOT NULL, eventSource TEXT NOT NULL, ts TEXT NOT NULL)");
    }

    @Override // com.inmobi.media.T1
    public final Object a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("eventType");
        String asString2 = contentValues.getAsString("payload");
        String asString3 = contentValues.getAsString("eventSource");
        String asString4 = contentValues.getAsString(CampaignEx.JSON_KEY_ST_TS);
        Intrinsics.checkNotNullExpressionValue(asString4, "getAsString(...)");
        long parseLong = Long.parseLong(asString4);
        Intrinsics.checkNotNull(asString);
        Intrinsics.checkNotNull(asString3);
        Wd wd2 = new Wd(asString, asString2, asString3);
        wd2.f24239b = parseLong;
        Integer asInteger = contentValues.getAsInteger("id");
        Intrinsics.checkNotNullExpressionValue(asInteger, "getAsInteger(...)");
        wd2.f24240c = asInteger.intValue();
        return wd2;
    }

    @Override // com.inmobi.media.T1
    public final ContentValues b(Object obj) {
        Wd item = (Wd) obj;
        Intrinsics.checkNotNullParameter(item, "item");
        item.getClass();
        ContentValues contentValues = new ContentValues();
        contentValues.put("eventType", item.f24238a);
        contentValues.put("payload", item.a());
        contentValues.put("eventSource", item.f24345e);
        contentValues.put(CampaignEx.JSON_KEY_ST_TS, String.valueOf(item.f24239b));
        return contentValues;
    }
}
