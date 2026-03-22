package com.inmobi.media;

import android.text.TextUtils;
import android.webkit.URLUtil;
import androidx.core.app.NotificationCompat;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.Constants;
import java.io.IOException;
import java.io.StringReader;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* loaded from: classes5.dex */
public final class Pe {

    /* renamed from: f  reason: collision with root package name */
    public static final HashMap f23997f = kotlin.collections.p0.k(ms.k.a("Error", "error"), ms.k.a("Impression", "Impression"), ms.k.a("ClickTracking", "click"), ms.k.a("creativeView", "creativeView"), ms.k.a("start", "start"), ms.k.a("firstQuartile", "firstQuartile"), ms.k.a(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT, CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT), ms.k.a("thirdQuartile", "thirdQuartile"), ms.k.a(CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, CampaignEx.JSON_NATIVE_VIDEO_COMPLETE), ms.k.a("mute", "mute"), ms.k.a(CampaignEx.JSON_NATIVE_VIDEO_UNMUTE, CampaignEx.JSON_NATIVE_VIDEO_UNMUTE), ms.k.a(CampaignEx.JSON_NATIVE_VIDEO_PAUSE, CampaignEx.JSON_NATIVE_VIDEO_PAUSE), ms.k.a(CampaignEx.JSON_NATIVE_VIDEO_RESUME, CampaignEx.JSON_NATIVE_VIDEO_RESUME), ms.k.a(Constants.TEMPLATE_TYPE_FULLSCREEN, Constants.TEMPLATE_TYPE_FULLSCREEN), ms.k.a("exitFullscreen", "exitFullscreen"), ms.k.a("closeEndCard", "closeEndCard"));

    /* renamed from: a  reason: collision with root package name */
    public final AdConfig.VastVideoConfig f23998a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC3269z5 f23999b;

    /* renamed from: c  reason: collision with root package name */
    public final Ue f24000c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f24001d;

    /* renamed from: e  reason: collision with root package name */
    public int f24002e;

    public Pe(AdConfig.VastVideoConfig mVastVideoConfig, InterfaceC3269z5 interfaceC3269z5) {
        Intrinsics.checkNotNullParameter(mVastVideoConfig, "mVastVideoConfig");
        this.f23998a = mVastVideoConfig;
        this.f23999b = interfaceC3269z5;
        this.f24000c = new Ue(CollectionsKt.n(), mVastVideoConfig);
    }

    public static boolean b(int i10) {
        return i10 == 3;
    }

