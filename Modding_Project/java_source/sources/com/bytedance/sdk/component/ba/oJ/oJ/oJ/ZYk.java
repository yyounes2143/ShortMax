package com.bytedance.sdk.component.ba.oJ.oJ.oJ;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.appsflyer.AppsFlyerProperties;
import com.bytedance.sdk.component.ba.oJ.so;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.List;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ZYk {
    private Context ZYk;
    private C0173ZYk oJ;

    /* loaded from: classes3.dex */
    private class oJ extends AbstractCursor {
        private oJ() {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i10) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i10) {
            return 0.0f;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i10) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i10) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i10) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i10) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i10) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZYk(Context context) {
        try {
            this.ZYk = context.getApplicationContext();
            if (this.oJ == null) {
                this.oJ = new C0173ZYk();
            }
        } catch (Throwable unused) {
        }
    }

    public C0173ZYk oJ() {
        return this.oJ;
    }

    /* renamed from: com.bytedance.sdk.component.ba.oJ.oJ.oJ.ZYk$ZYk  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0173ZYk {
        private volatile SQLiteDatabase ZYk = null;

        public C0173ZYk() {
        }

        private boolean ZYk() {
            SQLiteDatabase sQLiteDatabase = this.ZYk;
            if (sQLiteDatabase != null && sQLiteDatabase.inTransaction()) {
                return true;
            }
            return false;
        }

        private void oJ() {
            try {
                if (this.ZYk != null && this.ZYk.isOpen()) {
                    return;
                }
                synchronized (this) {
                    if (this.ZYk != null) {
                        if (!this.ZYk.isOpen()) {
                        }
                    }
                    this.ZYk = so.cFZ().ex().oJ(so.cFZ().ba());
                    this.ZYk.setLockingEnabled(false);
                }
            } catch (Throwable th2) {
                if (ZYk()) {
                    throw th2;
                }
            }
        }

        public void oJ(String str) throws SQLException {
            try {
                oJ();
                this.ZYk.execSQL(str);
            } catch (Throwable th2) {
                if (ZYk()) {
                    throw th2;
                }
            }
        }

        public Cursor oJ(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            try {
                oJ();
                return this.ZYk.query(str, strArr, str2, strArr2, str3, str4, str5);
            } catch (Throwable th2) {
                oJ oJVar = new oJ();
                if (ZYk()) {
                    throw th2;
                }
                return oJVar;
            }
        }

        public int oJ(String str, ContentValues contentValues, String str2, String[] strArr) {
            try {
                oJ();
                return this.ZYk.update(str, contentValues, str2, strArr);
            } catch (Exception e10) {
                if (ZYk()) {
                    throw e10;
                }
                return 0;
            }
        }

        public long oJ(String str, String str2, ContentValues contentValues) {
            try {
                oJ();
                return this.ZYk.insert(str, str2, contentValues);
            } catch (Exception e10) {
                if (ZYk()) {
                    throw e10;
                }
                return -1L;
            }
        }

        public synchronized void oJ(String str, String str2, List<com.bytedance.sdk.component.ba.oJ.ex.oJ> list) {
            JSONObject cFZ;
            try {
                oJ();
                this.ZYk.beginTransaction();
                ContentValues contentValues = new ContentValues();
                for (int i10 = 0; i10 < list.size(); i10++) {
                    com.bytedance.sdk.component.ba.oJ.ex.oJ oJVar = list.get(i10);
                    if (oJVar != null && (cFZ = oJVar.cFZ()) != null) {
                        contentValues.put("id", oJVar.tB());
                        String ZYk = so.cFZ().eZI().ZYk(cFZ.toString());
                        if (!TextUtils.isEmpty(ZYk)) {
                            contentValues.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, ZYk);
                            contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
                            contentValues.put("retry", (Integer) 0);
                            contentValues.put("encrypt", (Integer) 1);
                            if (com.bytedance.sdk.component.ba.oJ.tB.oJ.ex()) {
                                if (oJVar.kkU() > 0) {
                                    if (oJVar.ex() != 0) {
                                        if (oJVar.ex() == 3) {
                                        }
                                    }
                                    contentValues.put(AppsFlyerProperties.CHANNEL, Integer.valueOf(oJVar.kkU()));
                                }
                            }
                            this.ZYk.insert(str, str2, contentValues);
                        }
                        contentValues.clear();
                    }
                }
                this.ZYk.setTransactionSuccessful();
                list.size();
                if (this.ZYk != null) {
                    this.ZYk.endTransaction();
                }
            } catch (Exception e10) {
                list.size();
                if (!ZYk()) {
                    if (this.ZYk != null) {
                        this.ZYk.endTransaction();
                    }
                } else {
                    throw e10;
                }
            }
        }

        public int oJ(String str, String str2, String[] strArr) {
            try {
                oJ();
                return this.ZYk.delete(str, str2, strArr);
            } catch (Exception e10) {
                if (ZYk()) {
                    throw e10;
                }
                return 0;
            }
        }
    }
}
