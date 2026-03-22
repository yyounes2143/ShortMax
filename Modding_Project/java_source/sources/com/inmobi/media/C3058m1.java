package com.inmobi.media;

import android.content.ContentValues;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.m1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3058m1 extends T1 {
    public C3058m1() {
        super("asset", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, pending_attempts INTEGER NOT NULL, url TEXT NOT NULL, disk_uri TEXT, ts TEXT NOT NULL, created_ts TEXT NOT NULL, ttl TEXT NOT NULL, soft_ttl TEXT NOT NULL)");
    }

    @Override // com.inmobi.media.T1
    public final Object a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        Integer asInteger = contentValues.getAsInteger("id");
        Integer asInteger2 = contentValues.getAsInteger("pending_attempts");
        String asString = contentValues.getAsString("url");
        String asString2 = contentValues.getAsString("disk_uri");
        Long asLong = contentValues.getAsLong(CampaignEx.JSON_KEY_ST_TS);
        Long asLong2 = contentValues.getAsLong("created_ts");
        Long asLong3 = contentValues.getAsLong("ttl");
        Long asLong4 = contentValues.getAsLong("soft_ttl");
        Intrinsics.checkNotNull(asInteger);
        int intValue = asInteger.intValue();
        Intrinsics.checkNotNull(asString);
        Intrinsics.checkNotNull(asInteger2);
        int intValue2 = asInteger2.intValue();
        Intrinsics.checkNotNull(asLong);
        long longValue = asLong.longValue();
        Intrinsics.checkNotNull(asLong2);
        long longValue2 = asLong2.longValue();
        Intrinsics.checkNotNull(asLong3);
        long longValue3 = asLong3.longValue();
        Intrinsics.checkNotNull(asLong4);
        return new C3008j(intValue, asString, asString2, intValue2, longValue, longValue2, longValue3, asLong4.longValue());
    }

    @Override // com.inmobi.media.T1
    public final ContentValues b(Object obj) {
        C3008j adAsset = (C3008j) obj;
        Intrinsics.checkNotNullParameter(adAsset, "adAsset");
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(adAsset.f24868a));
        contentValues.put("url", adAsset.f24869b);
        contentValues.put("disk_uri", adAsset.f24870c);
        contentValues.put("pending_attempts", Integer.valueOf(adAsset.f24871d));
        contentValues.put(CampaignEx.JSON_KEY_ST_TS, String.valueOf(adAsset.f24872e));
        contentValues.put("created_ts", String.valueOf(adAsset.f24873f));
        contentValues.put("ttl", String.valueOf(adAsset.f24874g));
        contentValues.put("soft_ttl", String.valueOf(adAsset.f24875h));
        return contentValues;
    }

    public final ArrayList a() {
        ArrayList a10 = T1.a(this, null, null, null, null, "created_ts DESC ", null, 47);
        ArrayList arrayList = new ArrayList();
        for (Object obj : a10) {
            C3008j c3008j = (C3008j) obj;
            if (c3008j != null && c3008j.a()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C3008j c3008j2 = (C3008j) it.next();
            if (c3008j2 != null) {
                arrayList2.add(c3008j2);
            }
        }
        return arrayList2;
    }

    public final ArrayList b() {
        ArrayList a10 = T1.a(this, null, null, null, null, "ts ASC ", null, 47);
        ArrayList arrayList = new ArrayList();
        for (Object obj : a10) {
            C3008j c3008j = (C3008j) obj;
            if (c3008j != null && !c3008j.a()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C3008j c3008j2 = (C3008j) it.next();
            if (c3008j2 != null) {
                arrayList2.add(c3008j2);
            }
        }
        return arrayList2;
    }

    public final C3008j a(String remoteUrl) {
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        ArrayList a10 = T1.a(this, "url=? ", new String[]{remoteUrl}, null, null, "created_ts DESC ", 1, 12);
        if (a10.isEmpty()) {
            return null;
        }
        return (C3008j) a10.get(0);
    }

    public final C3008j b(String remoteUrl) {
        Intrinsics.checkNotNullParameter(remoteUrl, "remoteUrl");
        ArrayList a10 = T1.a(this, "url=? ", new String[]{remoteUrl}, null, null, "created_ts DESC ", 1, 12);
        if (a10.isEmpty()) {
            return null;
        }
        return (C3008j) a10.get(0);
    }

    public final void a(C3008j asset) {
        Intrinsics.checkNotNullParameter(asset, "asset");
        b(asset, "url = ?", new String[]{asset.f24869b.toString()});
    }
}
