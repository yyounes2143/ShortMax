package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.tools.p0;
import org.json.JSONArray;
/* compiled from: DomainReport.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static String f27210a = "DomainReport";

    public static boolean a(com.mbridge.msdk.setting.g gVar, String str) {
        if (gVar == null) {
            return true;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            int K = gVar.K();
            JSONArray I = gVar.I();
            JSONArray H = gVar.H();
            if (H != null) {
                for (int i10 = 0; i10 < H.length(); i10++) {
                    if (str.contains(H.getString(i10))) {
                        return false;
                    }
                }
            }
            if (K != 2) {
                return true;
            }
            if (I != null) {
                for (int i11 = 0; i11 < I.length(); i11++) {
                    if (str.contains(I.getString(i11))) {
                        return true;
                    }
                }
            }
            return false;
        } catch (Exception e10) {
            p0.b(f27210a, e10.getMessage());
            return true;
        }
    }
}
