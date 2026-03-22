package io.bidmachine.iab.vast.tags;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.texturerender.TextureRenderKeys;
import com.tencent.mmkv.MMKV;
import io.bidmachine.iab.utils.IabElementStyle;
import java.io.IOException;
import java.io.Serializable;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import sm.q;
import tm.d;
/* loaded from: classes7.dex */
public class VastXmlTag implements Serializable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f54939a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private HashMap<String, String> f54940b;

    public VastXmlTag() {
    }

    private void A(@Nullable HashMap<String, String> hashMap) {
        this.f54940b = hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void C(@NonNull XmlPullParser xmlPullParser, @NonNull IabElementStyle iabElementStyle) {
        for (int i10 = 0; i10 < xmlPullParser.getAttributeCount(); i10++) {
            String attributeName = xmlPullParser.getAttributeName(i10);
            String attributeValue = xmlPullParser.getAttributeValue(i10);
            if (!TextUtils.isEmpty(attributeValue)) {
                try {
                    if ("stroke".equals(attributeName)) {
                        iabElementStyle.o0(G(attributeValue));
                    } else if ("fill".equals(attributeName)) {
                        iabElementStyle.P(G(attributeValue));
                    } else if ("outlined".equals(attributeName)) {
                        iabElementStyle.a0(Boolean.valueOf(W(attributeValue)));
                    } else if ("visible".equals(attributeName)) {
                        iabElementStyle.s0(Boolean.valueOf(W(attributeValue)));
                    } else if (TextureRenderKeys.KEY_IS_X.equals(attributeName)) {
                        iabElementStyle.W(Q(attributeValue));
                    } else if (TextureRenderKeys.KEY_IS_Y.equals(attributeName)) {
                        iabElementStyle.r0(S(attributeValue));
                    } else if (TtmlNode.TAG_STYLE.equals(attributeName)) {
                        iabElementStyle.q0(attributeValue);
                    } else if ("opacity".equals(attributeName)) {
                        iabElementStyle.Z(Float.valueOf(Float.parseFloat(attributeValue)));
                    } else if ("hideafter".equals(attributeName)) {
                        iabElementStyle.V(Float.valueOf(Float.parseFloat(attributeValue)));
                    } else if ("padding".equals(attributeName)) {
                        iabElementStyle.l0(attributeValue);
                    } else if ("margin".equals(attributeName)) {
                        iabElementStyle.Y(attributeValue);
                    } else if ("strokewidth".equals(attributeName)) {
                        iabElementStyle.p0(q.p(attributeValue));
                    } else if ("width".equals(attributeName)) {
                        iabElementStyle.u0(q.p(attributeValue));
                    } else if ("height".equals(attributeName)) {
                        iabElementStyle.U(q.p(attributeValue));
                    } else if ("fontstyle".equals(attributeName)) {
                        iabElementStyle.S(Integer.valueOf(Integer.parseInt(attributeValue)));
                    } else if ("fontsize".equals(attributeName)) {
                        iabElementStyle.Q(q.p(attributeValue));
                    }
                } catch (Throwable th2) {
                    d.c("VastXmlTag", th2);
                }
            }
        }
        try {
            iabElementStyle.O(H(xmlPullParser));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            xmlPullParser.require(3, null, xmlPullParser.getName());
        } catch (IOException e11) {
            e11.printStackTrace();
        } catch (XmlPullParserException e12) {
            e12.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean D(@Nullable String str, @Nullable String str2) {
        if (str != null && str.equalsIgnoreCase(str2)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean F(@NonNull XmlPullParser xmlPullParser) {
        return W(H(xmlPullParser));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Integer G(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (Exception e10) {
                d.b("VastXmlTag", e10.getMessage(), new Object[0]);
                return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static String H(@NonNull XmlPullParser xmlPullParser) {
        if (xmlPullParser.next() == 4) {
            String text = xmlPullParser.getText();
            if (!TextUtils.isEmpty(text)) {
                text = text.trim();
            }
            xmlPullParser.nextTag();
            return text;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void I(@NonNull XmlPullParser xmlPullParser) {
        if (xmlPullParser.getEventType() == 2) {
            int i10 = 1;
            while (i10 != 0) {
                int next = xmlPullParser.next();
                if (next != 2) {
                    if (next == 3) {
                        i10--;
                    }
                } else {
                    i10++;
                }
            }
            return;
        }
        throw new IllegalStateException();
    }

    private boolean J(@Nullable String str) {
        for (String str2 : O()) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int K(@Nullable String str) {
        if (str != null) {
            int indexOf = str.indexOf(".");
            if (indexOf > 0) {
                str = str.substring(0, indexOf);
            }
            String[] split = str.split(":");
            if (split.length > 2) {
                try {
                    int parseInt = Integer.parseInt(split[0]);
                    int parseInt2 = Integer.parseInt(split[1]);
                    return (parseInt * MMKV.ExpireInHour) + (parseInt2 * 60) + Integer.parseInt(split[2]);
                } catch (Exception e10) {
                    d.c("VastXmlTag", e10);
                    return -1;
                }
            }
            return -1;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int L(@Nullable String str) {
        if (str != null) {
            String[] split = str.split(":");
            if (split.length > 1) {
                try {
                    return (Integer.parseInt(split[0]) * 60) + Integer.parseInt(split[1]);
                } catch (Exception e10) {
                    d.c("VastXmlTag", e10);
                    return -1;
                }
            }
            return -1;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Integer M(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            String lowerCase = str.toLowerCase();
            lowerCase.hashCode();
            if (!lowerCase.equals("portrait")) {
                if (lowerCase.equals("landscape")) {
                    return 2;
                }
                return null;
            }
            return 1;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Integer Q(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            String lowerCase = str.toLowerCase();
            lowerCase.hashCode();
            char c10 = 65535;
            switch (lowerCase.hashCode()) {
                case -1364013995:
                    if (lowerCase.equals(TtmlNode.CENTER)) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3317767:
                    if (lowerCase.equals(TtmlNode.LEFT)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 108511772:
                    if (lowerCase.equals(TtmlNode.RIGHT)) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    return 1;
                case 1:
                    return 3;
                case 2:
                    return 5;
                default:
                    return null;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Integer S(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            String lowerCase = str.toLowerCase();
            lowerCase.hashCode();
            char c10 = 65535;
            switch (lowerCase.hashCode()) {
                case -1383228885:
                    if (lowerCase.equals("bottom")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1364013995:
                    if (lowerCase.equals(TtmlNode.CENTER)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 115029:
                    if (lowerCase.equals("top")) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    return 80;
                case 1:
                    return 16;
                case 2:
                    return 48;
                default:
                    return null;
            }
        }
        return null;
    }

    static boolean V(@Nullable String str) {
        if (str != null && (str.equalsIgnoreCase("false") || str.equalsIgnoreCase(MBridgeConstans.ENDCARD_URL_TYPE_PL))) {
            return true;
        }
        return false;
    }

    static boolean W(@Nullable String str) {
        if (str != null && (str.equalsIgnoreCase("true") || str.equalsIgnoreCase("1"))) {
            return true;
        }
        return false;
    }

    @Nullable
    private static HashMap<String, String> z(@NonNull VastXmlTag vastXmlTag, @NonNull XmlPullParser xmlPullParser) {
        if (xmlPullParser.getAttributeCount() > 0) {
            HashMap<String, String> hashMap = new HashMap<>();
            for (int i10 = 0; i10 < xmlPullParser.getAttributeCount(); i10++) {
                if (vastXmlTag.J(xmlPullParser.getAttributeName(i10))) {
                    hashMap.put(xmlPullParser.getAttributeName(i10), xmlPullParser.getAttributeValue(i10));
                }
            }
            return hashMap;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int E(@NonNull String str) {
        String y10 = y(str);
        if (TextUtils.isEmpty(y10)) {
            d.a("VastXmlTag", "Error parse attribute value - %s, by name - %s", y10, str);
            return -1;
        }
        try {
            return Integer.parseInt(y10);
        } catch (Exception unused) {
            d.b("VastXmlTag", "Error parse attribute value - %s, by name - %s", y10, str);
            return -1;
        }
    }

    public final boolean N(@NonNull String str, boolean z10) {
        String y10 = y(str);
        if (W(y10)) {
            return true;
        }
        if (V(y10)) {
            return false;
        }
        return z10;
    }

    @NonNull
    public String[] O() {
        return new String[0];
    }

    @Nullable
    public final String P() {
        return this.f54939a;
    }

    public boolean U() {
        return false;
    }

    public void X(@NonNull XmlPullParser xmlPullParser) {
        A(z(this, xmlPullParser));
        if (U()) {
            Y(H(xmlPullParser));
        }
        B(xmlPullParser);
    }

    public final void Y(@Nullable String str) {
        this.f54939a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final String y(@NonNull String str) {
        HashMap<String, String> hashMap = this.f54940b;
        if (hashMap != null) {
            return hashMap.get(str);
        }
        return null;
    }

    public VastXmlTag(@NonNull XmlPullParser xmlPullParser) {
        X(xmlPullParser);
    }

    protected void B(@NonNull XmlPullParser xmlPullParser) {
    }
}
