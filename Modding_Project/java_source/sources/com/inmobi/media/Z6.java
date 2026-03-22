package com.inmobi.media;

import android.content.ContentValues;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Z6 extends T1 {

    /* renamed from: b  reason: collision with root package name */
    public C5 f24438b;

    static {
        Intrinsics.checkNotNullExpressionValue(Z6.class.getSimpleName(), "getSimpleName(...)");
    }

    public Z6() {
        super("logs_v2", "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, filename TEXT NOT NULL, saveTimestamp INTEGER NOT NULL, retryCount INTEGER NOT NULL, hasLoggerFinished INTEGER NOT NULL, checkpoints INTEGER NOT NULL,lastRetryTimestamp INTEGER NOT NULL )");
    }

    @Override // com.inmobi.media.T1
    public final Object a(ContentValues contentValues) {
        Intrinsics.checkNotNullParameter(contentValues, "contentValues");
        String asString = contentValues.getAsString("filename");
        Long asLong = contentValues.getAsLong("saveTimestamp");
        Integer asInteger = contentValues.getAsInteger("retryCount");
        Long asLong2 = contentValues.getAsLong("lastRetryTimestamp");
        Integer asInteger2 = contentValues.getAsInteger("checkpoints");
        Integer asInteger3 = contentValues.getAsInteger("hasLoggerFinished");
        boolean z10 = asInteger3 != null && asInteger3.intValue() == 1;
        Intrinsics.checkNotNull(asString);
        Intrinsics.checkNotNull(asLong);
        long longValue = asLong.longValue();
        Intrinsics.checkNotNull(asInteger);
        int intValue = asInteger.intValue();
        Intrinsics.checkNotNull(asLong2);
        long longValue2 = asLong2.longValue();
        Intrinsics.checkNotNull(asInteger2);
        return new Y6(asString, longValue, intValue, longValue2, z10, asInteger2.intValue());
    }

    @Override // com.inmobi.media.T1
    public final ContentValues b(Object obj) {
        Y6 item = (Y6) obj;
        Intrinsics.checkNotNullParameter(item, "item");
        ContentValues contentValues = new ContentValues();
        contentValues.put("filename", item.f24396a);
        contentValues.put("saveTimestamp", Long.valueOf(item.f24397b));
        contentValues.put("retryCount", Integer.valueOf(item.f24398c));
        contentValues.put("lastRetryTimestamp", Long.valueOf(item.f24399d));
        contentValues.put("checkpoints", Integer.valueOf(item.f24401f));
        contentValues.put("hasLoggerFinished", Integer.valueOf(item.f24400e ? 1 : 0));
        return contentValues;
    }

    public final void a(Y6 data) {
        Intrinsics.checkNotNullParameter(data, "data");
        a("filename=\"" + data.f24396a + '\"', null);
    }

    public final void b(Y6 data) {
        Intrinsics.checkNotNullParameter(data, "data");
        b(data, "filename=\"" + data.f24396a + '\"', null);
        if (this.f24438b != null) {
            C5.a();
        }
    }
}
