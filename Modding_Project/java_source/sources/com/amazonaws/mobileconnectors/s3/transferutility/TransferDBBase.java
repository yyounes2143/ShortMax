package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
/* loaded from: classes2.dex */
class TransferDBBase {

    /* renamed from: f  reason: collision with root package name */
    private static final Log f5638f = LogFactory.b(TransferDBBase.class);

    /* renamed from: g  reason: collision with root package name */
    private static final Object f5639g = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Context f5640a;

    /* renamed from: b  reason: collision with root package name */
    private final Uri f5641b;

    /* renamed from: c  reason: collision with root package name */
    private final UriMatcher f5642c;

    /* renamed from: d  reason: collision with root package name */
    private final TransferDatabaseHelper f5643d;

    /* renamed from: e  reason: collision with root package name */
    private SQLiteDatabase f5644e;

    public TransferDBBase(Context context) {
        this.f5640a = context;
        String packageName = context.getApplicationContext().getPackageName();
        TransferDatabaseHelper transferDatabaseHelper = new TransferDatabaseHelper(context);
        this.f5643d = transferDatabaseHelper;
        this.f5644e = transferDatabaseHelper.getWritableDatabase();
        this.f5641b = Uri.parse("content://" + packageName + DomExceptionUtils.SEPARATOR + "transfers");
        UriMatcher uriMatcher = new UriMatcher(-1);
        this.f5642c = uriMatcher;
        uriMatcher.addURI(packageName, "transfers", 10);
        uriMatcher.addURI(packageName, "transfers/#", 20);
        uriMatcher.addURI(packageName, "transfers/part/#", 30);
        uriMatcher.addURI(packageName, "transfers/state/*", 40);
    }

    private void c() {
        synchronized (f5639g) {
            try {
                if (!this.f5644e.isOpen()) {
                    this.f5644e = this.f5643d.getWritableDatabase();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public int a(Uri uri, ContentValues[] contentValuesArr) {
        int match = this.f5642c.match(uri);
        c();
        if (match == 10) {
            int i10 = 0;
            try {
                try {
                    this.f5644e.beginTransaction();
                    i10 = (int) this.f5644e.insertOrThrow("awstransfer", null, contentValuesArr[0]);
                    for (int i11 = 1; i11 < contentValuesArr.length; i11++) {
                        contentValuesArr[i11].put("main_upload_id", Integer.valueOf(i10));
                        this.f5644e.insertOrThrow("awstransfer", null, contentValuesArr[i11]);
                    }
                    this.f5644e.setTransactionSuccessful();
                } catch (Exception e10) {
                    f5638f.b("bulkInsert error : ", e10);
                }
                this.f5644e.endTransaction();
                return i10;
            } catch (Throwable th2) {
                this.f5644e.endTransaction();
                throw th2;
            }
        }
        throw new IllegalArgumentException("Unknown URI: " + uri);
    }

    public int b(Uri uri, String str, String[] strArr) {
        int match = this.f5642c.match(uri);
        c();
        if (match != 10) {
            if (match == 20) {
                String lastPathSegment = uri.getLastPathSegment();
                if (TextUtils.isEmpty(str)) {
                    SQLiteDatabase sQLiteDatabase = this.f5644e;
                    return sQLiteDatabase.delete("awstransfer", "_id=" + lastPathSegment, null);
                }
                SQLiteDatabase sQLiteDatabase2 = this.f5644e;
                return sQLiteDatabase2.delete("awstransfer", "_id=" + lastPathSegment + " and " + str, strArr);
            }
            throw new IllegalArgumentException("Unknown URI: " + uri);
        }
        return this.f5644e.delete("awstransfer", str, strArr);
    }

    public Uri d() {
        return this.f5641b;
    }

    public Uri e(Uri uri, ContentValues contentValues) {
        int match = this.f5642c.match(uri);
        c();
        if (match == 10) {
            long insertOrThrow = this.f5644e.insertOrThrow("awstransfer", null, contentValues);
            return Uri.parse("transfers/" + insertOrThrow);
        }
        throw new IllegalArgumentException("Unknown URI: " + uri);
    }

    public Cursor f(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("awstransfer");
        int match = this.f5642c.match(uri);
        if (match != 10) {
            if (match != 20) {
                if (match != 30) {
                    if (match == 40) {
                        sQLiteQueryBuilder.appendWhere("state=");
                        sQLiteQueryBuilder.appendWhereEscapeString(uri.getLastPathSegment());
                    } else {
                        throw new IllegalArgumentException("Unknown URI: " + uri);
                    }
                } else {
                    sQLiteQueryBuilder.appendWhere("main_upload_id=" + uri.getLastPathSegment());
                }
            } else {
                sQLiteQueryBuilder.appendWhere("_id=" + uri.getLastPathSegment());
            }
        } else {
            sQLiteQueryBuilder.appendWhere("part_num=0");
        }
        c();
        return sQLiteQueryBuilder.query(this.f5644e, strArr, str, strArr2, null, null, str2);
    }

    public synchronized int g(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int update;
        try {
            int match = this.f5642c.match(uri);
            c();
            if (match != 10) {
                if (match == 20) {
                    String lastPathSegment = uri.getLastPathSegment();
                    if (TextUtils.isEmpty(str)) {
                        SQLiteDatabase sQLiteDatabase = this.f5644e;
                        update = sQLiteDatabase.update("awstransfer", contentValues, "_id=" + lastPathSegment, null);
                    } else {
                        SQLiteDatabase sQLiteDatabase2 = this.f5644e;
                        update = sQLiteDatabase2.update("awstransfer", contentValues, "_id=" + lastPathSegment + " and " + str, strArr);
                    }
                } else {
                    throw new IllegalArgumentException("Unknown URI: " + uri);
                }
            } else {
                update = this.f5644e.update("awstransfer", contentValues, str, strArr);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return update;
    }
}
