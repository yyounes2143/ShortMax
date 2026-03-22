package com.inmobi.media;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.z3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3267z3 extends SQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f25478a = 0;

    public C3267z3(Context context) {
        super(context, "com.im_10.8.7.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase db2) {
        Intrinsics.checkNotNullParameter(db2, "db");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase db2, int i10, int i11) {
        Intrinsics.checkNotNullParameter(db2, "db");
    }
}
