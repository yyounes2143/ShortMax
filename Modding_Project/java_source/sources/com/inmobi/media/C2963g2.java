package com.inmobi.media;

import android.telephony.CellIdentityCdma;
import android.telephony.CellIdentityGsm;
import android.telephony.CellIdentityWcdma;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoWcdma;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.g2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2963g2 {

    /* renamed from: a  reason: collision with root package name */
    public String f24754a;

    /* renamed from: b  reason: collision with root package name */
    public int f24755b;

    /* renamed from: c  reason: collision with root package name */
    public int f24756c;

    public C2963g2() {
    }

    public static String a(String mcc, String mnc, int i10, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(mcc, "mcc");
        Intrinsics.checkNotNullParameter(mnc, "mnc");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(mcc);
        sb2.append('#');
        sb2.append(mnc);
        sb2.append('#');
        sb2.append(i10);
        sb2.append('#');
        sb2.append(i11);
        sb2.append('#');
        sb2.append(i12 == -1 ? "" : Integer.valueOf(i12));
        sb2.append('#');
        sb2.append(i13 != Integer.MAX_VALUE ? Integer.valueOf(i13) : "");
        return sb2.toString();
    }

    public C2963g2(CellInfo cellInfo, String mcc, String mnc, int i10) {
        Intrinsics.checkNotNullParameter(mcc, "mcc");
        Intrinsics.checkNotNullParameter(mnc, "mnc");
        if (cellInfo instanceof CellInfoGsm) {
            this.f24756c = i10;
            CellInfoGsm cellInfoGsm = (CellInfoGsm) cellInfo;
            this.f24755b = cellInfoGsm.getCellSignalStrength().getDbm();
            CellIdentityGsm cellIdentity = cellInfoGsm.getCellIdentity();
            Intrinsics.checkNotNullExpressionValue(cellIdentity, "getCellIdentity(...)");
            this.f24754a = a(mcc, mnc, cellIdentity.getLac(), cellIdentity.getCid(), -1, Integer.MAX_VALUE);
        } else if (cellInfo instanceof CellInfoCdma) {
            this.f24756c = i10;
            CellInfoCdma cellInfoCdma = (CellInfoCdma) cellInfo;
            this.f24755b = cellInfoCdma.getCellSignalStrength().getDbm();
            CellIdentityCdma cellIdentity2 = cellInfoCdma.getCellIdentity();
            Intrinsics.checkNotNullExpressionValue(cellIdentity2, "getCellIdentity(...)");
            int systemId = cellIdentity2.getSystemId();
            int networkId = cellIdentity2.getNetworkId();
            int basestationId = cellIdentity2.getBasestationId();
            Intrinsics.checkNotNullParameter(mcc, "mcc");
            this.f24754a = mcc + '#' + systemId + '#' + networkId + '#' + basestationId;
        } else if (cellInfo instanceof CellInfoWcdma) {
            this.f24756c = i10;
            CellInfoWcdma cellInfoWcdma = (CellInfoWcdma) cellInfo;
            this.f24755b = cellInfoWcdma.getCellSignalStrength().getDbm();
            CellIdentityWcdma cellIdentity3 = cellInfoWcdma.getCellIdentity();
            Intrinsics.checkNotNullExpressionValue(cellIdentity3, "getCellIdentity(...)");
            this.f24754a = a(mcc, mnc, cellIdentity3.getLac(), cellIdentity3.getCid(), cellIdentity3.getPsc(), Integer.MAX_VALUE);
        }
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f24754a);
            int i10 = this.f24755b;
            if (i10 != Integer.MAX_VALUE) {
                jSONObject.put("ss", i10);
            }
            jSONObject.put("nt", this.f24756c);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
