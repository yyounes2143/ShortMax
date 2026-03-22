package com.google.ads.mediation.bidmachine.common;

import com.google.android.gms.ads.VersionInfo;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.CollectionsKt;
import kotlin.text.Regex;
/* loaded from: classes4.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final h f16965a = new h();

    private h() {
    }

    public static final VersionInfo a() {
        List a10 = f16965a.a("3.4.0");
        return new VersionInfo(Integer.parseInt((String) a10.get(0)), Integer.parseInt((String) a10.get(1)), Integer.parseInt((String) a10.get(2)));
    }

    public static final VersionInfo b() {
        List a10 = f16965a.a("3.4.0.48");
        return new VersionInfo(Integer.parseInt((String) a10.get(0)), Integer.parseInt((String) a10.get(1)), (Integer.parseInt((String) a10.get(2)) * 100) + Integer.parseInt((String) a10.get(3)));
    }

    private final List a(String str) {
        List<String> q10 = new Regex("\\.").q(str, 0);
        if (!q10.isEmpty()) {
            ListIterator<String> listIterator = q10.listIterator(q10.size());
            while (listIterator.hasPrevious()) {
                if (listIterator.previous().length() != 0) {
                    return CollectionsKt.V0(q10, listIterator.nextIndex() + 1);
                }
            }
        }
        return CollectionsKt.n();
    }
}
