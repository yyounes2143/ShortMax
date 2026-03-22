package com.facebook.ads.redexgen.X;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
/* renamed from: com.facebook.ads.redexgen.X.iu  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2446iu implements M5 {
    public static byte[] A04;
    public static final String[] A05;
    public String A00;
    public String A01;
    public final SparseArray<M4> A02 = new SparseArray<>();
    public final InterfaceC11094m A03;

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 1);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{55, 43, 106, 103, 35, 74, 77, 87, 70, 68, 70, 81, 35, 83, 81, 74, 78, 66, 81, 90, 35, 72, 70, 90, 35, 77, 76, 87, 35, 77, 86, 79, 79, 47, 104, 102, 122, 35, 87, 70, 91, 87, 35, 77, 76, 87, 35, 77, 86, 79, 79, 47, 110, 102, 119, 98, 103, 98, 119, 98, 35, 65, 79, 76, 65, 35, 77, 76, 87, 35, 77, 86, 79, 79, 42, 46, 63, 40, 44, 57, 40, 77, 57, 44, 47, 33, 40, 77, 6, 16, 13, 18, 98, 22, 3, 0, 14, 7, 98, 11, 4, 98, 7, 26, 11, 17, 22, 17, 98, 41, 20, 3, 60, 0, 13, 21, 9, 30, 47, 13, 15, 4, 9, 37, 2, 8, 9, 20, 88, 85, 18, 31, 91, 70, 91, 68, 79, 65, 93, 109, 101, 116, 97, 100, 97, 116, 97};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 14 out of bounds for length 11
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @Override // com.facebook.ads.redexgen.X.M5
    public final void AAj(HashMap<String, M4> hashMap, SparseArray<String> sparseArray) throws IOException {
        C2444is A02;
        C3M.A08(this.A02.size() == 0);
        try {
            if (AbstractC11114o.A00(this.A03.getReadableDatabase(), 1, (String) C3M.A01(this.A00)) != 1) {
                SQLiteDatabase writableDatabase = this.A03.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                A04(writableDatabase);
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            }
            Cursor A00 = A00();
            while (A00.moveToNext()) {
                A02 = M6.A02(new DataInputStream(new ByteArrayInputStream(A00.getBlob(2))));
                M4 m42 = new M4(A00.getInt(0), (String) C3M.A01(A00.getString(1)), A02);
                hashMap.put(m42.A02, m42);
                sparseArray.put(m42.A01, m42.A02);
            }
            if (A00 != null) {
                A00.close();
            }
        } catch (SQLiteException e10) {
            hashMap.clear();
            sparseArray.clear();
            throw new C11084l(e10);
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 5 out of bounds for length 5
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    @Override // com.facebook.ads.redexgen.X.M5
    public final void AJY(HashMap<String, M4> hashMap) throws IOException {
        if (this.A02.size() == 0) {
            return;
        }
        try {
            SQLiteDatabase writableDatabase = this.A03.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            for (int i10 = 0; i10 < this.A02.size(); i10++) {
                M4 valueAt = this.A02.valueAt(i10);
                if (valueAt == null) {
                    A05(writableDatabase, this.A02.keyAt(i10));
                } else {
                    A06(writableDatabase, valueAt);
                }
            }
            writableDatabase.setTransactionSuccessful();
            this.A02.clear();
            writableDatabase.endTransaction();
        } catch (SQLException e10) {
            throw new C11084l(e10);
        }
    }

    static {
        A03();
        A05 = new String[]{A01(128, 2, 48), A01(136, 3, 37), A01(139, 8, 1)};
    }

    public C2446iu(InterfaceC11094m interfaceC11094m) {
        this.A03 = interfaceC11094m;
    }

    private Cursor A00() {
        return this.A03.getReadableDatabase().query((String) C3M.A01(this.A01), A05, null, null, null, null, null);
    }

    public static String A02(String str) {
        return A01(109, 19, 109) + str;
    }

    private void A04(SQLiteDatabase sQLiteDatabase) throws C11084l {
        AbstractC11114o.A04(sQLiteDatabase, 1, (String) C3M.A01(this.A00), 1);
        A07(sQLiteDatabase, (String) C3M.A01(this.A01));
        sQLiteDatabase.execSQL(A01(75, 13, 108) + this.A01 + A01(0, 1, 22) + A01(1, 74, 2));
    }

    private void A05(SQLiteDatabase sQLiteDatabase, int i10) {
        sQLiteDatabase.delete((String) C3M.A01(this.A01), A01(130, 6, 122), new String[]{Integer.toString(i10)});
    }

    private void A06(SQLiteDatabase sQLiteDatabase, M4 m42) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        M6.A08(m42.A03(), new DataOutputStream(byteArrayOutputStream));
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        ContentValues contentValues = new ContentValues();
        contentValues.put(A01(128, 2, 48), Integer.valueOf(m42.A01));
        contentValues.put(A01(136, 3, 37), m42.A02);
        contentValues.put(A01(139, 8, 1), byteArray);
        sQLiteDatabase.replaceOrThrow((String) C3M.A01(this.A01), null, contentValues);
    }

    public static void A07(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL(A01(88, 21, 67) + str);
    }

    public static void A08(InterfaceC11094m interfaceC11094m, String str) throws C11084l {
        try {
            String A02 = A02(str);
            SQLiteDatabase writableDatabase = interfaceC11094m.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            AbstractC11114o.A03(writableDatabase, 1, str);
            A07(writableDatabase, A02);
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
        } catch (SQLException e10) {
            throw new C11084l(e10);
        }
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void A5h() throws C11084l {
        A08(this.A03, (String) C3M.A01(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final boolean A6K() throws C11084l {
        try {
            return AbstractC11114o.A00(this.A03.getReadableDatabase(), 1, (String) C3M.A01(this.A00)) != -1;
        } catch (SQLException e10) {
            throw new C11084l(e10);
        }
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void AA7(long j10) {
        this.A00 = Long.toHexString(j10);
        this.A01 = A02(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void AEv(M4 m42, boolean z10) {
        if (z10) {
            this.A02.delete(m42.A01);
        } else {
            this.A02.put(m42.A01, null);
        }
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void AFa(M4 m42) {
        this.A02.put(m42.A01, m42);
    }

    @Override // com.facebook.ads.redexgen.X.M5
    public final void AJX(HashMap<String, M4> hashMap) throws IOException {
        try {
            SQLiteDatabase writableDatabase = this.A03.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            A04(writableDatabase);
            for (M4 m42 : hashMap.values()) {
                A06(writableDatabase, m42);
            }
            writableDatabase.setTransactionSuccessful();
            this.A02.clear();
            writableDatabase.endTransaction();
        } catch (SQLException e10) {
            throw new C11084l(e10);
        }
    }
}
