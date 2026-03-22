package com.inmobi.media;

import android.util.SparseArray;
import com.huawei.hms.framework.network.grs.GrsBaseInfo;
import com.startshorts.androidplayer.bean.order.OtherOrderResp;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes5.dex */
public final class D1 {

    /* renamed from: b  reason: collision with root package name */
    public static final C1 f23554b;

    /* renamed from: c  reason: collision with root package name */
    public static final SparseArray f23555c;

    /* renamed from: d  reason: collision with root package name */
    public static final D1 f23556d;

    /* renamed from: e  reason: collision with root package name */
    public static final D1 f23557e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ D1[] f23558f;

    /* renamed from: a  reason: collision with root package name */
    public final int f23559a;

    static {
        D1[] values;
        D1 d12 = new D1(0, 0, GrsBaseInfo.CountryCodeSource.UNKNOWN);
        f23556d = d12;
        D1 d13 = new D1(1, 1, "PLAYING");
        f23557e = d13;
        D1[] d1Arr = {d12, d13, new D1(2, 2, "PAUSED"), new D1(3, 3, OtherOrderResp.STATUS_COMPLETED)};
        f23558f = d1Arr;
        kotlin.enums.a.a(d1Arr);
        f23554b = new C1();
        f23555c = new SparseArray();
        for (D1 d14 : values()) {
            f23555c.put(d14.f23559a, d14);
        }
    }

    public D1(int i10, int i11, String str) {
        this.f23559a = i11;
    }

    public static D1 valueOf(String str) {
        return (D1) Enum.valueOf(D1.class, str);
    }

    public static D1[] values() {
        return (D1[]) f23558f.clone();
    }
}
