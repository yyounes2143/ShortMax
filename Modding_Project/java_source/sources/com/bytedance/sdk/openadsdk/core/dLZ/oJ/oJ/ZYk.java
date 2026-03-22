package com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ;

import android.content.Context;
import android.text.TextUtils;
import java.io.IOException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class ZYk {
    public static com.bytedance.sdk.openadsdk.core.dLZ.oJ oJ(Context context, XmlPullParser xmlPullParser, List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list, int i10, double d10) throws IOException, XmlPullParserException {
        xmlPullParser.require(2, Pfn.cFZ, "InLine");
        com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar = new com.bytedance.sdk.openadsdk.core.dLZ.oJ();
        while (true) {
            if (xmlPullParser.next() == 3 && "InLine".equals(xmlPullParser.getName())) {
                oJVar.oJ().kkU(list);
                return oJVar;
            } else if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                name.hashCode();
                char c10 = 65535;
                switch (name.hashCode()) {
                    case -2077435339:
                        if (name.equals("AdVerifications")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1692490108:
                        if (name.equals("Creatives")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -56677412:
                        if (name.equals("Description")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 67232232:
                        if (name.equals("Error")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 184043572:
                        if (name.equals("Extensions")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 501930965:
                        if (name.equals("AdTitle")) {
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
                        oJVar.oJ(ex.oJ(xmlPullParser));
                        break;
                    case 1:
                        if (!TextUtils.isEmpty(oJVar.cFZ()) && oJVar.tB() != null) {
                            Pfn.oJ(xmlPullParser);
                            break;
                        } else {
                            while (xmlPullParser.next() != 3) {
                                if (xmlPullParser.getEventType() == 2) {
                                    if ("Creative".equals(xmlPullParser.getName())) {
                                        oJ(context, xmlPullParser, oJVar, i10, d10);
                                    } else {
                                        Pfn.oJ(xmlPullParser);
                                    }
                                }
                            }
                            break;
                        }
                        break;
                    case 2:
                        oJVar.ZYk(Pfn.ZYk(xmlPullParser, name));
                        break;
                    case 3:
                        list.addAll(Pfn.oJ(xmlPullParser, name));
                        break;
                    case 4:
                        while (true) {
                            if (xmlPullParser.getEventType() != 3 || !"Extensions".equals(xmlPullParser.getName())) {
                                xmlPullParser.next();
                                if (xmlPullParser.getEventType() == 2 && "AdVerifications".equals(xmlPullParser.getName())) {
                                    oJVar.oJ(ex.oJ(xmlPullParser));
                                }
                            }
                        }
                        break;
                    case 5:
                        oJVar.oJ(Pfn.ZYk(xmlPullParser, name));
                        break;
                    case 6:
                        oJVar.oJ().oJ(Pfn.oJ(xmlPullParser, name));
                        break;
                    default:
                        Pfn.oJ(xmlPullParser);
                        break;
                }
            }
        }
    }

    public static void oJ(Context context, XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar, int i10, double d10) throws IOException, XmlPullParserException {
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if ("Linear".equals(xmlPullParser.getName()) && TextUtils.isEmpty(oJVar.cFZ())) {
                    tB.oJ(xmlPullParser, oJVar, i10, d10);
                } else if ("CompanionAds".equals(xmlPullParser.getName()) && oJVar.tB() == null) {
                    oJVar.oJ(oJ.oJ(context, xmlPullParser));
                } else {
                    Pfn.oJ(xmlPullParser);
                }
            }
        }
    }
}
