package com.google.firebase.analytics.connector.internal;

import android.os.Bundle;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.android.gms.measurement.internal.zzjo;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.mbridge.msdk.MBridgeConstans;
/* compiled from: com.google.android.gms:play-services-measurement-api@@23.0.0 */
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final ImmutableSet f20333a = ImmutableSet.E("_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire");

    /* renamed from: b  reason: collision with root package name */
    private static final ImmutableList f20334b = ImmutableList.F("_e", "_f", "_iap", "_s", "_au", "_ui", "_cd");

    /* renamed from: c  reason: collision with root package name */
    private static final ImmutableList f20335c = ImmutableList.D("auto", MBridgeConstans.DYNAMIC_VIEW_WX_APP, "am");

    /* renamed from: d  reason: collision with root package name */
    private static final ImmutableList f20336d = ImmutableList.C("_r", "_dbg");

    /* renamed from: e  reason: collision with root package name */
    private static final ImmutableList f20337e = new ImmutableList.a().i(zzjo.zza).i(zzjo.zzb).k();

    /* renamed from: f  reason: collision with root package name */
    private static final ImmutableList f20338f = ImmutableList.C("^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$");

    /* renamed from: g  reason: collision with root package name */
    public static final /* synthetic */ int f20339g = 0;

    public static boolean a(String str) {
        if (!f20335c.contains(str)) {
            return true;
        }
        return false;
    }

    public static boolean b(String str, Bundle bundle) {
        if (f20334b.contains(str)) {
            return false;
        }
        if (bundle != null) {
            ImmutableList immutableList = f20336d;
            int size = immutableList.size();
            int i10 = 0;
            while (i10 < size) {
                boolean containsKey = bundle.containsKey((String) immutableList.get(i10));
                i10++;
                if (containsKey) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }

    public static boolean c(String str) {
        if (!f20333a.contains(str)) {
            return true;
        }
        return false;
    }

    public static boolean d(String str, String str2) {
        if (!"_ce1".equals(str2) && !"_ce2".equals(str2)) {
            if ("_ln".equals(str2)) {
                if (str.equals(AppMeasurement.FCM_ORIGIN) || str.equals(AppMeasurement.FIAM_ORIGIN)) {
                    return true;
                }
                return false;
            } else if (f20337e.contains(str2)) {
                return false;
            } else {
                ImmutableList immutableList = f20338f;
                int size = immutableList.size();
                int i10 = 0;
                while (i10 < size) {
                    boolean matches = str2.matches((String) immutableList.get(i10));
                    i10++;
                    if (matches) {
                        return false;
                    }
                }
                return true;
            }
        } else if (str.equals(AppMeasurement.FCM_ORIGIN) || str.equals("frc")) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean e(String str, String str2, Bundle bundle) {
        char c10;
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!a(str) || bundle == null) {
            return false;
        }
        ImmutableList immutableList = f20336d;
        int size = immutableList.size();
        int i10 = 0;
        while (i10 < size) {
            boolean containsKey = bundle.containsKey((String) immutableList.get(i10));
            i10++;
            if (containsKey) {
                return false;
            }
        }
        int hashCode = str.hashCode();
        if (hashCode != 101200) {
            if (hashCode != 101230) {
                if (hashCode == 3142703 && str.equals(AppMeasurement.FIAM_ORIGIN)) {
                    c10 = 2;
                }
                c10 = 65535;
            } else {
                if (str.equals("fdl")) {
                    c10 = 1;
                }
                c10 = 65535;
            }
        } else {
            if (str.equals(AppMeasurement.FCM_ORIGIN)) {
                c10 = 0;
            }
            c10 = 65535;
        }
        if (c10 != 0) {
            if (c10 != 1) {
                if (c10 != 2) {
                    return false;
                }
                bundle.putString("_cis", "fiam_integration");
                return true;
            }
            bundle.putString("_cis", "fdl_integration");
            return true;
        }
        bundle.putString("_cis", "fcm_integration");
        return true;
    }
}
