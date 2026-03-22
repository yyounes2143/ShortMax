package com.bytedance.sdk.component.ZYk.oJ;

import androidx.webkit.ProxyConfig;
import com.applovin.shadow.okhttp3.HttpUrl;
import com.inmobi.commons.core.configs.AdConfig;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3.dex */
public final class cFZ {
    private static final char[] ex = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private final String Pfn;
    final String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final String f12609ba;
    private final List<String> cFZ;
    private final String jFA;
    private final String kkU;
    final String oJ;

    /* renamed from: so  reason: collision with root package name */
    private final List<String> f12610so;
    final int tB;

    /* loaded from: classes3.dex */
    public static final class oJ {

        /* renamed from: ba  reason: collision with root package name */
        final List<String> f12611ba;
        List<String> cFZ;
        String ex;
        String oJ;

        /* renamed from: so  reason: collision with root package name */
        String f12612so;
        String ZYk = "";
        String tB = "";
        int Pfn = -1;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.bytedance.sdk.component.ZYk.oJ.cFZ$oJ$oJ  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public enum EnumC0161oJ {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public oJ() {
            ArrayList arrayList = new ArrayList();
            this.f12611ba = arrayList;
            arrayList.add("");
        }

        private boolean Pfn(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean ba(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        public oJ ZYk(String str) {
            if (str != null) {
                String Pfn = Pfn(str, 0, str.length());
                if (Pfn != null) {
                    this.ex = Pfn;
                    return this;
                }
                throw new IllegalArgumentException("unexpected host: ".concat(str));
            }
            throw new NullPointerException("host == null");
        }

        public oJ ex(String str) {
            this.cFZ = str != null ? cFZ.ZYk(cFZ.oJ(str, HttpUrl.QUERY_ENCODE_SET, true, false, true, true)) : null;
            return this;
        }

        public oJ oJ(String str) {
            if (str != null) {
                if (str.equalsIgnoreCase(ProxyConfig.MATCH_HTTP)) {
                    this.oJ = ProxyConfig.MATCH_HTTP;
                } else if (str.equalsIgnoreCase("https")) {
                    this.oJ = "https";
                } else {
                    throw new IllegalArgumentException("unexpected scheme: ".concat(str));
                }
                return this;
            }
            throw new NullPointerException("scheme == null");
        }

        public oJ tB(String str) {
            if (str != null) {
                return oJ(str, true);
            }
            throw new NullPointerException("encodedPathSegments == null");
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.oJ);
            sb2.append("://");
            if (!this.ZYk.isEmpty() || !this.tB.isEmpty()) {
                sb2.append(this.ZYk);
                if (!this.tB.isEmpty()) {
                    sb2.append(':');
                    sb2.append(this.tB);
                }
                sb2.append('@');
            }
            if (this.ex.indexOf(58) != -1) {
                sb2.append('[');
                sb2.append(this.ex);
                sb2.append(']');
            } else {
                sb2.append(this.ex);
            }
            int oJ = oJ();
            if (oJ != cFZ.oJ(this.oJ)) {
                sb2.append(':');
                sb2.append(oJ);
            }
            cFZ.oJ(sb2, this.f12611ba);
            if (this.cFZ != null) {
                sb2.append('?');
                cFZ.ZYk(sb2, this.cFZ);
            }
            if (this.f12612so != null) {
                sb2.append('#');
                sb2.append(this.f12612so);
            }
            return sb2.toString();
        }

        private static String Pfn(String str, int i10, int i11) {
            return com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(cFZ.oJ(str, i10, i11, false));
        }

        private static int ex(String str, int i10, int i11) {
            while (i10 < i11) {
                char charAt = str.charAt(i10);
                if (charAt == ':') {
                    return i10;
                }
                if (charAt == '[') {
                    do {
                        i10++;
                        if (i10 < i11) {
                        }
                    } while (str.charAt(i10) != ']');
                }
                i10++;
            }
            return i11;
        }

        private void tB() {
            List<String> list = this.f12611ba;
            if (list.remove(list.size() - 1).isEmpty() && !this.f12611ba.isEmpty()) {
                List<String> list2 = this.f12611ba;
                list2.set(list2.size() - 1, "");
                return;
            }
            this.f12611ba.add("");
        }

        private static int ba(String str, int i10, int i11) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(cFZ.oJ(str, i10, i11, "", false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (parseInt <= 0 || parseInt > 65535) {
                return -1;
            }
            return parseInt;
        }

        public cFZ ZYk() {
            if (this.oJ != null) {
                if (this.ex != null) {
                    return new cFZ(this);
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        private static int tB(String str, int i10, int i11) {
            int i12 = 0;
            while (i10 < i11) {
                char charAt = str.charAt(i10);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i12++;
                i10++;
            }
            return i12;
        }

        int oJ() {
            int i10 = this.Pfn;
            return i10 != -1 ? i10 : cFZ.oJ(this.oJ);
        }

        private oJ oJ(String str, boolean z10) {
            int i10 = 0;
            do {
                int oJ = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str, i10, str.length(), "/\\");
                oJ(str, i10, oJ, oJ < str.length(), z10);
                i10 = oJ + 1;
            } while (i10 <= str.length());
            return this;
        }

        private static int ZYk(String str, int i10, int i11) {
            if (i11 - i10 < 2) {
                return -1;
            }
            char charAt = str.charAt(i10);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                while (true) {
                    i10++;
                    if (i10 >= i11) {
                        break;
                    }
                    char charAt2 = str.charAt(i10);
                    if (charAt2 < 'a' || charAt2 > 'z') {
                        if (charAt2 < 'A' || charAt2 > 'Z') {
                            if (charAt2 < '0' || charAt2 > '9') {
                                if (charAt2 != '+' && charAt2 != '-' && charAt2 != '.') {
                                    if (charAt2 == ':') {
                                        return i10;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        public oJ oJ(String str, String str2) {
            if (str != null) {
                if (this.cFZ == null) {
                    this.cFZ = new ArrayList();
                }
                this.cFZ.add(cFZ.oJ(str, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true));
                this.cFZ.add(str2 != null ? cFZ.oJ(str2, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, true) : null);
                return this;
            }
            throw new NullPointerException("encodedName == null");
        }

        EnumC0161oJ oJ(cFZ cfz, String str) {
            int oJ;
            int i10;
            int oJ2 = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str, 0, str.length());
            int ZYk = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.ZYk(str, oJ2, str.length());
            if (ZYk(str, oJ2, ZYk) != -1) {
                if (str.regionMatches(true, oJ2, "https:", 0, 6)) {
                    this.oJ = "https";
                    oJ2 += 6;
                } else if (str.regionMatches(true, oJ2, "http:", 0, 5)) {
                    this.oJ = ProxyConfig.MATCH_HTTP;
                    oJ2 += 5;
                } else {
                    return EnumC0161oJ.UNSUPPORTED_SCHEME;
                }
            } else if (cfz != null) {
                this.oJ = cfz.oJ;
            } else {
                return EnumC0161oJ.MISSING_SCHEME;
            }
            int tB = tB(str, oJ2, ZYk);
            char c10 = '?';
            char c11 = '#';
            if (tB < 2 && cfz != null && cfz.oJ.equals(this.oJ)) {
                this.ZYk = cfz.ZYk();
                this.tB = cfz.tB();
                this.ex = cfz.ZYk;
                this.Pfn = cfz.tB;
                this.f12611ba.clear();
                this.f12611ba.addAll(cfz.ex());
                if (oJ2 == ZYk || str.charAt(oJ2) == '#') {
                    ex(cfz.Pfn());
                }
            } else {
                boolean z10 = false;
                boolean z11 = false;
                int i11 = oJ2 + tB;
                while (true) {
                    oJ = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str, i11, ZYk, "@/\\?#");
                    char charAt = oJ != ZYk ? str.charAt(oJ) : (char) 65535;
                    if (charAt == 65535 || charAt == c11 || charAt == '/' || charAt == '\\' || charAt == c10) {
                        break;
                    } else if (charAt == '@') {
                        if (!z10) {
                            int oJ3 = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str, i11, oJ, ':');
                            i10 = oJ;
                            String oJ4 = cFZ.oJ(str, i11, oJ3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z11) {
                                oJ4 = this.ZYk + "%40" + oJ4;
                            }
                            this.ZYk = oJ4;
                            if (oJ3 != i10) {
                                this.tB = cFZ.oJ(str, oJ3 + 1, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z10 = true;
                            }
                            z11 = true;
                        } else {
                            i10 = oJ;
                            this.tB += "%40" + cFZ.oJ(str, i11, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        }
                        i11 = i10 + 1;
                        c10 = '?';
                        c11 = '#';
                    }
                }
                int ex = ex(str, i11, oJ);
                int i12 = ex + 1;
                if (i12 < oJ) {
                    this.ex = Pfn(str, i11, ex);
                    int ba2 = ba(str, i12, oJ);
                    this.Pfn = ba2;
                    if (ba2 == -1) {
                        return EnumC0161oJ.INVALID_PORT;
                    }
                } else {
                    this.ex = Pfn(str, i11, ex);
                    this.Pfn = cFZ.oJ(this.oJ);
                }
                if (this.ex == null) {
                    return EnumC0161oJ.INVALID_HOST;
                }
                oJ2 = oJ;
            }
            int oJ5 = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str, oJ2, ZYk, "?#");
            oJ(str, oJ2, oJ5);
            if (oJ5 < ZYk && str.charAt(oJ5) == '?') {
                int oJ6 = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str, oJ5, ZYk, '#');
                this.cFZ = cFZ.ZYk(cFZ.oJ(str, oJ5 + 1, oJ6, HttpUrl.QUERY_ENCODE_SET, true, false, true, true, null));
                oJ5 = oJ6;
            }
            if (oJ5 < ZYk && str.charAt(oJ5) == '#') {
                this.f12612so = cFZ.oJ(str, 1 + oJ5, ZYk, "", true, false, false, false, null);
            }
            return EnumC0161oJ.SUCCESS;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
            */
        /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0044 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0029 -> B:10:0x001d). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void oJ(java.lang.String r11, int r12, int r13) {
            /*
                r10 = this;
                if (r12 != r13) goto L3
                return
            L3:
                char r0 = r11.charAt(r12)
                r1 = 47
                java.lang.String r2 = ""
                r3 = 1
                if (r0 == r1) goto L1f
                r1 = 92
                if (r0 != r1) goto L13
                goto L1f
            L13:
                java.util.List<java.lang.String> r0 = r10.f12611ba
                int r1 = r0.size()
                int r1 = r1 - r3
                r0.set(r1, r2)
            L1d:
                r6 = r12
                goto L2c
            L1f:
                java.util.List<java.lang.String> r0 = r10.f12611ba
                r0.clear()
                java.util.List<java.lang.String> r0 = r10.f12611ba
                r0.add(r2)
            L29:
                int r12 = r12 + 1
                goto L1d
            L2c:
                if (r6 >= r13) goto L44
                java.lang.String r12 = "/\\"
                int r12 = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(r11, r6, r13, r12)
                if (r12 >= r13) goto L38
                r0 = r3
                goto L39
            L38:
                r0 = 0
            L39:
                r9 = 1
                r4 = r10
                r5 = r11
                r7 = r12
                r8 = r0
                r4.oJ(r5, r6, r7, r8, r9)
                if (r0 == 0) goto L1d
                goto L29
            L44:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.component.ZYk.oJ.cFZ.oJ.oJ(java.lang.String, int, int):void");
        }

        private void oJ(String str, int i10, int i11, boolean z10, boolean z11) {
            String oJ = cFZ.oJ(str, i10, i11, HttpUrl.PATH_SEGMENT_ENCODE_SET, z11, false, false, true, null);
            if (Pfn(oJ)) {
                return;
            }
            if (ba(oJ)) {
                tB();
                return;
            }
            List<String> list = this.f12611ba;
            if (list.get(list.size() - 1).isEmpty()) {
                List<String> list2 = this.f12611ba;
                list2.set(list2.size() - 1, oJ);
            } else {
                this.f12611ba.add(oJ);
            }
            if (z10) {
                this.f12611ba.add("");
            }
        }
    }

    cFZ(oJ oJVar) {
        List<String> list;
        this.oJ = oJVar.oJ;
        this.Pfn = oJ(oJVar.ZYk, false);
        this.f12609ba = oJ(oJVar.tB, false);
        this.ZYk = oJVar.ex;
        this.tB = oJVar.oJ();
        this.cFZ = oJ(oJVar.f12611ba, false);
        List<String> list2 = oJVar.cFZ;
        if (list2 != null) {
            list = oJ(list2, true);
        } else {
            list = null;
        }
        this.f12610so = list;
        String str = oJVar.f12612so;
        this.jFA = str != null ? oJ(str, false) : null;
        this.kkU = oJVar.toString();
    }

    public String Pfn() {
        if (this.f12610so == null) {
            return null;
        }
        int indexOf = this.kkU.indexOf(63) + 1;
        String str = this.kkU;
        return this.kkU.substring(indexOf, com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str, indexOf, str.length(), '#'));
    }

    public String ZYk() {
        if (this.Pfn.isEmpty()) {
            return "";
        }
        int length = this.oJ.length() + 3;
        String str = this.kkU;
        return this.kkU.substring(length, com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str, length, str.length(), ":@"));
    }

    public boolean equals(Object obj) {
        if ((obj instanceof cFZ) && ((cFZ) obj).kkU.equals(this.kkU)) {
            return true;
        }
        return false;
    }

    public List<String> ex() {
        int indexOf = this.kkU.indexOf(47, this.oJ.length() + 3);
        String str = this.kkU;
        int oJ2 = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str, indexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (indexOf < oJ2) {
            int i10 = indexOf + 1;
            int oJ3 = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(this.kkU, i10, oJ2, '/');
            arrayList.add(this.kkU.substring(i10, oJ3));
            indexOf = oJ3;
        }
        return arrayList;
    }

    public int hashCode() {
        return this.kkU.hashCode();
    }

    public URL oJ() {
        try {
            return new URL(this.kkU);
        } catch (MalformedURLException e10) {
            throw new RuntimeException(e10);
        }
    }

    public String tB() {
        if (this.f12609ba.isEmpty()) {
            return "";
        }
        int indexOf = this.kkU.indexOf(64);
        return this.kkU.substring(this.kkU.indexOf(58, this.oJ.length() + 3) + 1, indexOf);
    }

    public String toString() {
        return this.kkU;
    }

    public static int oJ(String str) {
        if (str.equals(ProxyConfig.MATCH_HTTP)) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    static void ZYk(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            String str = list.get(i10);
            String str2 = list.get(i10 + 1);
            if (i10 > 0) {
                sb2.append('&');
            }
            sb2.append(str);
            if (str2 != null) {
                sb2.append('=');
                sb2.append(str2);
            }
        }
    }

    static void oJ(StringBuilder sb2, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb2.append('/');
            sb2.append(list.get(i10));
        }
    }

    public static cFZ tB(String str) {
        oJ oJVar = new oJ();
        if (oJVar.oJ((cFZ) null, str) == oJ.EnumC0161oJ.SUCCESS) {
            return oJVar.ZYk();
        }
        return null;
    }

    static String oJ(String str, boolean z10) {
        return oJ(str, 0, str.length(), z10);
    }

    private List<String> oJ(List<String> list, boolean z10) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            String str = list.get(i10);
            arrayList.add(str != null ? oJ(str, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static List<String> ZYk(String str) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 <= str.length()) {
            int indexOf = str.indexOf(38, i10);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i10);
            if (indexOf2 != -1 && indexOf2 <= indexOf) {
                arrayList.add(str.substring(i10, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            } else {
                arrayList.add(str.substring(i10, indexOf));
                arrayList.add(null);
            }
            i10 = indexOf + 1;
        }
        return arrayList;
    }

    static String oJ(String str, int i10, int i11, boolean z10) {
        for (int i12 = i10; i12 < i11; i12++) {
            char charAt = str.charAt(i12);
            if (charAt == '%' || (charAt == '+' && z10)) {
                com.bytedance.sdk.component.ZYk.oJ.ZYk.oJ oJVar = new com.bytedance.sdk.component.ZYk.oJ.ZYk.oJ();
                oJVar.oJ(str, i10, i12);
                oJ(oJVar, str, i12, i11, z10);
                return oJVar.tB();
            }
        }
        return str.substring(i10, i11);
    }

    static void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk.oJ oJVar, String str, int i10, int i11, boolean z10) {
        int i12;
        while (i10 < i11) {
            int codePointAt = str.codePointAt(i10);
            if (codePointAt == 37 && (i12 = i10 + 2) < i11) {
                int oJ2 = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str.charAt(i10 + 1));
                int oJ3 = com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str.charAt(i12));
                if (oJ2 != -1 && oJ3 != -1) {
                    oJVar.ZYk((oJ2 << 4) + oJ3);
                    i10 = i12;
                }
                oJVar.oJ(codePointAt);
            } else {
                if (codePointAt == 43 && z10) {
                    oJVar.ZYk(32);
                }
                oJVar.oJ(codePointAt);
            }
            i10 += Character.charCount(codePointAt);
        }
    }

    static boolean oJ(String str, int i10, int i11) {
        int i12 = i10 + 2;
        return i12 < i11 && str.charAt(i10) == '%' && com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str.charAt(i10 + 1)) != -1 && com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ(str.charAt(i12)) != -1;
    }

    static String oJ(String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        int i12 = i10;
        while (i12 < i11) {
            int codePointAt = str.codePointAt(i12);
            if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || !z13)) {
                if (str2.indexOf(codePointAt) == -1 && ((codePointAt != 37 || (z10 && (!z11 || oJ(str, i12, i11)))) && (codePointAt != 43 || !z12))) {
                    i12 += Character.charCount(codePointAt);
                }
            }
            com.bytedance.sdk.component.ZYk.oJ.ZYk.oJ oJVar = new com.bytedance.sdk.component.ZYk.oJ.ZYk.oJ();
            oJVar.oJ(str, i10, i12);
            oJ(oJVar, str, i12, i11, str2, z10, z11, z12, z13, charset);
            return oJVar.tB();
        }
        return str.substring(i10, i11);
    }

    static void oJ(com.bytedance.sdk.component.ZYk.oJ.ZYk.oJ oJVar, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        com.bytedance.sdk.component.ZYk.oJ.ZYk.oJ oJVar2 = null;
        while (i10 < i11) {
            int codePointAt = str.codePointAt(i10);
            if (!z10 || (codePointAt != 9 && codePointAt != 10 && codePointAt != 12 && codePointAt != 13)) {
                if (codePointAt == 43 && z12) {
                    oJVar.oJ(z10 ? "+" : "%2B");
                } else if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || !z13) && str2.indexOf(codePointAt) == -1 && (codePointAt != 37 || (z10 && (!z11 || oJ(str, i10, i11)))))) {
                    oJVar.oJ(codePointAt);
                } else {
                    if (oJVar2 == null) {
                        oJVar2 = new com.bytedance.sdk.component.ZYk.oJ.ZYk.oJ();
                    }
                    if (charset != null && !charset.equals(com.bytedance.sdk.component.ZYk.oJ.ZYk.jFA.oJ)) {
                        oJVar2.oJ(str, i10, Character.charCount(codePointAt) + i10, charset);
                    } else {
                        oJVar2.oJ(codePointAt);
                    }
                    while (!oJVar2.oJ()) {
                        byte ZYk = oJVar2.ZYk();
                        int i12 = ZYk & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                        oJVar.ZYk(37);
                        char[] cArr = ex;
                        oJVar.ZYk((int) cArr[(i12 >> 4) & 15]);
                        oJVar.ZYk((int) cArr[ZYk & 15]);
                    }
                }
            }
            i10 += Character.charCount(codePointAt);
        }
    }

    static String oJ(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        return oJ(str, 0, str.length(), str2, z10, z11, z12, z13, null);
    }
}