    public final Ue a(String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23999b;
        if (interfaceC3269z5 != null) {
            ((A5) interfaceC3269z5).c("Pe", I6.a("Pe", "TAG", "vastXML = ", str));
        }
        try {
        } catch (XmlPullParserException e10) {
            c(100);
            S5 s52 = S5.f24132a;
            C2947f2 event = new C2947f2(e10);
            Intrinsics.checkNotNullParameter(event, "event");
            S5.f24135d.a(event);
        } catch (Exception e11) {
            c(900);
            S5 s53 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e11, NotificationCompat.CATEGORY_EVENT));
        }
        if (TextUtils.isEmpty(str)) {
            c(303);
            return this.f24000c;
        }
        XmlPullParser newPullParser = XmlPullParserFactory.newInstance().newPullParser();
        newPullParser.setInput(new StringReader(str));
        String[] strArr = {"Wrapper", "InLine"};
        Intrinsics.checkNotNull(newPullParser);
        a(newPullParser, "VAST");
        if (Intrinsics.areEqual("VAST", newPullParser.getName())) {
            a(newPullParser, "Ad");
            if (Intrinsics.areEqual("Ad", newPullParser.getName())) {
                a(newPullParser, strArr);
                if (Intrinsics.areEqual("InLine", newPullParser.getName())) {
                    c(newPullParser);
                } else if (Intrinsics.areEqual("Wrapper", newPullParser.getName())) {
                    f(newPullParser);
                } else {
                    InterfaceC3269z5 interfaceC3269z52 = this.f23999b;
                    if (interfaceC3269z52 != null) {
                        Intrinsics.checkNotNullExpressionValue("Pe", "TAG");
                        ((A5) interfaceC3269z52).b("Pe", "VAST Schema validation error: InLine node or Wrapper node at appropriate hierarchy not found");
                    }
                    c(101);
                }
            } else {
                InterfaceC3269z5 interfaceC3269z53 = this.f23999b;
                if (interfaceC3269z53 != null) {
                    Intrinsics.checkNotNullExpressionValue("Pe", "TAG");
                    ((A5) interfaceC3269z53).b("Pe", "VAST Schema validation error: Ad node at appropriate hierarchy not found");
                }
                c(303);
            }
        } else {
            InterfaceC3269z5 interfaceC3269z54 = this.f23999b;
            if (interfaceC3269z54 != null) {
                Intrinsics.checkNotNullExpressionValue("Pe", "TAG");
                ((A5) interfaceC3269z54).b("Pe", "VAST Schema validation error: VAST node at appropriate hierarchy not found");
            }
            c(101);
        }
        return this.f24000c;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:120:0x01e8
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public final void c(org.xmlpull.v1.XmlPullParser r30) {
        /*
            Method dump skipped, instructions count: 2522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Pe.c(org.xmlpull.v1.XmlPullParser):void");
    }

    public final int d(XmlPullParser xmlPullParser) {
        try {
            return xmlPullParser.next();
        } catch (IOException unused) {
            InterfaceC3269z5 interfaceC3269z5 = this.f23999b;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("Pe", "TAG");
                ((A5) interfaceC3269z5).b("Pe", "Parsing failed.");
                return -1;
            }
            return -1;
        } catch (XmlPullParserException unused2) {
            InterfaceC3269z5 interfaceC3269z52 = this.f23999b;
            if (interfaceC3269z52 != null) {
                Intrinsics.checkNotNullExpressionValue("Pe", "TAG");
                ((A5) interfaceC3269z52).b("Pe", "VAST Schema validation error: VAST node at appropriate hierarchy not found.");
                return -1;
            }
            return -1;
        }
    }

    public final void e(XmlPullParser xmlPullParser) {
        int d10 = d(xmlPullParser);
        while (true) {
            if (xmlPullParser.getName() != null && Intrinsics.areEqual(xmlPullParser.getName(), "TrackingEvents") && b(d10)) {
                return;
            }
            if (xmlPullParser.getName() != null && Intrinsics.areEqual("Tracking", xmlPullParser.getName()) && !b(d10)) {
                int attributeCount = xmlPullParser.getAttributeCount();
                int i10 = 0;
                while (true) {
                    if (i10 >= attributeCount) {
                        break;
                    } else if (Intrinsics.areEqual(xmlPullParser.getAttributeName(i10), NotificationCompat.CATEGORY_EVENT)) {
                        String attributeValue = xmlPullParser.getAttributeValue(i10);
                        if (d(xmlPullParser) == 4) {
                            HashMap hashMap = f23997f;
                            if (hashMap.containsKey(attributeValue)) {
                                Object obj = hashMap.get(attributeValue);
                                Intrinsics.checkNotNull(obj);
                                String text = xmlPullParser.getText();
                                Intrinsics.checkNotNullExpressionValue(text, "getText(...)");
                                a((String) obj, text);
                            }
                        }
                    } else {
                        i10++;
                    }
                }
            }
            d10 = d(xmlPullParser);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:133:0x01b3, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(org.xmlpull.v1.XmlPullParser r13) {
        /*
            Method dump skipped, instructions count: 472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Pe.f(org.xmlpull.v1.XmlPullParser):void");
    }

    public final void b(XmlPullParser xmlPullParser) {
        int d10 = d(xmlPullParser);
        while (true) {
            if (xmlPullParser.getName() != null && Intrinsics.areEqual(xmlPullParser.getName(), "Extensions") && b(d10)) {
                return;
            }
            if (xmlPullParser.getName() != null && !b(d10)) {
                String name = xmlPullParser.getName();
                if (Intrinsics.areEqual(name, "CompanionAdTracking")) {
                    int d11 = d(xmlPullParser);
                    while (true) {
                        if (xmlPullParser.getName() == null || !Intrinsics.areEqual(xmlPullParser.getName(), "CompanionAdTracking") || !b(d11)) {
                            if (xmlPullParser.getName() != null && !b(d11) && Intrinsics.areEqual("TrackingEvents", xmlPullParser.getName())) {
                                e(xmlPullParser);
                            }
                            d11 = d(xmlPullParser);
                        }
                    }
                } else if (Intrinsics.areEqual(name, "Extension") && Intrinsics.areEqual(xmlPullParser.getAttributeValue(null, "type"), "AdVerifications")) {
                    a(xmlPullParser);
                }
            }
            d10 = d(xmlPullParser);
        }
    }

    public final void a(XmlPullParser xmlPullParser, String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f23999b;
        if (interfaceC3269z5 != null) {
            Intrinsics.checkNotNullExpressionValue("Pe", "TAG");
            ((A5) interfaceC3269z5).c("Pe", "name=".concat(str));
        }
        int i10 = 0;
        while (true) {
            try {
                i10 = xmlPullParser.next();
            } catch (IOException e10) {
                InterfaceC3269z5 interfaceC3269z52 = this.f23999b;
                if (interfaceC3269z52 != null) {
                    StringBuilder a10 = H6.a("Pe", "TAG", "Parsing failed. ");
                    a10.append(Arrays.toString(e10.getStackTrace()));
                    ((A5) interfaceC3269z52).b("Pe", a10.toString());
                }
            } catch (XmlPullParserException e11) {
                InterfaceC3269z5 interfaceC3269z53 = this.f23999b;
                if (interfaceC3269z53 != null) {
                    StringBuilder a11 = H6.a("Pe", "TAG", "VAST Schema validation error: VAST node at appropriate hierarchy not found. ");
                    a11.append(Arrays.toString(e11.getStackTrace()));
                    ((A5) interfaceC3269z53).b("Pe", a11.toString());
                }
            }
            if (i10 == 1) {
                return;
            }
            if (xmlPullParser.getName() != null && Intrinsics.areEqual(xmlPullParser.getName(), str)) {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0048, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(org.xmlpull.v1.XmlPullParser r11, java.lang.String[] r12) {
        /*
            r10 = this;
            java.lang.String r0 = "TAG"
            java.lang.String r1 = "Pe"
            r2 = 0
            r3 = r2
            r4 = r3
        L7:
            int r3 = r11.next()     // Catch: org.xmlpull.v1.XmlPullParserException -> Lc java.io.IOException -> L1b
            goto L29
        Lc:
            com.inmobi.media.z5 r5 = r10.f23999b
            if (r5 == 0) goto L29
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r0)
            com.inmobi.media.A5 r5 = (com.inmobi.media.A5) r5
            java.lang.String r6 = "VAST Schema validation error: VAST node at appropriate hierarchy not found."
            r5.b(r1, r6)
            goto L29
        L1b:
            com.inmobi.media.z5 r5 = r10.f23999b
            if (r5 == 0) goto L29
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r0)
            com.inmobi.media.A5 r5 = (com.inmobi.media.A5) r5
            java.lang.String r6 = "Parsing failed."
            r5.b(r1, r6)
        L29:
            r5 = 1
            if (r3 != r5) goto L2d
            goto L4a
        L2d:
            java.lang.String r6 = r11.getName()
            if (r6 == 0) goto L48
            int r6 = r12.length
            r7 = r2
        L35:
            if (r7 >= r6) goto L48
            r8 = r12[r7]
            java.lang.String r9 = r11.getName()
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r9, r8)
            if (r8 == 0) goto L45
            r4 = r5
            goto L48
        L45:
            int r7 = r7 + 1
            goto L35
        L48:
            if (r4 == 0) goto L7
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.Pe.a(org.xmlpull.v1.XmlPullParser, java.lang.String[]):void");
    }

    public final void a(XmlPullParser xmlPullParser, boolean z10) {
        String str;
        int d10 = d(xmlPullParser);
        while (true) {
            if (xmlPullParser.getName() != null && Intrinsics.areEqual(xmlPullParser.getName(), "VideoClicks") && b(d10)) {
                return;
            }
            if (xmlPullParser.getName() != null && !b(d10)) {
                String name = xmlPullParser.getName();
                if (Intrinsics.areEqual(name, "ClickThrough")) {
                    if (!z10) {
                        return;
                    }
                    if (d(xmlPullParser) == 4) {
                        String text = xmlPullParser.getText();
                        if (text == null || text.length() == 0) {
                            str = null;
                        } else {
                            Intrinsics.checkNotNull(text);
                            int length = text.length() - 1;
                            int i10 = 0;
                            boolean z11 = false;
                            while (i10 <= length) {
                                boolean z12 = Intrinsics.compare((int) text.charAt(!z11 ? i10 : length), 32) <= 0;
                                if (z11) {
                                    if (!z12) {
                                        break;
                                    }
                                    length--;
                                } else if (z12) {
                                    i10++;
                                } else {
                                    z11 = true;
                                }
                            }
                            str = I7.a(length, 1, text, i10);
                        }
                        this.f24000c.f24289k = str;
                    }
                } else if (Intrinsics.areEqual(name, "ClickTracking") && d(xmlPullParser) == 4) {
                    String text2 = xmlPullParser.getText();
                    Intrinsics.checkNotNullExpressionValue(text2, "getText(...)");
                    a("click", text2);
                }
            }
            d10 = d(xmlPullParser);
        }
    }

    public final void a(XmlPullParser vastParser) {
        String vendor;
        int d10;
        int d11 = d(vastParser);
        while (true) {
            if (vastParser.getName() != null && Intrinsics.areEqual(vastParser.getName(), "AdVerifications") && b(d11)) {
                return;
            }
            if (vastParser.getName() != null && !b(d11) && Intrinsics.areEqual(vastParser.getName(), "Verification") && (vendor = vastParser.getAttributeValue(null, "vendor")) != null) {
                Intrinsics.checkNotNullParameter(vastParser, "vastParser");
                Intrinsics.checkNotNullParameter(vendor, "vendor");
                int d12 = d(vastParser);
                String str = null;
                String str2 = null;
                while (true) {
                    if (vastParser.getName() != null && Intrinsics.areEqual(vastParser.getName(), "Verification") && b(d12)) {
                        break;
                    }
                    if (vastParser.getName() != null && !b(d12)) {
                        String name = vastParser.getName();
                        if (Intrinsics.areEqual(name, "JavaScriptResource")) {
                            String attributeValue = vastParser.getAttributeValue(null, "apiFramework");
                            if (attributeValue != null && StringsKt.V(attributeValue, CampaignEx.KEY_OMID, false, 2, null) && d(vastParser) == 4) {
                                String text = vastParser.getText();
                                if (text == null || text.length() == 0) {
                                    str = null;
                                } else {
                                    int length = text.length() - 1;
                                    int i10 = 0;
                                    boolean z10 = false;
                                    while (i10 <= length) {
                                        boolean z11 = Intrinsics.compare((int) text.charAt(!z10 ? i10 : length), 32) <= 0;
                                        if (z10) {
                                            if (!z11) {
                                                break;
                                            }
                                            length--;
                                        } else if (z11) {
                                            i10++;
                                        } else {
                                            z10 = true;
                                        }
                                    }
                                    str = I7.a(length, 1, text, i10);
                                }
                            }
                        } else if (Intrinsics.areEqual(name, "VerificationParameters") && ((d10 = d(vastParser)) == 4 || d10 == 5)) {
                            String text2 = vastParser.getText();
                            if (text2 == null || text2.length() == 0) {
                                str2 = null;
                            } else {
                                String text3 = vastParser.getText();
                                Intrinsics.checkNotNullExpressionValue(text3, "getText(...)");
                                str2 = StringsKt.v1(text3).toString();
                            }
                        }
                    }
                    d12 = d(vastParser);
                }
                if (URLUtil.isValidUrl(str)) {
                    Intrinsics.checkNotNull(str);
                    C2987ha tracker = new C2987ha(vendor, str2, str, null);
                    Ue ue2 = this.f24000c;
                    ue2.getClass();
                    Intrinsics.checkNotNullParameter(tracker, "tracker");
                    ue2.f24286h.add(tracker);
                    InterfaceC3269z5 interfaceC3269z5 = this.f23999b;
                    if (interfaceC3269z5 != null) {
                        Intrinsics.checkNotNullExpressionValue("Pe", "TAG");
                        ((A5) interfaceC3269z5).b("Pe", "Omid JavaScript URL found inside VAST : ".concat(str));
                    }
                }
            }
            d11 = d(vastParser);
        }
    }

    public final void a(int i10) {
        HashMap hashMap = new HashMap();
        hashMap.put("[ERRORCODE]", String.valueOf(i10));
        Iterator it = this.f24000c.f24286h.iterator();
        while (it.hasNext()) {
            U8 u82 = (U8) it.next();
            if (Intrinsics.areEqual("error", u82.f24261b)) {
                C3234x2.f25412a.a(T9.a(u82.f24263d, hashMap), u82.f24262c, true, null, Ta.f24219c, this.f23999b);
            }
        }
    }

    public final void a(String str, String str2) {
        String a10;
        if (str2.length() == 0) {
            a10 = null;
        } else {
            int length = str2.length() - 1;
            int i10 = 0;
            boolean z10 = false;
            while (i10 <= length) {
                boolean z11 = Intrinsics.compare((int) str2.charAt(!z10 ? i10 : length), 32) <= 0;
                if (z10) {
                    if (!z11) {
                        break;
                    }
                    length--;
                } else if (z11) {
                    i10++;
                } else {
                    z10 = true;
                }
            }
            a10 = I7.a(length, 1, str2, i10);
        }
        if (!URLUtil.isValidUrl(a10)) {
            InterfaceC3269z5 interfaceC3269z5 = this.f23999b;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue("Pe", "TAG");
                ((A5) interfaceC3269z5).b("Pe", "Malformed URL " + a10 + " Discarding this tracker");
            }
            Intrinsics.areEqual(str, "Impression");
            return;
        }
        Intrinsics.checkNotNull(a10);
        U8 tracker = new U8(a10, 0, str, null);
        Ue ue2 = this.f24000c;
        ue2.getClass();
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        ue2.f24286h.add(tracker);
    }

    public final void c(int i10) {
        this.f24000c.f24290l = i10;
        a(i10);
    }
}
