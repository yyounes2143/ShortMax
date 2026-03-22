package com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ.Pfn;
import com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ;
import java.io.IOException;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class oJ {
    public static com.bytedance.sdk.openadsdk.core.dLZ.tB oJ(Context context, XmlPullParser xmlPullParser) throws IOException, XmlPullParserException {
        String str;
        int i10;
        int i11;
        int i12;
        XmlPullParser xmlPullParser2;
        Context context2;
        int i13;
        String str2;
        Context context3;
        String str3;
        Pfn.oJ oJVar;
        String str4;
        oJ.EnumC0210oJ enumC0210oJ;
        String str5;
        String ZYk;
        char c10;
        int i14;
        int i15;
        Context context4 = context;
        XmlPullParser xmlPullParser3 = xmlPullParser;
        String str6 = "HTMLResource";
        String str7 = "IFrameResource";
        int i16 = 2;
        int i17 = 3;
        if (context4 == null) {
            Pfn.oJ(xmlPullParser);
            return null;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i18 = displayMetrics.widthPixels;
        int i19 = displayMetrics.heightPixels;
        float f10 = displayMetrics.density;
        int i20 = (int) (i18 / f10);
        int i21 = (int) (i19 / f10);
        float f11 = Float.MIN_VALUE;
        com.bytedance.sdk.openadsdk.core.dLZ.tB tBVar = null;
        while (true) {
            if (xmlPullParser.getEventType() == i17 && xmlPullParser.getName().equals("CompanionAds")) {
                return tBVar;
            }
            xmlPullParser.next();
            if (xmlPullParser.getEventType() == i16) {
                String str8 = "Companion";
                if (xmlPullParser.getName().equals("Companion")) {
                    String str9 = Pfn.cFZ;
                    int ZYk2 = Pfn.ZYk(xmlPullParser3.getAttributeValue(str9, "width"));
                    int ZYk3 = Pfn.ZYk(xmlPullParser3.getAttributeValue(str9, "height"));
                    if (ZYk2 < 300 || ZYk3 < 250) {
                        str = str6;
                        i11 = i21;
                        i12 = i20;
                        i10 = 2;
                        xmlPullParser2 = xmlPullParser3;
                        context2 = context4;
                        i13 = i17;
                        str2 = str7;
                        Pfn.oJ(xmlPullParser);
                        i16 = i10;
                        str7 = str2;
                        str6 = str;
                        i20 = i12;
                        i17 = i13;
                        context4 = context2;
                        xmlPullParser3 = xmlPullParser2;
                        i21 = i11;
                    } else {
                        Pfn.oJ oJVar2 = new Pfn.oJ();
                        while (true) {
                            if (xmlPullParser.getEventType() != i17 || !xmlPullParser.getName().equals(str8)) {
                                int i22 = i21;
                                int i23 = i20;
                                xmlPullParser.next();
                                if (xmlPullParser.getEventType() == 2) {
                                    String name = xmlPullParser.getName();
                                    name.hashCode();
                                    char c11 = 65535;
                                    switch (name.hashCode()) {
                                        case -375340334:
                                            if (name.equals(str7)) {
                                                c10 = 0;
                                                c11 = c10;
                                                break;
                                            }
                                            break;
                                        case -348198615:
                                            if (name.equals("CompanionClickThrough")) {
                                                c10 = 1;
                                                c11 = c10;
                                                break;
                                            }
                                            break;
                                        case 611554000:
                                            if (name.equals("TrackingEvents")) {
                                                c11 = 2;
                                                break;
                                            }
                                            break;
                                        case 676623548:
                                            if (name.equals("StaticResource")) {
                                                c11 = 3;
                                                break;
                                            }
                                            break;
                                        case 1877773523:
                                            if (name.equals("CompanionClickTracking")) {
                                                c10 = 4;
                                                c11 = c10;
                                                break;
                                            }
                                            break;
                                        case 1928285401:
                                            if (name.equals(str6)) {
                                                c10 = 5;
                                                c11 = c10;
                                                break;
                                            }
                                            break;
                                    }
                                    switch (c11) {
                                        case 0:
                                            str5 = str6;
                                            String str10 = str7;
                                            Pfn.oJ oJVar3 = oJVar2;
                                            str4 = str8;
                                            Point oJ = com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ.oJ(context, ZYk2, ZYk3, oJ.ZYk.HTML_RESOURCE);
                                            int i24 = oJ.x;
                                            int i25 = oJ.y;
                                            oJ.ZYk zYk = oJ.ZYk.IFRAME_RESOURCE;
                                            oJ.EnumC0210oJ enumC0210oJ2 = oJ.EnumC0210oJ.NONE;
                                            float oJ2 = com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ(i23, i22, i24, i25, zYk, enumC0210oJ2);
                                            String ZYk4 = Pfn.ZYk(xmlPullParser, str10);
                                            if (!TextUtils.isEmpty(ZYk4) && oJ2 > oJVar3.cFZ && oJ2 > f11) {
                                                oJVar3.cFZ = oJ2;
                                                oJVar3.oJ(ZYk4, enumC0210oJ2, zYk);
                                                oJVar2 = oJVar3;
                                                str7 = str10;
                                                str8 = str4;
                                                str6 = str5;
                                                break;
                                            } else {
                                                Pfn.oJ(xmlPullParser, str10, 3);
                                                oJVar2 = oJVar3;
                                                str7 = str10;
                                                str8 = str4;
                                                str6 = str5;
                                                i21 = i22;
                                                i20 = i23;
                                                i17 = 3;
                                                break;
                                            }
                                            break;
                                        case 1:
                                            str5 = str6;
                                            oJVar2.ex = Pfn.ZYk(xmlPullParser, "CompanionClickThrough");
                                            str7 = str7;
                                            str6 = str5;
                                            break;
                                        case 2:
                                            context3 = context;
                                            str5 = str6;
                                            str3 = str7;
                                            oJVar = oJVar2;
                                            str4 = str8;
                                            while (true) {
                                                if (xmlPullParser.next() == 3 && xmlPullParser.getName().equals("TrackingEvents")) {
                                                    oJVar2 = oJVar;
                                                    str7 = str3;
                                                    str8 = str4;
                                                    str6 = str5;
                                                    break;
                                                } else if (xmlPullParser.getEventType() == 2 && xmlPullParser.getName().equals("Tracking")) {
                                                    oJVar.ZYk(Pfn.ZYk(xmlPullParser, "Tracking"));
                                                }
                                            }
                                            break;
                                        case 3:
                                            context3 = context;
                                            str3 = str7;
                                            oJVar = oJVar2;
                                            str4 = str8;
                                            oJ.EnumC0210oJ enumC0210oJ3 = oJ.EnumC0210oJ.NONE;
                                            String lowerCase = xmlPullParser.getAttributeValue(Pfn.cFZ, "creativeType").toLowerCase();
                                            Set<String> set = com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ.oJ;
                                            if (set.contains(lowerCase)) {
                                                enumC0210oJ = oJ.EnumC0210oJ.IMAGE;
                                            } else {
                                                enumC0210oJ = oJ.EnumC0210oJ.JAVASCRIPT;
                                            }
                                            oJ.ZYk zYk2 = oJ.ZYk.STATIC_RESOURCE;
                                            Point oJ3 = com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ.oJ(context3, ZYk2, ZYk3, zYk2);
                                            str5 = str6;
                                            float oJ4 = com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ(i23, i22, oJ3.x, oJ3.y, zYk2, enumC0210oJ);
                                            if (!set.contains(lowerCase) && !com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ.ZYk.contains(lowerCase)) {
                                                ZYk = null;
                                            } else {
                                                ZYk = Pfn.ZYk(xmlPullParser, "StaticResource");
                                            }
                                            if (oJ4 >= oJVar.cFZ && oJ4 > f11 && !TextUtils.isEmpty(ZYk)) {
                                                oJVar.cFZ = oJ4;
                                                oJVar.oJ(ZYk, enumC0210oJ, zYk2);
                                                oJVar2 = oJVar;
                                                str7 = str3;
                                                str8 = str4;
                                                str6 = str5;
                                                break;
                                            } else {
                                                Pfn.oJ(xmlPullParser, "StaticResource", 3);
                                                i17 = 3;
                                                oJVar2 = oJVar;
                                                str7 = str3;
                                                str8 = str4;
                                                str6 = str5;
                                                i21 = i22;
                                                i20 = i23;
                                                break;
                                            }
                                            break;
                                        case 4:
                                            oJVar2.oJ(Pfn.ZYk(xmlPullParser, "CompanionClickTracking"));
                                            str7 = str7;
                                            break;
                                        case 5:
                                            oJ.ZYk zYk3 = oJ.ZYk.HTML_RESOURCE;
                                            Point oJ5 = com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ.oJ(context, ZYk2, ZYk3, zYk3);
                                            int i26 = oJ5.x;
                                            int i27 = oJ5.y;
                                            oJ.EnumC0210oJ enumC0210oJ4 = oJ.EnumC0210oJ.NONE;
                                            String str11 = str7;
                                            Pfn.oJ oJVar4 = oJVar2;
                                            String str12 = str8;
                                            float oJ6 = com.bytedance.sdk.openadsdk.core.dLZ.tB.oJ(i23, i22, i26, i27, zYk3, enumC0210oJ4);
                                            String ZYk5 = Pfn.ZYk(xmlPullParser, str6);
                                            if (!TextUtils.isEmpty(ZYk5) && oJ6 > oJVar4.cFZ && oJ6 > f11) {
                                                oJVar4.cFZ = oJ6;
                                                oJVar4.oJ(ZYk5, enumC0210oJ4, zYk3);
                                                oJVar2 = oJVar4;
                                                str7 = str11;
                                                str8 = str12;
                                                break;
                                            } else {
                                                Pfn.oJ(xmlPullParser, str6, 3);
                                                i17 = 3;
                                                oJVar2 = oJVar4;
                                                str7 = str11;
                                                str8 = str12;
                                                i21 = i22;
                                                i20 = i23;
                                                break;
                                            }
                                        default:
                                            Pfn.oJ(xmlPullParser);
                                            context3 = context;
                                            str5 = str6;
                                            str3 = str7;
                                            oJVar = oJVar2;
                                            str4 = str8;
                                            oJVar2 = oJVar;
                                            str7 = str3;
                                            str8 = str4;
                                            str6 = str5;
                                            break;
                                    }
                                }
                                i21 = i22;
                                i20 = i23;
                                i17 = 3;
                            } else {
                                if (!TextUtils.isEmpty(oJVar2.oJ) && oJVar2.cFZ >= f11) {
                                    i14 = i21;
                                    i15 = i20;
                                    com.bytedance.sdk.openadsdk.core.dLZ.tB tBVar2 = new com.bytedance.sdk.openadsdk.core.dLZ.tB(ZYk2, ZYk3, oJVar2.ZYk, oJVar2.tB, oJVar2.oJ, oJVar2.Pfn, oJVar2.f13140ba, oJVar2.ex);
                                    f11 = oJVar2.cFZ;
                                    tBVar = tBVar2;
                                } else {
                                    i14 = i21;
                                    i15 = i20;
                                }
                                context4 = context;
                                xmlPullParser3 = xmlPullParser;
                                i21 = i14;
                                i20 = i15;
                                i16 = 2;
                                i17 = 3;
                            }
                        }
                    }
                }
            }
            str = str6;
            i10 = i16;
            i11 = i21;
            i12 = i20;
            xmlPullParser2 = xmlPullParser3;
            context2 = context4;
            i13 = i17;
            str2 = str7;
            i16 = i10;
            str7 = str2;
            str6 = str;
            i20 = i12;
            i17 = i13;
            context4 = context2;
            xmlPullParser3 = xmlPullParser2;
            i21 = i11;
        }
    }
}
