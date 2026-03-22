package com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.core.dLZ.kkU;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;
import java.util.HashSet;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3.dex */
public class ex {
    public static Set<kkU> oJ(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        kkU oJ;
        if (xmlPullParser == null) {
            return new HashSet();
        }
        HashSet hashSet = new HashSet();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if ("Verification".equals(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(Pfn.cFZ, "vendor");
                    String str = null;
                    String str2 = null;
                    String str3 = null;
                    while (true) {
                        if (xmlPullParser.getEventType() == 3 && "Verification".equals(xmlPullParser.getName())) {
                            if (!TextUtils.isEmpty(str) && (oJ = kkU.oJ(str, attributeValue, str2, str3)) != null) {
                                hashSet.add(oJ);
                            }
                        } else {
                            xmlPullParser.next();
                            if (xmlPullParser.getEventType() == 2) {
                                String name = xmlPullParser.getName();
                                name.hashCode();
                                char c10 = 65535;
                                switch (name.hashCode()) {
                                    case 1335132887:
                                        if (name.equals("Tracking")) {
                                            c10 = 0;
                                            break;
                                        }
                                        break;
                                    case 1561251035:
                                        if (name.equals("JavaScriptResource")) {
                                            c10 = 1;
                                            break;
                                        }
                                        break;
                                    case 1749252741:
                                        if (name.equals("VerificationParameters")) {
                                            c10 = 2;
                                            break;
                                        }
                                        break;
                                }
                                switch (c10) {
                                    case 0:
                                        if (!"verificationNotExecuted".equals(xmlPullParser.getAttributeValue(Pfn.cFZ, NotificationCompat.CATEGORY_EVENT))) {
                                            break;
                                        } else {
                                            str3 = Pfn.ZYk(xmlPullParser, "Tracking");
                                            break;
                                        }
                                    case 1:
                                        if (!CampaignEx.KEY_OMID.equals(xmlPullParser.getAttributeValue(Pfn.cFZ, "apiFramework"))) {
                                            break;
                                        } else {
                                            str = Pfn.ZYk(xmlPullParser, "JavaScriptResource");
                                            break;
                                        }
                                    case 2:
                                        str2 = Pfn.ZYk(xmlPullParser, "VerificationParameters");
                                        break;
                                }
                            }
                        }
                    }
                } else {
                    Pfn.oJ(xmlPullParser);
                }
            }
        }
        return hashSet;
    }
}
