package com.facebook.ads.redexgen.X;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.AsyncTask;
import android.os.Looper;
import android.text.TextUtils;
import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: assets/audience_network.dex */
public final class SZ {
    public static byte[] A04;
    public static final String A05;
    public static final Lock A06;
    public static final Lock A07;
    public static final ReentrantReadWriteLock A08;
    public SQLiteOpenHelper A00;
    public final C2085cu A01;
    public final C2083cs A03 = new C2083cs(this);
    public final C2084ct A02 = new C2084ct(this);

    public static String A05(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 17);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A04 = new byte[]{-82, -53, -82, 109, -117, 109, -116, 85, 118, -120, 120, -102, -64, -52, -55, -57, -102, ByteCompanionObject.MAX_VALUE, -87, -82, -88, -83, ByteCompanionObject.MAX_VALUE, 94, -118, -121, -117, -121, -110, 94, -93, -46, -47, -93, 87, -122, -119, 123, 124, -119, 87, 121, -112, 87, 85, -120, 122, -119, 85, -115, -60, -75, -78, -65, -78, -115, 110, 116, -82, -94, 94, 110, -101, -99, -55, -25, -12, -12, -11, -6, -90, -23, -25, -14, -14, -90, -19, -21, -6, -54, -25, -6, -25, -24, -25, -7, -21, -90, -20, -8, -11, -13, -90, -6, -18, -21, -90, -37, -49, -90, -6, -18, -8, -21, -25, -22, -89, -112, -126, -119, -126, ByteCompanionObject.MIN_VALUE, -111, 93, -79, -84, -88, -94, -85, -80, 107, -64, -69, -81, -84, -65, -80, -117, -29, -32, -13, -32, -31, -32, -14, -28, -112, -95, -112, -103, -97, -98, -116, -121, -125, 125, -122, -117};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final synchronized void A0J() {
        for (int i10 = 0; i10 < A0M().length; i10++) {
        }
        if (this.A00 != null) {
            this.A00.close();
            this.A00 = null;
        }
    }

    static {
        A07();
        StringBuilder append = new StringBuilder().append(A05(107, 14, 44)).append(C2083cs.A03.A01);
        String A052 = A05(58, 2, 113);
        StringBuilder append2 = append.append(A052);
        String A053 = A05(142, 6, 7);
        StringBuilder append3 = append2.append(A053);
        String A054 = A05(60, 1, 31);
        StringBuilder append4 = append3.append(A054).append(C2083cs.A02.A01).append(A052);
        String A055 = A05(136, 6, 26);
        A05 = append4.append(A055).append(A054).append(C2084ct.A04.A01).append(A052).append(A055).append(A054).append(C2084ct.A05.A01).append(A052).append(A055).append(A054).append(C2084ct.A0A.A01).append(A052).append(A055).append(A054).append(C2084ct.A08.A01).append(A052).append(A055).append(A054).append(C2084ct.A07.A01).append(A052).append(A055).append(A054).append(C2084ct.A06.A01).append(A052).append(A055).append(A054).append(C2084ct.A03.A01).append(A052).append(A055).append(A054).append(C2084ct.A02.A01).append(A05(11, 6, 105)).append(A055).append(A05(17, 6, 78)).append(A053).append(A05(30, 4, 114)).append(A055).append(A054).append(C2084ct.A09.A01).append(A05(0, 3, 125)).append(A053).append(A054).append(C2083cs.A03.A01).append(A05(34, 10, 38)).append(A055).append(A054).append(C2084ct.A08.A01).append(A05(7, 4, 36)).toString();
        A08 = new ReentrantReadWriteLock();
        A06 = A08.readLock();
        A07 = A08.writeLock();
    }

    public SZ(C2085cu c2085cu) {
        this.A01 = c2085cu;
    }

