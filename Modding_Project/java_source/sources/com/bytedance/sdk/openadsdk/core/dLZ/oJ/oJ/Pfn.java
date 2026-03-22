package com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.dLZ.kkU;
import com.bytedance.sdk.openadsdk.core.dLZ.oJ.ZYk;
import com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ;
import com.bytedance.sdk.openadsdk.core.model.cY;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class Pfn extends com.bytedance.sdk.openadsdk.core.dLZ.oJ.ZYk {
    public static final String cFZ = null;

    public Pfn(Context context, int i10, int i11) {
        super(context, i10, i11);
    }

    public static int ZYk(String str) {
        if (TextUtils.isEmpty(str)) {
            return Integer.MIN_VALUE;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return Integer.MIN_VALUE;
        }
    }

    private void tB(String str) {
        com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ oJVar;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        List singletonList = Collections.singletonList(new tB.oJ(str).oJ());
        if (this.oJ > 0) {
            oJVar = com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.NO_ADS_VAST_RESPONSE;
        } else {
            oJVar = com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.UNDEFINED_ERROR;
        }
        com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ((cY) null, singletonList, oJVar, -1L, (String) null, (String) null), (tB.ZYk) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.bytedance.sdk.openadsdk.core.dLZ.oJ.ZYk
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.bytedance.sdk.openadsdk.core.dLZ.oJ oJ(java.lang.String r5, java.io.File r6, java.util.List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> r7) {
        /*
            r4 = this;
            r0 = 0
            r4.Pfn = r0
            android.content.Context r1 = r4.ZYk
            r2 = 0
            if (r1 != 0) goto Lc
            r5 = -1
            r4.Pfn = r5
            return r2
        Lc:
            boolean r1 = android.text.TextUtils.isEmpty(r5)
            if (r1 == 0) goto L18
            if (r6 != 0) goto L18
            r5 = -2
            r4.Pfn = r5
            return r2
        L18:
            boolean r1 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L4f
            java.lang.String r3 = "UTF-8"
            if (r1 != 0) goto L2c
            java.io.ByteArrayInputStream r6 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L4f
            byte[] r5 = r5.getBytes(r3)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L4f
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L4f
            goto L32
        L2a:
            r5 = move-exception
            goto L5c
        L2c:
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L4f
            r5.<init>(r6)     // Catch: java.lang.Throwable -> L2a java.lang.Exception -> L4f
            r6 = r5
        L32:
            org.xmlpull.v1.XmlPullParser r5 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L50
            java.lang.String r1 = "http://xmlpull.org/v1/doc/features.html#process-namespaces"
            r5.setFeature(r1, r0)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L50
            r5.setInput(r6, r3)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L50
            r5.nextTag()     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L50
            com.bytedance.sdk.openadsdk.core.dLZ.oJ r5 = r4.oJ(r5, r7)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L50
            r4.oJ(r5)     // Catch: java.lang.Throwable -> L4c java.lang.Exception -> L50
            r6.close()     // Catch: java.io.IOException -> L4b
        L4b:
            return r5
        L4c:
            r5 = move-exception
            r2 = r6
            goto L5c
        L4f:
            r6 = r2
        L50:
            r5 = -3
            r4.Pfn = r5     // Catch: java.lang.Throwable -> L4c
            r4.oJ(r2)     // Catch: java.lang.Throwable -> L4c
            if (r6 == 0) goto L5b
            r6.close()     // Catch: java.io.IOException -> L5b
        L5b:
            return r2
        L5c:
            if (r2 == 0) goto L61
            r2.close()     // Catch: java.io.IOException -> L61
        L61:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.Pfn.oJ(java.lang.String, java.io.File, java.util.List):com.bytedance.sdk.openadsdk.core.dLZ.oJ");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class oJ {
        oJ.EnumC0210oJ ZYk;
        String ex;
        String oJ;
        oJ.ZYk tB;
        final List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> Pfn = new ArrayList();

        /* renamed from: ba  reason: collision with root package name */
        final List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> f13140ba = new ArrayList();
        float cFZ = Float.MIN_VALUE;

        public oJ() {
        }

        public void ZYk(String str) {
            this.f13140ba.add(new tB.oJ(str).oJ());
        }

        public void oJ(String str, oJ.EnumC0210oJ enumC0210oJ, oJ.ZYk zYk) {
            this.oJ = str;
            this.ZYk = enumC0210oJ;
            this.tB = zYk;
        }

        public void oJ(String str) {
            this.Pfn.add(new tB.oJ(str).oJ());
        }

        public oJ(String str, oJ.EnumC0210oJ enumC0210oJ, oJ.ZYk zYk) {
            oJ(str, enumC0210oJ, zYk);
        }
    }

    public static String ZYk(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        String str2;
        String str3 = cFZ;
        xmlPullParser.require(2, str3, str);
        if (xmlPullParser.next() == 4) {
            str2 = xmlPullParser.getText().trim();
            xmlPullParser.nextTag();
        } else {
            str2 = "";
        }
        xmlPullParser.require(3, str3, str);
        return str2;
    }

    private com.bytedance.sdk.openadsdk.core.dLZ.oJ ZYk(XmlPullParser xmlPullParser, List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) throws XmlPullParserException, IOException {
        File file;
        File file2 = null;
        if (this.oJ >= 5) {
            oJ(xmlPullParser);
            return null;
        }
        com.bytedance.sdk.openadsdk.core.dLZ.ex exVar = new com.bytedance.sdk.openadsdk.core.dLZ.ex();
        String str = null;
        com.bytedance.sdk.openadsdk.core.dLZ.tB tBVar = null;
        Set<kkU> set = null;
        while (true) {
            if (xmlPullParser.getEventType() == 3 && "Wrapper".equals(xmlPullParser.getName())) {
                com.bytedance.sdk.openadsdk.core.dLZ.oJ oJ2 = oJ(str, file2, list);
                if (oJ2 != null) {
                    if (oJ2.tB() == null) {
                        oJ2.oJ(tBVar);
                    }
                    oJ2.oJ().oJ(exVar);
                    if (set != null) {
                        oJ2.oJ(set);
                    }
                }
                return oJ2;
            }
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                name.hashCode();
                char c10 = 65535;
                switch (name.hashCode()) {
                    case -587420703:
                        if (name.equals("VASTAdTagURI")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 67232232:
                        if (name.equals("Error")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 184043572:
                        if (name.equals("Extensions")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 611554000:
                        if (name.equals("TrackingEvents")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1150879268:
                        if (name.equals("CompanionAds")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 2107600959:
                        if (name.equals("ClickTracking")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 2114088489:
                        if (name.equals("Impression")) {
                            c10 = 6;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        String oJ3 = oJ(ZYk(xmlPullParser, "VASTAdTagURI"), list);
                        if (!TextUtils.isEmpty(oJ3)) {
                            file = null;
                            str = oJ3;
                            break;
                        } else {
                            oJ(xmlPullParser, "Wrapper", 3);
                            this.Pfn = -2;
                            return null;
                        }
                    case 1:
                        list.add(new tB.oJ(ZYk(xmlPullParser, "Error")).oJ());
                        file = null;
                        break;
                    case 2:
                        while (true) {
                            if (xmlPullParser.getEventType() == 3 && "Extensions".equals(xmlPullParser.getName())) {
                                file = null;
                                break;
                            } else {
                                xmlPullParser.next();
                                if (xmlPullParser.getEventType() == 2 && "AdVerifications".equals(xmlPullParser.getName())) {
                                    set = ex.oJ(xmlPullParser);
                                }
                            }
                        }
                        break;
                    case 3:
                        tB.oJ(xmlPullParser, exVar);
                        file = null;
                        break;
                    case 4:
                        tBVar = com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.oJ.oJ(this.ZYk, xmlPullParser);
                        file2 = null;
                        continue;
                    case 5:
                        exVar.cFZ(oJ(xmlPullParser, "ClickTracking"));
                        file = null;
                        break;
                    case 6:
                        exVar.oJ(oJ(xmlPullParser, name));
                        file = null;
                        break;
                    default:
                        file = null;
                        break;
                }
            } else {
                file = file2;
            }
            file2 = file;
        }
    }

    private void oJ(com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar) {
        if (this.f13137ba == null) {
            this.f13137ba = new ZYk.oJ();
        }
        ZYk.oJ oJVar2 = this.f13137ba;
        oJVar2.oJ = this.Pfn;
        oJVar2.ZYk = this.oJ;
        if (oJVar != null) {
            oJVar2.tB = oJVar.oJ().ZYk.size() <= 0;
        }
    }

    private com.bytedance.sdk.openadsdk.core.dLZ.oJ oJ(XmlPullParser xmlPullParser, List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) throws IOException, XmlPullParserException {
        xmlPullParser.require(2, cFZ, "VAST");
        boolean z10 = false;
        String str = null;
        while (xmlPullParser.next() != 1) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if ("Error".equals(name)) {
                    str = ZYk(xmlPullParser, name);
                } else if ("Ad".equals(name)) {
                    if (oJ(xmlPullParser.getAttributeValue(cFZ, "sequence"))) {
                        while (true) {
                            if (xmlPullParser.next() == 3 && "Ad".equals(xmlPullParser.getName())) {
                                break;
                            } else if (xmlPullParser.getEventType() == 2) {
                                String name2 = xmlPullParser.getName();
                                if ("InLine".equals(name2)) {
                                    com.bytedance.sdk.openadsdk.core.dLZ.oJ oJ2 = ZYk.oJ(this.ZYk, xmlPullParser, list, this.tB, this.ex);
                                    if (oJ2 != null) {
                                        if (TextUtils.isEmpty(oJ2.cFZ())) {
                                            this.Pfn = -6;
                                            return null;
                                        }
                                        return oJ2;
                                    }
                                } else if ("Wrapper".equals(name2)) {
                                    com.bytedance.sdk.openadsdk.core.dLZ.oJ ZYk = ZYk(xmlPullParser, list);
                                    if (ZYk != null) {
                                        return ZYk;
                                    }
                                } else {
                                    oJ(xmlPullParser);
                                }
                            }
                        }
                    } else {
                        oJ(xmlPullParser);
                    }
                    z10 = true;
                } else {
                    oJ(xmlPullParser);
                }
            }
        }
        if (!z10) {
            this.Pfn = -4;
            tB(str);
        }
        if (this.Pfn == 0) {
            this.Pfn = -5;
        }
        return null;
    }

    public static List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> oJ(XmlPullParser xmlPullParser, String str) throws IOException, XmlPullParserException {
        return oJ(xmlPullParser, str, false);
    }

    public static List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> oJ(XmlPullParser xmlPullParser, String str, boolean z10) throws IOException, XmlPullParserException {
        return oJ(ZYk(xmlPullParser, str), z10);
    }

    public static void oJ(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        if (xmlPullParser.getEventType() != 2) {
            throw new IllegalStateException();
        }
        int i10 = 1;
        while (i10 != 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i10++;
            } else if (next == 3) {
                i10--;
            }
        }
    }

    public static void oJ(XmlPullParser xmlPullParser, String str, int i10) throws XmlPullParserException, IOException {
        while (xmlPullParser.getEventType() != 1) {
            if (str.equals(xmlPullParser.getName()) && xmlPullParser.getEventType() == i10) {
                return;
            }
            xmlPullParser.next();
        }
    }

    private static List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> oJ(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return new ArrayList();
        }
        return Collections.singletonList(new tB.oJ(str).oJ(z10).oJ());
    }
}
