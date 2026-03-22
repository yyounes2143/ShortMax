package com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.Pfn;
import com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tencent.mmkv.MMKV;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class tB {
    public static double ZYk(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        String[] split = Pfn.ZYk(xmlPullParser, "Duration").split(":");
        if (split.length == 3) {
            try {
                return (Integer.parseInt(split[0].trim()) * MMKV.ExpireInHour) + (Integer.parseInt(split[1].trim()) * 60) + Float.parseFloat(split[2].trim());
            } catch (Exception unused) {
                return 0.0d;
            }
        }
        return 0.0d;
    }

    public static void oJ(XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar, int i10, double d10) throws IOException, XmlPullParserException {
        boolean z10 = false;
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("Linear")) {
                return;
            }
            if (xmlPullParser.getEventType() == 2) {
                if (z10 && TextUtils.isEmpty(oJVar.cFZ())) {
                    Pfn.oJ(xmlPullParser);
                }
                String name = xmlPullParser.getName();
                name.hashCode();
                char c10 = 65535;
                switch (name.hashCode()) {
                    case -2049897434:
                        if (name.equals("VideoClicks")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1927368268:
                        if (name.equals("Duration")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -385055469:
                        if (name.equals("MediaFiles")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 70476538:
                        if (name.equals("Icons")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 611554000:
                        if (name.equals("TrackingEvents")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        oJ(xmlPullParser, oJVar);
                        continue;
                    case 1:
                        oJVar.oJ(ZYk(xmlPullParser));
                        continue;
                    case 2:
                        oJ(xmlPullParser, i10, d10, oJVar);
                        z10 = true;
                        continue;
                    case 3:
                        com.bytedance.sdk.openadsdk.core.dLZ.ZYk oJ = oJ(xmlPullParser);
                        if (oJ == null) {
                            continue;
                        } else if (oJVar.ZYk() != null) {
                            break;
                        } else {
                            oJVar.oJ(oJ);
                            break;
                        }
                    case 4:
                        oJ(xmlPullParser, oJVar.oJ());
                        continue;
                    default:
                        Pfn.oJ(xmlPullParser);
                        continue;
                }
            }
        }
    }

    private static List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> tB(XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        return oJ(xmlPullParser, false);
    }

    private static String oJ(XmlPullParser xmlPullParser, int i10, double d10, com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar) throws IOException, XmlPullParserException {
        double d11 = Double.NEGATIVE_INFINITY;
        String str = null;
        int i11 = Integer.MIN_VALUE;
        int i12 = Integer.MIN_VALUE;
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("MediaFiles")) {
                break;
            } else if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("MediaFile")) {
                String str2 = Pfn.cFZ;
                String attributeValue = xmlPullParser.getAttributeValue(str2, "type");
                int ZYk = Pfn.ZYk(xmlPullParser.getAttributeValue(str2, "width"));
                int ZYk2 = Pfn.ZYk(xmlPullParser.getAttributeValue(str2, "height"));
                int ZYk3 = Pfn.ZYk(xmlPullParser.getAttributeValue(str2, "bitrate"));
                String ZYk4 = Pfn.ZYk(xmlPullParser, "MediaFile");
                if (ZYk > 0 && ZYk2 > 0 && com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.oJ.contains(attributeValue) && !TextUtils.isEmpty(ZYk4)) {
                    double oJ = com.bytedance.sdk.openadsdk.core.dLZ.tB.ex.oJ(i10, d10, ZYk, ZYk2, ZYk3, attributeValue);
                    if (oJ > d11) {
                        str = ZYk4;
                        d11 = oJ;
                        i11 = ZYk;
                        i12 = ZYk2;
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(str)) {
            oJVar.ex(str);
            oJVar.oJ(i11);
            oJVar.ZYk(i12);
        }
        return str;
    }

    public static com.bytedance.sdk.openadsdk.core.dLZ.ZYk oJ(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        String str;
        String str2;
        String str3;
        com.bytedance.sdk.openadsdk.core.dLZ.ZYk zYk;
        String str4;
        String str5;
        int i10;
        com.bytedance.sdk.openadsdk.core.dLZ.ZYk zYk2;
        String str6;
        String str7;
        String str8;
        int i11;
        oJ.EnumC0210oJ enumC0210oJ;
        String str9;
        String str10;
        String str11 = "HTMLResource";
        String str12 = "IconClicks";
        String str13 = "StaticResource";
        String str14 = "IFrameResource";
        String str15 = "IconViewTracking";
        int i12 = 2;
        int i13 = 3;
        com.bytedance.sdk.openadsdk.core.dLZ.ZYk zYk3 = null;
        while (true) {
            if (xmlPullParser.getEventType() == i13 && xmlPullParser.getName().equals("Icons")) {
                return zYk3;
            }
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == i12 && xmlPullParser.getName().equals("Icon")) {
                String str16 = Pfn.cFZ;
                int ZYk = Pfn.ZYk(xmlPullParser.getAttributeValue(str16, "width"));
                int ZYk2 = Pfn.ZYk(xmlPullParser.getAttributeValue(str16, "height"));
                if (ZYk > 0 && ZYk <= 300 && ZYk2 > 0 && ZYk2 <= 300) {
                    int oJ = com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ.oJ(xmlPullParser.getAttributeValue(str16, TypedValues.CycleType.S_WAVE_OFFSET));
                    int oJ2 = com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ.oJ(xmlPullParser.getAttributeValue(str16, "duration"));
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    String str17 = str14;
                    String str18 = str15;
                    Pfn.oJ oJVar = null;
                    String str19 = null;
                    while (true) {
                        if (xmlPullParser.next() == i13 && xmlPullParser.getName().equals("Icon")) {
                            if (oJVar == null || !(zYk3 == null || TextUtils.isEmpty(zYk3.ba()))) {
                                str9 = str12;
                                str10 = str13;
                            } else {
                                str9 = str12;
                                str10 = str13;
                                com.bytedance.sdk.openadsdk.core.dLZ.ZYk zYk4 = new com.bytedance.sdk.openadsdk.core.dLZ.ZYk(ZYk, ZYk2, oJ, oJ2, oJVar.ZYk, oJVar.tB, oJVar.oJ, arrayList, arrayList2, str19);
                                Pfn.oJ(xmlPullParser, "Icons", i13);
                                zYk3 = zYk4;
                            }
                            str15 = str18;
                            str14 = str17;
                            str12 = str9;
                            str13 = str10;
                            i12 = 2;
                        } else {
                            String str20 = str12;
                            String str21 = str13;
                            if (xmlPullParser.getEventType() == 2) {
                                String name = xmlPullParser.getName();
                                name.hashCode();
                                switch (name.hashCode()) {
                                    case -1044238411:
                                        i10 = oJ2;
                                        str6 = str18;
                                        str7 = str17;
                                        str8 = str20;
                                        str13 = str21;
                                        if (name.equals(str6)) {
                                            i11 = 0;
                                            break;
                                        }
                                        i11 = -1;
                                        break;
                                    case -375340334:
                                        str7 = str17;
                                        str8 = str20;
                                        str13 = str21;
                                        if (!name.equals(str7)) {
                                            i10 = oJ2;
                                            str6 = str18;
                                            i11 = -1;
                                            break;
                                        } else {
                                            i11 = 1;
                                            i10 = oJ2;
                                            str6 = str18;
                                            break;
                                        }
                                    case 676623548:
                                        str8 = str20;
                                        str13 = str21;
                                        i10 = oJ2;
                                        str6 = str18;
                                        str7 = str17;
                                        if (name.equals(str13)) {
                                            i11 = 2;
                                            break;
                                        }
                                        i11 = -1;
                                        break;
                                    case 1030746596:
                                        str8 = str20;
                                        if (!name.equals(str8)) {
                                            i10 = oJ2;
                                            str6 = str18;
                                            str7 = str17;
                                            str13 = str21;
                                            i11 = -1;
                                            break;
                                        } else {
                                            i11 = i13;
                                            i10 = oJ2;
                                            str6 = str18;
                                            str7 = str17;
                                            str13 = str21;
                                            break;
                                        }
                                    case 1928285401:
                                        if (name.equals(str11)) {
                                            i11 = 4;
                                            i10 = oJ2;
                                            str6 = str18;
                                            str7 = str17;
                                            str8 = str20;
                                            str13 = str21;
                                            break;
                                        }
                                    default:
                                        i10 = oJ2;
                                        str6 = str18;
                                        str7 = str17;
                                        str8 = str20;
                                        str13 = str21;
                                        i11 = -1;
                                        break;
                                }
                                switch (i11) {
                                    case 0:
                                        str5 = str11;
                                        zYk2 = zYk3;
                                        arrayList2.add(new tB.oJ(Pfn.ZYk(xmlPullParser, str6)).oJ());
                                        break;
                                    case 1:
                                        str5 = str11;
                                        zYk2 = zYk3;
                                        if (oJVar == null) {
                                            oJVar = new Pfn.oJ(Pfn.ZYk(xmlPullParser, str7), oJ.EnumC0210oJ.NONE, oJ.ZYk.IFRAME_RESOURCE);
                                            break;
                                        }
                                        Pfn.oJ(xmlPullParser);
                                        break;
                                    case 2:
                                        str5 = str11;
                                        zYk2 = zYk3;
                                        oJ.EnumC0210oJ enumC0210oJ2 = oJ.EnumC0210oJ.NONE;
                                        String lowerCase = xmlPullParser.getAttributeValue(Pfn.cFZ, "creativeType").toLowerCase();
                                        Set<String> set = com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ.oJ;
                                        String ZYk3 = (set.contains(lowerCase) || com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ.ZYk.contains(lowerCase)) ? Pfn.ZYk(xmlPullParser, str13) : null;
                                        if (set.contains(lowerCase)) {
                                            enumC0210oJ = oJ.EnumC0210oJ.IMAGE;
                                        } else {
                                            enumC0210oJ = oJ.EnumC0210oJ.JAVASCRIPT;
                                        }
                                        oJVar = new Pfn.oJ(ZYk3, enumC0210oJ, oJ.ZYk.STATIC_RESOURCE);
                                        break;
                                    case 3:
                                        str5 = str11;
                                        zYk2 = zYk3;
                                        while (true) {
                                            if (xmlPullParser.next() != 3 || !xmlPullParser.getName().equals(str8)) {
                                                if (xmlPullParser.getEventType() == 2) {
                                                    if (xmlPullParser.getName().equals("IconClickThrough")) {
                                                        str19 = Pfn.ZYk(xmlPullParser, "IconClickThrough");
                                                    } else if (xmlPullParser.getName().equals("IconClickTracking")) {
                                                        arrayList.add(new tB.oJ(Pfn.ZYk(xmlPullParser, "IconClickTracking")).oJ());
                                                    }
                                                }
                                            }
                                        }
                                        break;
                                    case 4:
                                        if (oJVar != null) {
                                            zYk2 = zYk3;
                                            if (oJVar.tB != oJ.ZYk.IFRAME_RESOURCE) {
                                                str5 = str11;
                                                Pfn.oJ(xmlPullParser);
                                                break;
                                            }
                                        } else {
                                            zYk2 = zYk3;
                                        }
                                        str5 = str11;
                                        oJVar = new Pfn.oJ(Pfn.ZYk(xmlPullParser, str11), oJ.EnumC0210oJ.NONE, oJ.ZYk.HTML_RESOURCE);
                                        break;
                                    default:
                                        str5 = str11;
                                        zYk2 = zYk3;
                                        Pfn.oJ(xmlPullParser);
                                        break;
                                }
                            } else {
                                str5 = str11;
                                i10 = oJ2;
                                zYk2 = zYk3;
                                str6 = str18;
                                str7 = str17;
                                str8 = str20;
                                str13 = str21;
                            }
                            str12 = str8;
                            str17 = str7;
                            str18 = str6;
                            zYk3 = zYk2;
                            oJ2 = i10;
                            str11 = str5;
                            i13 = 3;
                        }
                    }
                } else {
                    str = str11;
                    str2 = str14;
                    str3 = str15;
                    zYk = zYk3;
                    str4 = str12;
                    Pfn.oJ(xmlPullParser);
                }
            } else {
                str = str11;
                str2 = str14;
                str3 = str15;
                zYk = zYk3;
                str4 = str12;
            }
            str12 = str4;
            str14 = str2;
            str15 = str3;
            zYk3 = zYk;
            str11 = str;
            i12 = 2;
            i13 = 3;
        }
    }

    public static void oJ(XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.dLZ.ex exVar) throws IOException, XmlPullParserException {
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("TrackingEvents")) {
                return;
            }
            if (xmlPullParser.getEventType() == 2) {
                if ("Tracking".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(Pfn.cFZ, NotificationCompat.CATEGORY_EVENT);
                    if (TextUtils.isEmpty(attributeValue)) {
                        Pfn.oJ(xmlPullParser, "Tracking", 3);
                    } else {
                        attributeValue.hashCode();
                        char c10 = 65535;
                        switch (attributeValue.hashCode()) {
                            case -1638835128:
                                if (attributeValue.equals(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT)) {
                                    c10 = 0;
                                    break;
                                }
                                break;
                            case -1337830390:
                                if (attributeValue.equals("thirdQuartile")) {
                                    c10 = 1;
                                    break;
                                }
                                break;
                            case -934426579:
                                if (attributeValue.equals(CampaignEx.JSON_NATIVE_VIDEO_RESUME)) {
                                    c10 = 2;
                                    break;
                                }
                                break;
                            case -840405966:
                                if (attributeValue.equals(CampaignEx.JSON_NATIVE_VIDEO_UNMUTE)) {
                                    c10 = 3;
                                    break;
                                }
                                break;
                            case -599445191:
                                if (attributeValue.equals(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE)) {
                                    c10 = 4;
                                    break;
                                }
                                break;
                            case 3363353:
                                if (attributeValue.equals("mute")) {
                                    c10 = 5;
                                    break;
                                }
                                break;
                            case 3532159:
                                if (attributeValue.equals("skip")) {
                                    c10 = 6;
                                    break;
                                }
                                break;
                            case 94756344:
                                if (attributeValue.equals("close")) {
                                    c10 = 7;
                                    break;
                                }
                                break;
                            case 106440182:
                                if (attributeValue.equals(CampaignEx.JSON_NATIVE_VIDEO_PAUSE)) {
                                    c10 = '\b';
                                    break;
                                }
                                break;
                            case 109757538:
                                if (attributeValue.equals("start")) {
                                    c10 = '\t';
                                    break;
                                }
                                break;
                            case 560220243:
                                if (attributeValue.equals("firstQuartile")) {
                                    c10 = '\n';
                                    break;
                                }
                                break;
                            case 1778167540:
                                if (attributeValue.equals("creativeView")) {
                                    c10 = 11;
                                    break;
                                }
                                break;
                        }
                        switch (c10) {
                            case 0:
                                exVar.oJ(Pfn.ZYk(xmlPullParser, "Tracking"), 0.5f);
                                continue;
                            case 1:
                                exVar.oJ(Pfn.ZYk(xmlPullParser, "Tracking"), 0.75f);
                                continue;
                            case 2:
                                exVar.tB(oJ(xmlPullParser, true));
                                continue;
                            case 3:
                                exVar.BTZ(oJ(xmlPullParser, true));
                                continue;
                            case 4:
                                exVar.ex(tB(xmlPullParser));
                                continue;
                            case 5:
                                exVar.dLZ(oJ(xmlPullParser, true));
                                continue;
                            case 6:
                                exVar.ba(tB(xmlPullParser));
                                continue;
                            case 7:
                                exVar.Pfn(tB(xmlPullParser));
                                continue;
                            case '\b':
                                exVar.ZYk(oJ(xmlPullParser, true));
                                continue;
                            case '\t':
                            case 11:
                                exVar.oJ(Pfn.ZYk(xmlPullParser, "Tracking"), 0L);
                                continue;
                            case '\n':
                                exVar.oJ(Pfn.ZYk(xmlPullParser, "Tracking"), 0.25f);
                                continue;
                        }
                    }
                } else if (xmlPullParser.getEventType() == 4) {
                    xmlPullParser.nextTag();
                } else {
                    Pfn.oJ(xmlPullParser);
                }
            }
        }
    }

    private static void oJ(XmlPullParser xmlPullParser, com.bytedance.sdk.openadsdk.core.dLZ.oJ oJVar) throws IOException, XmlPullParserException {
        while (true) {
            if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("VideoClicks")) {
                return;
            }
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                name.hashCode();
                if (!name.equals("ClickThrough")) {
                    if (name.equals("ClickTracking")) {
                        oJVar.oJ().cFZ(Pfn.oJ(xmlPullParser, "ClickTracking"));
                    } else {
                        Pfn.oJ(xmlPullParser);
                    }
                } else {
                    oJVar.tB(Pfn.ZYk(xmlPullParser, "ClickThrough"));
                }
            }
        }
    }

    private static List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> oJ(XmlPullParser xmlPullParser, boolean z10) throws IOException, XmlPullParserException {
        return Pfn.oJ(xmlPullParser, "Tracking", z10);
    }
}
