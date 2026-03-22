package io.bidmachine.iab.vast.tags;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.sdk.AppLovinMediationProvider;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes7.dex */
public class AdContentTag extends VastXmlTag {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private AdSystemTag f54873c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private List<CreativeTag> f54874d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private List<ExtensionTag> f54875e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private List<String> f54876f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private List<String> f54877g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdContentTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
    }

    @Nullable
    private ExtensionTag o0(@NonNull XmlPullParser xmlPullParser) {
        ExtensionTag extensionTag;
        xmlPullParser.require(2, null, "Extension");
        String y10 = new ExtensionTag(xmlPullParser).y("type");
        if (VastXmlTag.D(y10, AppLovinMediationProvider.APPODEAL)) {
            extensionTag = new AppodealExtensionTag(xmlPullParser);
        } else if (VastXmlTag.D(y10, "AdVerifications")) {
            ExtensionTag extensionTag2 = null;
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (VastXmlTag.D(xmlPullParser.getName(), "AdVerifications")) {
                        extensionTag2 = new AdVerificationsExtensionTag(xmlPullParser);
                    } else {
                        VastXmlTag.I(xmlPullParser);
                    }
                }
            }
            extensionTag = extensionTag2;
        } else {
            VastXmlTag.I(xmlPullParser);
            extensionTag = null;
        }
        xmlPullParser.require(3, null, "Extension");
        return extensionTag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Z(@Nullable AdSystemTag adSystemTag) {
        this.f54873c = adSystemTag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a0(@Nullable List<CreativeTag> list) {
        this.f54874d = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k0(@Nullable List<ExtensionTag> list) {
        this.f54875e = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<CreativeTag> l0(@NonNull XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Creatives");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.D(xmlPullParser.getName(), "Creative")) {
                    arrayList.add(new CreativeTag(xmlPullParser));
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Creatives");
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public List<ExtensionTag> p0(@NonNull XmlPullParser xmlPullParser) {
        xmlPullParser.require(2, null, "Extensions");
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (VastXmlTag.D(xmlPullParser.getName(), "Extension")) {
                    ExtensionTag o02 = o0(xmlPullParser);
                    if (o02 != null) {
                        arrayList.add(o02);
                    }
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Extensions");
        return arrayList;
    }

    @Nullable
    public List<CreativeTag> q0() {
        return this.f54874d;
    }

    @Nullable
    public List<String> r0() {
        return this.f54877g;
    }

    @Nullable
    public List<ExtensionTag> s0() {
        return this.f54875e;
    }

    @Nullable
    public List<String> u0() {
        return this.f54876f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v0(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f54877g == null) {
            this.f54877g = new ArrayList();
        }
        this.f54877g.add(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x0(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f54876f == null) {
            this.f54876f = new ArrayList();
        }
        this.f54876f.add(str);
    }
}
