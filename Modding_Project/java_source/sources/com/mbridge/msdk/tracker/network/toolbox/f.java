package com.mbridge.msdk.tracker.network.toolbox;

import com.huawei.hms.framework.common.ContainerUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.Command;
import com.mbridge.msdk.tracker.network.b;
import com.mbridge.msdk.tracker.network.c0;
import com.mbridge.msdk.tracker.network.q;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeSet;
/* compiled from: HttpHeaderParser.java */
/* loaded from: classes6.dex */
public class f {
    public static b.a a(q qVar) {
        boolean z10;
        long j10;
        long j11;
        long j12;
        long j13;
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = qVar.f30317c;
        if (map == null) {
            return null;
        }
        String str = map.get("Date");
        long b10 = str != null ? b(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i10 = 0;
        if (str2 != null) {
            String[] split = str2.split(",", 0);
            z10 = false;
            j10 = 0;
            j11 = 0;
            while (i10 < split.length) {
                String trim = split[i10].trim();
                if (trim.equals("no-cache") || trim.equals("no-store")) {
                    return null;
                }
                if (trim.startsWith("max-age=")) {
                    try {
                        j10 = Long.parseLong(trim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (trim.startsWith("stale-while-revalidate=")) {
                    j11 = Long.parseLong(trim.substring(23));
                } else if (trim.equals("must-revalidate") || trim.equals("proxy-revalidate")) {
                    z10 = true;
                }
                i10++;
            }
            i10 = 1;
        } else {
            z10 = false;
            j10 = 0;
            j11 = 0;
        }
        String str3 = map.get("Expires");
        long b11 = str3 != null ? b(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long b12 = str4 != null ? b(str4) : 0L;
        String str5 = map.get(Command.HTTP_HEADER_ETAG);
        if (i10 != 0) {
            j13 = currentTimeMillis + (j10 * 1000);
            if (!z10) {
                j12 = j13;
                j13 += j11 * 1000;
                b.a aVar = new b.a();
                aVar.f30252a = qVar.f30316b;
                aVar.f30253b = str5;
                aVar.f30257f = j12;
                aVar.f30256e = j13;
                aVar.f30254c = b10;
                aVar.f30255d = b12;
                aVar.f30258g = map;
                aVar.f30259h = qVar.f30318d;
                return aVar;
            }
            j12 = j13;
            b.a aVar2 = new b.a();
            aVar2.f30252a = qVar.f30316b;
            aVar2.f30253b = str5;
            aVar2.f30257f = j12;
            aVar2.f30256e = j13;
            aVar2.f30254c = b10;
            aVar2.f30255d = b12;
            aVar2.f30258g = map;
            aVar2.f30259h = qVar.f30318d;
            return aVar2;
        }
        j12 = 0;
        if (b10 <= 0 || b11 < b10) {
            j13 = 0;
            b.a aVar22 = new b.a();
            aVar22.f30252a = qVar.f30316b;
            aVar22.f30253b = str5;
            aVar22.f30257f = j12;
            aVar22.f30256e = j13;
            aVar22.f30254c = b10;
            aVar22.f30255d = b12;
            aVar22.f30258g = map;
            aVar22.f30259h = qVar.f30318d;
            return aVar22;
        }
        j13 = currentTimeMillis + (b11 - b10);
        j12 = j13;
        b.a aVar222 = new b.a();
        aVar222.f30252a = qVar.f30316b;
        aVar222.f30253b = str5;
        aVar222.f30257f = j12;
        aVar222.f30256e = j13;
        aVar222.f30254c = b10;
        aVar222.f30255d = b12;
        aVar222.f30258g = map;
        aVar222.f30259h = qVar.f30318d;
        return aVar222;
    }

    public static long b(String str) {
        try {
            Date parse = a("EEE, dd MMM yyyy HH:mm:ss zzz").parse(str);
            if (parse == null) {
                return 0L;
            }
            return parse.getTime();
        } catch (ParseException e10) {
            if (!MBridgeConstans.ENDCARD_URL_TYPE_PL.equals(str) && !"-1".equals(str)) {
                c0.a(e10, "Unable to parse dateStr: %s, falling back to 0", str);
            } else {
                c0.d("Unable to parse dateStr: %s, falling back to 0", str);
            }
            return 0L;
        }
    }

    static String a(long j10) {
        return a("EEE, dd MMM yyyy HH:mm:ss 'GMT'").format(new Date(j10));
    }

    private static SimpleDateFormat a(String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str, Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat;
    }

    public static String a(Map<String, String> map, String str) {
        String str2;
        if (map != null && (str2 = map.get(CommonGatewayClient.HEADER_CONTENT_TYPE)) != null) {
            String[] split = str2.split(";", 0);
            for (int i10 = 1; i10 < split.length; i10++) {
                String[] split2 = split[i10].trim().split(ContainerUtils.KEY_VALUE_DELIMITER, 0);
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return str;
    }

    public static String a(Map<String, String> map) {
        return a(map, "ISO-8859-1");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static List<com.mbridge.msdk.tracker.network.g> a(List<com.mbridge.msdk.tracker.network.g> list, b.a aVar) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            for (com.mbridge.msdk.tracker.network.g gVar : list) {
                treeSet.add(gVar.a());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<com.mbridge.msdk.tracker.network.g> list2 = aVar.f30259h;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (com.mbridge.msdk.tracker.network.g gVar2 : aVar.f30259h) {
                    if (!treeSet.contains(gVar2.a())) {
                        arrayList.add(gVar2);
                    }
                }
            }
        } else if (!aVar.f30258g.isEmpty()) {
            for (Map.Entry<String, String> entry : aVar.f30258g.entrySet()) {
                if (!treeSet.contains(entry.getKey())) {
                    arrayList.add(new com.mbridge.msdk.tracker.network.g(entry.getKey(), entry.getValue()));
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> a(b.a aVar) {
        if (aVar == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        String str = aVar.f30253b;
        if (str != null) {
            hashMap.put("If-None-Match", str);
        }
        long j10 = aVar.f30255d;
        if (j10 > 0) {
            hashMap.put("If-Modified-Since", a(j10));
        }
        return hashMap;
    }
}
