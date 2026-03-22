package com.inmobi.media;

import com.inmobi.commons.core.configs.AdConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
/* loaded from: classes5.dex */
public final class Ue implements Ve {

    /* renamed from: a  reason: collision with root package name */
    public final AdConfig.VastVideoConfig f24279a;

    /* renamed from: b  reason: collision with root package name */
    public final int f24280b;

    /* renamed from: c  reason: collision with root package name */
    public final int f24281c;

    /* renamed from: d  reason: collision with root package name */
    public final int f24282d;

    /* renamed from: e  reason: collision with root package name */
    public final ArrayList f24283e;

    /* renamed from: f  reason: collision with root package name */
    public String f24284f;

    /* renamed from: g  reason: collision with root package name */
    public String f24285g;

    /* renamed from: h  reason: collision with root package name */
    public final ArrayList f24286h;

    /* renamed from: i  reason: collision with root package name */
    public final ArrayList f24287i;

    /* renamed from: j  reason: collision with root package name */
    public Le f24288j;

    /* renamed from: k  reason: collision with root package name */
    public String f24289k;

    /* renamed from: l  reason: collision with root package name */
    public int f24290l;

    public Ue(List trackers, AdConfig.VastVideoConfig vastVideoConfig) {
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(vastVideoConfig, "vastVideoConfig");
        this.f24279a = vastVideoConfig;
        this.f24280b = 1048576;
        this.f24281c = 8192;
        this.f24282d = 60;
        ArrayList arrayList = new ArrayList();
        this.f24286h = arrayList;
        arrayList.addAll(trackers);
        this.f24283e = new ArrayList();
        this.f24287i = new ArrayList();
        this.f24290l = 0;
    }

    public static boolean a(double d10, double d11, double d12) {
        return d12 > d10 && d12 <= d11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01e0, code lost:
        if (r3 != null) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01e2, code lost:
        r20.f24284f = r3.f23862a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0189, code lost:
        if (r3 != null) goto L113;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String b() {
        /*
            Method dump skipped, instructions count: 568
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Ue.b():java.lang.String");
    }

    public final int a() {
        List<String> q10;
        String[] strArr;
        String str = this.f24285g;
        if (str != null && (q10 = new Regex(":").q(str, 0)) != null && (strArr = (String[]) q10.toArray(new String[0])) != null && strArr.length > 2) {
            try {
                return (Integer.parseInt(strArr[1]) * this.f24282d) + ((int) Float.parseFloat(strArr[2]));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    public final void a(AdConfig.BitRateConfig bitRateConfig, CountDownLatch countDownLatch) {
        Iterator it = this.f24283e.iterator();
        while (it.hasNext()) {
            new Oe((Me) it.next(), bitRateConfig.getHeaderTimeout(), countDownLatch).a();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Ue(String str, String str2, String str3, ArrayList trackers, ArrayList companionAds, AdConfig.VastVideoConfig vastVideoConfig) {
        this(trackers, vastVideoConfig);
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(companionAds, "companionAds");
        Intrinsics.checkNotNullParameter(vastVideoConfig, "vastVideoConfig");
        if (!companionAds.isEmpty()) {
            this.f24287i = new ArrayList(companionAds);
        }
        if (str != null) {
            this.f24283e.add(new Me(str, 1000));
        }
        this.f24284f = str;
        this.f24285g = str2;
        this.f24289k = str3;
    }
}
