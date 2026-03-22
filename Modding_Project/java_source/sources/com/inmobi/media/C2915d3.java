package com.inmobi.media;

import android.content.ContentValues;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.d3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2915d3 extends T1 {
    public C2915d3() {
        super("c_data", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, e_data TEXT NOT NULL, timestamp INTEGER NOT NULL )");
        Intrinsics.checkNotNullExpressionValue(C2915d3.class.getSimpleName(), "getSimpleName(...)");
    }

    @Override // com.inmobi.media.T1
    public final Object a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("e_data");
        Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
        Long asLong = contentValues.getAsLong("timestamp");
        Intrinsics.checkNotNullExpressionValue(asLong, "getAsLong(...)");
        return new C2997i4(asString, asLong.longValue());
    }

    @Override // com.inmobi.media.T1
    public final ContentValues b(Object obj) {
        C2997i4 data = (C2997i4) obj;
        Intrinsics.checkNotNullParameter(data, "data");
        ContentValues contentValues = new ContentValues();
        contentValues.put("e_data", data.f24852a);
        contentValues.put("timestamp", Long.valueOf(data.f24853b));
        return contentValues;
    }
}
