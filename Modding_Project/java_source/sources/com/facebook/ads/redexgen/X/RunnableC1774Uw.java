package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.ads.redexgen.X.Uw  reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class RunnableC1774Uw implements Runnable {
    public static byte[] A03;
    public final /* synthetic */ SQ A00;
    public final /* synthetic */ C1777Uz A01;
    public final /* synthetic */ String A02;

    static {
        A01();
    }

    public static String A00(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 28);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{-66, -58, -72, -6, -5, 5, 6, 1, 4, 11, 3, -10, 1, 0, 3, 5, -6, -1, -8, -38, -51, -39, -35, -51, -37, -36, -57, -47, -52};
    }

    public RunnableC1774Uw(C1777Uz c1777Uz, String str, SQ sq2) {
        this.A01 = c1777Uz;
        this.A02 = str;
        this.A00 = sq2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        List list;
        List list2;
        ArrayList arrayList;
        List list3;
        int i10;
        int i11;
        int i12;
        if (AbstractC1788Vl.A02(this)) {
            return;
        }
        try {
            C1723Sw nvl = new C1723Sw(A00(0, 3, 84));
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONObject.put(A00(3, 7, 118), jSONArray);
            jSONObject.put(A00(19, 10, 76), this.A02);
            list = this.A01.A0D;
            synchronized (list) {
                list2 = this.A01.A0D;
                arrayList = new ArrayList(list2);
                list3 = this.A01.A0D;
                list3.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                C1776Uy c1776Uy = (C1776Uy) it.next();
                StringBuilder append = new StringBuilder().append(A00(0, 0, 23));
                i10 = c1776Uy.A00;
                StringBuilder append2 = append.append(i10).append(';');
                i11 = c1776Uy.A02;
                StringBuilder append3 = append2.append(i11).append(';');
                i12 = c1776Uy.A01;
                jSONArray.put(append3.append(i12).toString());
            }
            nvl.A07(jSONObject);
            nvl.A05(1);
            this.A00.A08().AAz(A00(10, 9, 117), AbstractC1722Sv.A2R, nvl);
        } catch (JSONException unused) {
        } catch (Throwable th2) {
            AbstractC1788Vl.A00(th2, this);
        }
    }
}
