package com.applovin.impl;

import android.net.Uri;
import android.webkit.URLUtil;
import androidx.core.app.NotificationCompat;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.huawei.hms.framework.common.ExceptionCode;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class x7 {

    /* renamed from: a  reason: collision with root package name */
    private static final DateFormat f10545a = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ", Locale.US);

    /* renamed from: b  reason: collision with root package name */
    private static final Random f10546b = new Random(System.currentTimeMillis());

    public static void a(p7 p7Var, AppLovinAdLoadListener appLovinAdLoadListener, q7 q7Var, int i10, com.applovin.impl.sdk.k kVar) {
        if (kVar != null) {
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.failedToReceiveAd(i10);
            }
            Set a10 = a(p7Var, kVar);
            if (CollectionUtils.isEmpty(a10)) {
                return;
            }
            a(a10, q7Var, kVar);
            return;
        }
        throw new IllegalArgumentException("Unable to handle failure. No sdk specified.");
    }

    public static boolean b(l7 l7Var) {
        y7 B1;
        List g10;
        return (l7Var == null || (B1 = l7Var.B1()) == null || (g10 = B1.g()) == null || g10.isEmpty()) ? false : true;
    }

    public static q7 c(l7 l7Var) {
        if (b(l7Var) || a(l7Var)) {
            return null;
        }
        return q7.GENERAL_WRAPPER_ERROR;
    }

    private static String b() {
        DateFormat dateFormat = f10545a;
        dateFormat.setTimeZone(TimeZone.getDefault());
        return dateFormat.format(new Date());
    }

    public static boolean a(l7 l7Var) {
        o7 s12;
        t7 e10;
        if (l7Var == null || (s12 = l7Var.s1()) == null || (e10 = s12.e()) == null) {
            return false;
        }
        return e10.c() != null || StringUtils.isValidString(e10.b());
    }

    public static boolean b(m8 m8Var) {
        if (m8Var != null) {
            return m8Var.b("Wrapper") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains a wrapper response");
    }

    public static Uri a(String str, long j10, Uri uri, q7 q7Var, com.applovin.impl.sdk.k kVar) {
        if (URLUtil.isValidUrl(str)) {
            try {
                String num = Integer.toString(q7Var.b());
                String replace = str.replace("[ERRORCODE]", num).replace("[REASON]", num);
                if (j10 >= 0) {
                    replace = replace.replace("[CONTENTPLAYHEAD]", a(j10));
                }
                if (uri != null) {
                    replace = replace.replace("[ASSETURI]", uri.toString());
                }
                return Uri.parse(replace.replace("[CACHEBUSTING]", a()).replace("[TIMESTAMP]", b()));
            } catch (Throwable th2) {
                kVar.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = kVar.O();
                    O.a("VastUtils", "Unable to replace macros in URL string " + str, th2);
                }
                kVar.E().a("VastUtils", th2);
                return null;
            }
        }
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            kVar.O().b("VastUtils", "Unable to replace macros in invalid URL string.");
        }
        return null;
    }

    private static String a(long j10) {
        if (j10 > 0) {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            long hours = timeUnit.toHours(j10);
            long minutes = timeUnit.toMinutes(j10);
            TimeUnit timeUnit2 = TimeUnit.MINUTES;
            return String.format(Locale.US, "%02d:%02d:%02d.000", Long.valueOf(hours), Long.valueOf(minutes % timeUnit2.toSeconds(1L)), Long.valueOf(j10 % timeUnit2.toSeconds(1L)));
        }
        return "00:00:00.000";
    }

    private static String a() {
        return Integer.toString(f10546b.nextInt(89999999) + ExceptionCode.CRASH_EXCEPTION);
    }

    public static void a(Set set, com.applovin.impl.sdk.k kVar) {
        a(set, -1L, (Uri) null, q7.UNSPECIFIED, kVar);
    }

    public static void a(Set set, q7 q7Var, com.applovin.impl.sdk.k kVar) {
        a(set, -1L, (Uri) null, q7Var, kVar);
    }

    public static void a(Set set, long j10, Uri uri, q7 q7Var, com.applovin.impl.sdk.k kVar) {
        if (kVar != null) {
            if (set == null || set.isEmpty()) {
                return;
            }
            Iterator it = set.iterator();
            while (it.hasNext()) {
                v7 v7Var = (v7) it.next();
                Uri a10 = a(v7Var.c(), j10, uri, q7Var, kVar);
                if (a10 != null) {
                    kVar.f0().a(com.applovin.impl.sdk.network.d.b().d(a10.toString()).a(false).b(v7Var.d()).a(), false);
                }
            }
            return;
        }
        throw new IllegalArgumentException("Unable to fire trackers. No sdk specified.");
    }

    public static void a(m8 m8Var, Map map, p7 p7Var, com.applovin.impl.sdk.k kVar) {
        List<m8> a10;
        if (kVar == null) {
            throw new IllegalArgumentException("Unable to render event trackers. No sdk specified.");
        }
        if (m8Var == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("VastUtils", "Unable to render event trackers; null node provided");
            }
        } else if (map == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("VastUtils", "Unable to render event trackers; null event trackers provided");
            }
        } else {
            m8 c10 = m8Var.c("TrackingEvents");
            if (c10 == null || (a10 = c10.a("Tracking")) == null) {
                return;
            }
            for (m8 m8Var2 : a10) {
                String str = (String) m8Var2.a().get(NotificationCompat.CATEGORY_EVENT);
                if (StringUtils.isValidString(str)) {
                    v7 a11 = v7.a(m8Var2, p7Var, kVar);
                    if (a11 != null) {
                        Set set = (Set) map.get(str);
                        if (set != null) {
                            set.add(a11);
                        } else {
                            HashSet hashSet = new HashSet();
                            hashSet.add(a11);
                            map.put(str, hashSet);
                        }
                    }
                } else {
                    kVar.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O = kVar.O();
                        O.b("VastUtils", "Could not find event for tracking node = " + m8Var2);
                    }
                }
            }
        }
    }

    public static void a(List list, Set set, p7 p7Var, com.applovin.impl.sdk.k kVar) {
        if (kVar == null) {
            throw new IllegalArgumentException("Unable to render trackers. No sdk specified.");
        }
        if (list == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("VastUtils", "Unable to render trackers; null nodes provided");
            }
        } else if (set == null) {
            kVar.O();
            if (com.applovin.impl.sdk.o.a()) {
                kVar.O().b("VastUtils", "Unable to render trackers; null trackers provided");
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                v7 a10 = v7.a((m8) it.next(), p7Var, kVar);
                if (a10 != null) {
                    set.add(a10);
                }
            }
        }
    }

    public static boolean a(m8 m8Var) {
        if (m8Var != null) {
            return m8Var.b("InLine") != null;
        }
        throw new IllegalArgumentException("Unable to check if a given XmlNode contains an inline response");
    }

    public static String a(p7 p7Var) {
        m8 b10;
        if (p7Var != null) {
            List a10 = p7Var.a();
            int size = p7Var.a().size();
            if (size <= 0 || (b10 = ((m8) a10.get(size - 1)).b("VASTAdTagURI")) == null) {
                return null;
            }
            return b10.d();
        }
        throw new IllegalArgumentException("Unable to get resolution uri string for fetching the next wrapper or inline response in the chain");
    }

    public static String a(m8 m8Var, String str, String str2) {
        m8 c10 = m8Var.c(str);
        if (c10 != null) {
            String d10 = c10.d();
            if (StringUtils.isValidString(d10)) {
                return d10;
            }
        }
        return str2;
    }

    private static Set a(p7 p7Var, com.applovin.impl.sdk.k kVar) {
        List a10;
        if (p7Var == null) {
            return null;
        }
        List<m8> a11 = p7Var.a();
        HashSet hashSet = new HashSet(a11.size());
        for (m8 m8Var : a11) {
            m8 b10 = m8Var.b("Wrapper");
            if (b10 == null) {
                b10 = m8Var.b("InLine");
            }
            if (b10 != null) {
                a10 = b10.a("Error");
            } else {
                a10 = m8Var.a("Error");
            }
            hashSet = a(hashSet, a10, p7Var, kVar);
        }
        kVar.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = kVar.O();
            O.a("VastUtils", "Retrieved " + hashSet.size() + " top level error trackers: " + hashSet);
        }
        return hashSet;
    }

    private static HashSet a(HashSet hashSet, List list, p7 p7Var, com.applovin.impl.sdk.k kVar) {
        if (list == null) {
            return hashSet;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            v7 a10 = v7.a((m8) it.next(), p7Var, kVar);
            if (a10 != null) {
                hashSet.add(a10);
            }
        }
        return hashSet;
    }
}
