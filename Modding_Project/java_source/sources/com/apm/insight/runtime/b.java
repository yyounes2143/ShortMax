package com.apm.insight.runtime;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.vungle.ads.internal.signals.SignalManager;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: AppAliveTrack.java */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static long f7176a = -30000;

    /* renamed from: b  reason: collision with root package name */
    private static File f7177b;

    public static void a(long j10) {
        if (j10 - f7176a < 30000) {
            return;
        }
        f7176a = j10;
        try {
            if (f7177b == null) {
                long currentTimeMillis = System.currentTimeMillis();
                String j11 = com.apm.insight.l.j.j(com.apm.insight.e.g());
                f7177b = new File(j11, "apminsight/TrackInfo/" + ((currentTimeMillis - (currentTimeMillis % SignalManager.TWENTY_FOUR_HOURS_MILLIS)) / SignalManager.TWENTY_FOUR_HOURS_MILLIS) + DomExceptionUtils.SEPARATOR + com.apm.insight.e.f());
            }
            com.apm.insight.l.f.a(f7177b, String.valueOf(System.currentTimeMillis()), false);
        } catch (IOException unused) {
        }
    }

    public static String a(long j10, String str) {
        try {
            String j11 = com.apm.insight.l.j.j(com.apm.insight.e.g());
            return com.apm.insight.l.f.a(new File(j11, "apminsight/TrackInfo/" + ((j10 - (j10 % SignalManager.TWENTY_FOUR_HOURS_MILLIS)) / SignalManager.TWENTY_FOUR_HOURS_MILLIS) + DomExceptionUtils.SEPARATOR + str), "\n");
        } catch (Throwable th2) {
            return th2.getMessage();
        }
    }

    public static void a() {
        File file = new File(com.apm.insight.l.j.j(com.apm.insight.e.g()), "apminsight/TrackInfo/");
        String[] list = file.list();
        if (list != null && list.length > 5) {
            Arrays.sort(list);
            for (int i10 = 0; i10 < list.length - 5; i10++) {
                com.apm.insight.l.f.a(new File(file, list[i10]));
            }
        }
    }
}
