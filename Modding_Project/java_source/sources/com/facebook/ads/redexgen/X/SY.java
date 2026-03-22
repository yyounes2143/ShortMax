package com.facebook.ads.redexgen.X;

import android.os.AsyncTask;
import java.util.Arrays;
/* loaded from: assets/audience_network.dex */
public class SY<T> extends AsyncTask<Void, Void, T> {
    public static byte[] A04;
    public EnumC1702Sb A00;
    public final C2085cu A01;
    public final AbstractC1703Sc<T> A02;
    public final AbstractC1733Tg<T> A03;

    static {
        A02();
    }

    public static String A01(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 72);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A04 = new byte[]{5, 2, 21, 2, 3, 2, 20, 6};
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.SY != com.facebook.ads.internal.database.AdDatabaseHelper$DatabaseQueryAsyncTask<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Sc != com.facebook.ads.internal.database.AdDatabaseQuery<T> */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.Tg != com.facebook.ads.internal.eventstorage.AdEventStorageCallback<T> */
    public SY(C2085cu c2085cu, AbstractC1703Sc<T> abstractC1703Sc, AbstractC1733Tg<T> abstractC1733Tg) {
        this.A02 = abstractC1703Sc;
        this.A03 = abstractC1733Tg;
        this.A01 = c2085cu;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.SY != com.facebook.ads.internal.database.AdDatabaseHelper$DatabaseQueryAsyncTask<T> */
    private final T A00(Void... voidArr) {
        if (AbstractC1788Vl.A02(this)) {
            return null;
        }
        T t10 = null;
        try {
            try {
                t10 = this.A02.A03();
                this.A00 = this.A02.A00();
                return t10;
            } catch (Exception e10) {
                this.A01.A08().AAy(A01(0, 8, 89), AbstractC1722Sv.A0w, new C1723Sw(e10));
                this.A00 = EnumC1702Sb.A08;
                return t10;
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            return null;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.SY != com.facebook.ads.internal.database.AdDatabaseHelper$DatabaseQueryAsyncTask<T> */
    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Void[] voidArr) {
        if (AbstractC1788Vl.A02(this)) {
            return null;
        }
        try {
            return A00(voidArr);
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
            return null;
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.SY != com.facebook.ads.internal.database.AdDatabaseHelper$DatabaseQueryAsyncTask<T> */
    @Override // android.os.AsyncTask
    public final void onPostExecute(T result) {
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            if (this.A00 == null) {
                this.A03.A02(result);
            } else {
                this.A03.A01(this.A00.A03(), this.A00.A04());
            }
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