    private synchronized SQLiteDatabase A00() {
        if (this.A00 == null) {
            this.A00 = new C1701Sa(this.A01, this);
        }
        return this.A00.getWritableDatabase();
    }

    private synchronized SQLiteDatabase A01() {
        SQLiteException e10 = null;
        for (int i10 = 0; i10 < 10; i10++) {
            try {
            } catch (SQLiteException e11) {
                e10 = e11;
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException unused) {
                }
            }
        }
        this.A01.A08().AAy(A05(128, 8, 110), AbstractC1722Sv.A0v, new C1723Sw(e10));
        throw e10;
        return A00();
    }

    public final int A08(int i10) {
        A07.lock();
        try {
            return A0E().delete(A05(136, 6, 26), C2084ct.A02.A01 + A05(3, 4, 60), new String[]{String.valueOf(i10 - 1)});
        } finally {
            A07.unlock();
        }
    }

    public final Cursor A09() {
        A06.lock();
        try {
            return this.A02.A0B();
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0A() {
        A06.lock();
        try {
            return this.A02.A0C();
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0B() {
        A06.lock();
        try {
            return this.A03.A0B();
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0C(int i10) {
        A06.lock();
        try {
            return A0E().rawQuery(A05 + A05(23, 7, 45) + String.valueOf(i10), null);
        } finally {
            A06.unlock();
        }
    }

    public final Cursor A0D(String str) {
        A06.lock();
        try {
            return this.A02.A0D(str);
        } finally {
            A06.unlock();
        }
    }

    public final SQLiteDatabase A0E() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return A01();
        }
        throw new IllegalStateException(A05(64, 43, 117));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Sc != com.facebook.ads.internal.database.AdDatabaseQuery<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Tg != com.facebook.ads.internal.eventstorage.AdEventStorageCallback<T> */
    public final <T> AsyncTask A0F(AbstractC1703Sc<T> abstractC1703Sc, AbstractC1733Tg<T> abstractC1733Tg) {
        return XR.A00(XU.A07, new SY(this.A01, abstractC1703Sc, abstractC1733Tg), new Void[0]);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Tg != com.facebook.ads.internal.eventstorage.AdEventStorageCallback<java.lang.String> */
    public final AsyncTask A0G(final String str, final int i10, final String str2, final double d10, final double d11, final String str3, final Map<String, String> data, AbstractC1733Tg<String> abstractC1733Tg) {
        return A0F(new AbstractC2082cr<String>() { // from class: com.facebook.ads.redexgen.X.6L
            public static byte[] A08;
            public static String[] A09 = {"ZKW0rplATEIsE5gjt8qXTQnY", "r6HJdeSoORQdJfGxA0AnZWlkU33wQIlK", "lLZOtDHAe6uwMhK1fYaqg", "CFnqFcdcZfU1FaRsph1ThokBMpi4uqZk", "TONJvFd", "LRRDDC4", "oqOd7Km", ExifInterface.LONGITUDE_EAST};

            public static String A01(int i11, int i12, int i13) {
                byte[] copyOfRange = Arrays.copyOfRange(A08, i11, i11 + i12);
                for (int i14 = 0; i14 < copyOfRange.length; i14++) {
                    copyOfRange[i14] = (byte) ((copyOfRange[i14] - i13) - 122);
                }
                return new String(copyOfRange);
            }

            public static void A02() {
                byte[] bArr = {56, 53, 72, 53, 54, 53, 71, 57};
                if (A09[2].length() == 32) {
                    throw new RuntimeException();
                }
                A09[2] = "0lpDBp9tBU8jLddyd5eWZp";
                A08 = bArr;
            }

            static {
                A02();
            }

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC1703Sc
            /* renamed from: A00 */
            public final String A03() {
                C2085cu c2085cu;
                Lock lock;
                Lock lock2;
                C2085cu c2085cu2;
                C2085cu c2085cu3;
                Lock lock3;
                C2085cu c2085cu4;
                C2084ct c2084ct;
                C2083cs c2083cs;
                Lock lock4;
                C2085cu c2085cu5;
                String eventId = A01(0, 8, 90);
                c2085cu = SZ.this.A01;
                c2085cu.A08().A9v(str2);
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                lock = SZ.A07;
                lock.lock();
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    try {
                        sQLiteDatabase = SZ.this.A0E();
                        sQLiteDatabase.beginTransaction();
                        c2084ct = SZ.this.A02;
                        c2083cs = SZ.this.A03;
                        String A0E = c2084ct.A0E(c2083cs.A0C(str), i10, str2, d10, d11, str3, data);
                        sQLiteDatabase.setTransactionSuccessful();
                        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                            try {
                                if (sQLiteDatabase.inTransaction()) {
                                    sQLiteDatabase.endTransaction();
                                }
                            } catch (Exception e10) {
                                c2085cu5 = SZ.this.A01;
                                c2085cu5.A08().AAy(eventId, AbstractC1722Sv.A0z, new C1723Sw(e10));
                            }
                        }
                        lock4 = SZ.A07;
                        lock4.unlock();
                        return A0E;
                    } catch (Exception e11) {
                        A01(EnumC1702Sb.A05);
                        c2085cu3 = SZ.this.A01;
                        c2085cu3.A08().AAy(eventId, AbstractC1722Sv.A0y, new C1723Sw(e11));
                        if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                            try {
                                if (sQLiteDatabase.inTransaction()) {
                                    sQLiteDatabase.endTransaction();
                                }
                            } catch (Exception e12) {
                                c2085cu4 = SZ.this.A01;
                                c2085cu4.A08().AAy(eventId, AbstractC1722Sv.A0z, new C1723Sw(e12));
                            }
                        }
                        lock3 = SZ.A07;
                        lock3.unlock();
                        return null;
                    }
                } catch (Throwable th2) {
                    if (sQLiteDatabase != null) {
                        boolean isOpen = sQLiteDatabase.isOpen();
                        if (A09[5].length() != 7) {
                            throw new RuntimeException();
                        }
                        A09[2] = "rWG930h";
                        if (isOpen) {
                            try {
                                if (sQLiteDatabase.inTransaction()) {
                                    sQLiteDatabase.endTransaction();
                                }
                            } catch (Exception e13) {
                                c2085cu2 = SZ.this.A01;
                                c2085cu2.A08().AAy(eventId, AbstractC1722Sv.A0z, new C1723Sw(e13));
                            }
                        }
                    }
                    lock2 = SZ.A07;
                    lock2.unlock();
                    throw th2;
                }
            }
        }, abstractC1733Tg);
    }

    public final void A0H() {
        A07.lock();
        try {
            this.A02.A09();
            this.A03.A09();
        } finally {
            A07.unlock();
        }
    }

    public final void A0I() {
        A07.lock();
        try {
            this.A03.A0D(this.A01);
        } finally {
            A07.unlock();
        }
    }

    public final boolean A0K(String str) {
        A07.lock();
        try {
            return this.A02.A0F(str);
        } finally {
            A07.unlock();
        }
    }

    public final boolean A0L(String str) {
        boolean z10;
        A07.lock();
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(A05(121, 7, 90)).append(A05(136, 6, 26)).append(A05(44, 5, 36)).append(C2084ct.A02.A01).append(A05(61, 1, 32)).append(C2084ct.A02.A01).append(A05(56, 2, 50)).append(A05(49, 7, 92)).append(C2084ct.A04.A01).append(A05(62, 2, 77));
            A0E().execSQL(sb2.toString(), new String[]{str});
            z10 = true;
        } catch (SQLiteException unused) {
            z10 = false;
        }
        A07.unlock();
        return z10;
    }

    public final AbstractC1704Sd[] A0M() {
        return new AbstractC1704Sd[]{this.A03, this.A02};
    }
}
