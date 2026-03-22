package io.bidmachine.iab.vast.tags;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.iab.utils.IabElementStyle;
import org.xmlpull.v1.XmlPullParser;
import tm.b;
/* loaded from: classes7.dex */
public class AppodealExtensionTag extends ExtensionTag implements b {
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final IabElementStyle f54882d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final IabElementStyle f54883e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final IabElementStyle f54884f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    private final IabElementStyle f54885g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final IabElementStyle f54886h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final IabElementStyle f54887i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    private final IabElementStyle f54888j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final IabElementStyle f54889k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final PostBannerTag f54890l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private Integer f54891m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private Integer f54892n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private CompanionTag f54893o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Boolean f54894p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private Float f54895q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f54896r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f54897s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f54898t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f54899u;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private Integer f54900v;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppodealExtensionTag(@NonNull XmlPullParser xmlPullParser) {
        super(xmlPullParser);
        this.f54882d = new IabElementStyle();
        this.f54883e = new IabElementStyle();
        this.f54884f = new IabElementStyle();
        this.f54885g = new IabElementStyle();
        this.f54886h = new IabElementStyle();
        this.f54887i = new IabElementStyle();
        this.f54888j = new IabElementStyle();
        this.f54889k = new IabElementStyle();
        this.f54890l = new PostBannerTag();
        this.f54896r = false;
        this.f54897s = false;
        this.f54898t = false;
        this.f54899u = false;
        xmlPullParser.require(2, null, "Extension");
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                String name = xmlPullParser.getName();
                if (VastXmlTag.D(name, "Video")) {
                    VastXmlTag.C(xmlPullParser, this.f54882d);
                } else if (VastXmlTag.D(name, "LoadingView")) {
                    VastXmlTag.C(xmlPullParser, this.f54888j);
                } else if (VastXmlTag.D(name, "Countdown")) {
                    VastXmlTag.C(xmlPullParser, this.f54889k);
                } else if (VastXmlTag.D(name, "Progress")) {
                    VastXmlTag.C(xmlPullParser, this.f54886h);
                } else if (VastXmlTag.D(name, "ClosableView")) {
                    VastXmlTag.C(xmlPullParser, this.f54885g);
                } else if (VastXmlTag.D(name, "Mute")) {
                    VastXmlTag.C(xmlPullParser, this.f54884f);
                } else if (VastXmlTag.D(name, "CTA")) {
                    VastXmlTag.C(xmlPullParser, this.f54883e);
                } else if (VastXmlTag.D(name, "RepeatView")) {
                    VastXmlTag.C(xmlPullParser, this.f54887i);
                } else if (VastXmlTag.D(name, "Postbanner")) {
                    this.f54890l.X(xmlPullParser);
                } else if (VastXmlTag.D(name, "Autorotate")) {
                    this.f54894p = Boolean.valueOf(VastXmlTag.F(xmlPullParser));
                } else if (VastXmlTag.D(name, "R1")) {
                    this.f54898t = VastXmlTag.F(xmlPullParser);
                } else if (VastXmlTag.D(name, "R2")) {
                    this.f54899u = VastXmlTag.F(xmlPullParser);
                } else if (VastXmlTag.D(name, "ForceOrientation")) {
                    this.f54900v = VastXmlTag.M(VastXmlTag.H(xmlPullParser));
                } else if (VastXmlTag.D(name, "CtaText")) {
                    this.f54883e.O(VastXmlTag.H(xmlPullParser));
                } else if (VastXmlTag.D(name, "ShowCta")) {
                    this.f54883e.s0(Boolean.valueOf(VastXmlTag.F(xmlPullParser)));
                } else if (VastXmlTag.D(name, "ShowMute")) {
                    this.f54884f.s0(Boolean.valueOf(VastXmlTag.F(xmlPullParser)));
                } else if (VastXmlTag.D(name, "ShowCompanion")) {
                    this.f54890l.q0(VastXmlTag.F(xmlPullParser));
                } else if (VastXmlTag.D(name, "CompanionCloseTime")) {
                    int L = VastXmlTag.L(VastXmlTag.H(xmlPullParser));
                    if (L > -1) {
                        this.f54890l.p0(L);
                    }
                } else if (VastXmlTag.D(name, "Muted")) {
                    this.f54896r = VastXmlTag.F(xmlPullParser);
                } else if (VastXmlTag.D(name, "VideoClickable")) {
                    this.f54897s = VastXmlTag.F(xmlPullParser);
                } else if (VastXmlTag.D(name, "CtaXPosition")) {
                    this.f54883e.W(VastXmlTag.Q(VastXmlTag.H(xmlPullParser)));
                } else if (VastXmlTag.D(name, "CtaYPosition")) {
                    this.f54883e.r0(VastXmlTag.S(VastXmlTag.H(xmlPullParser)));
                } else if (VastXmlTag.D(name, "CloseXPosition")) {
                    this.f54885g.W(VastXmlTag.Q(VastXmlTag.H(xmlPullParser)));
                } else if (VastXmlTag.D(name, "CloseYPosition")) {
                    this.f54885g.r0(VastXmlTag.S(VastXmlTag.H(xmlPullParser)));
                } else if (VastXmlTag.D(name, "MuteXPosition")) {
                    this.f54884f.W(VastXmlTag.Q(VastXmlTag.H(xmlPullParser)));
                } else if (VastXmlTag.D(name, "MuteYPosition")) {
                    this.f54884f.r0(VastXmlTag.S(VastXmlTag.H(xmlPullParser)));
                } else if (VastXmlTag.D(name, "AssetsColor")) {
                    Integer G = VastXmlTag.G(VastXmlTag.H(xmlPullParser));
                    if (G != null) {
                        this.f54891m = G;
                    }
                } else if (VastXmlTag.D(name, "AssetsBackgroundColor")) {
                    Integer G2 = VastXmlTag.G(VastXmlTag.H(xmlPullParser));
                    if (G2 != null) {
                        this.f54892n = G2;
                    }
                } else if (VastXmlTag.D(name, "Companion")) {
                    CompanionTag companionTag = new CompanionTag(xmlPullParser);
                    if (companionTag.u0() && companionTag.s0()) {
                        this.f54893o = companionTag;
                    }
                } else if (VastXmlTag.D(name, "CloseTime")) {
                    String H = VastXmlTag.H(xmlPullParser);
                    if (H != null) {
                        this.f54895q = Float.valueOf(Float.parseFloat(H));
                    }
                } else if (VastXmlTag.D(name, "ShowProgress")) {
                    this.f54886h.s0(Boolean.valueOf(VastXmlTag.F(xmlPullParser)));
                } else {
                    VastXmlTag.I(xmlPullParser);
                }
            }
        }
        xmlPullParser.require(3, null, "Extension");
    }

    @Nullable
    public CompanionTag Z() {
        return this.f54893o;
    }

    public boolean a0() {
        return this.f54896r;
    }

    @Override // tm.b
    @NonNull
    public IabElementStyle b() {
        return this.f54885g;
    }

    @Override // tm.b
    @Nullable
    public Integer d() {
        return this.f54892n;
    }

    @Override // tm.b
    @NonNull
    public IabElementStyle e() {
        return this.f54887i;
    }

    @Override // tm.b
    @NonNull
    public PostBannerTag f() {
        return this.f54890l;
    }

    @Override // tm.b
    public boolean g() {
        return this.f54897s;
    }

    @Override // tm.b
    @NonNull
    public IabElementStyle getVideoStyle() {
        return this.f54882d;
    }

    @Override // tm.b
    @Nullable
    public Integer h() {
        return this.f54900v;
    }

    @Override // tm.b
    @Nullable
    public Float i() {
        return this.f54895q;
    }

    @Override // tm.b
    @NonNull
    public IabElementStyle j() {
        return this.f54886h;
    }

    @Override // tm.b
    @NonNull
    public IabElementStyle k() {
        return this.f54884f;
    }

    @Override // tm.b
    public boolean n() {
        return this.f54899u;
    }

    @Override // tm.b
    public boolean q() {
        return this.f54898t;
    }

    @Override // tm.b
    @Nullable
    public Integer r() {
        return this.f54891m;
    }

    @Override // tm.b
    @NonNull
    public IabElementStyle s() {
        return this.f54883e;
    }

    @Override // tm.b
    @Nullable
    public Boolean t() {
        return this.f54894p;
    }

    @Override // tm.b
    @NonNull
    public IabElementStyle u() {
        return this.f54889k;
    }

    @Override // tm.b
    @NonNull
    public IabElementStyle v() {
        return this.f54888j;
    }
}
