package com.bytedance.adsdk.ugeno.jFA.ba;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.adjust.sdk.Constants;
import com.bytedance.adsdk.ugeno.ZYk.tB;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
/* loaded from: classes3.dex */
public class ZYk extends tB<oJ> {
    private float BWx;
    private int JJ;
    private int MVA;
    private boolean NX;
    private float Oof;
    private int Qzd;
    @Deprecated
    private float XSu;
    protected int YF;
    private int ZMY;
    @Deprecated
    private float Zjw;
    private TextUtils.TruncateAt Zzm;
    private int hwh;

    /* renamed from: ib  reason: collision with root package name */
    private int f11680ib;
    protected String oJ;

    /* renamed from: oo  reason: collision with root package name */
    private float f11681oo;

    /* renamed from: rg  reason: collision with root package name */
    private float f11682rg;
    @Deprecated
    private TextUtils.TruncateAt sQ;
    private float uaj;

    /* renamed from: uq  reason: collision with root package name */
    private float f11683uq;
    private float yB;

    public ZYk(Context context) {
        super(context);
        this.YF = ViewCompat.MEASURED_STATE_MASK;
        this.BWx = 12.0f;
        this.hwh = Integer.MAX_VALUE;
        this.Qzd = GravityCompat.START;
        this.Zzm = TextUtils.TruncateAt.END;
        this.f11681oo = -1.0f;
        this.f11682rg = 400.0f;
    }

    private TextUtils.TruncateAt BTZ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 0;
                    break;
                }
                break;
            case 100571:
                if (str.equals("end")) {
                    c10 = 1;
                    break;
                }
                break;
            case 109757538:
                if (str.equals("start")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.sQ = TextUtils.TruncateAt.MIDDLE;
                break;
            case 1:
                this.sQ = TextUtils.TruncateAt.END;
                break;
            case 2:
                this.sQ = TextUtils.TruncateAt.START;
                break;
            default:
                this.sQ = null;
                break;
        }
        return this.sQ;
    }

    private TextUtils.TruncateAt PiB(String str) {
        if (TextUtils.equals(str, DevicePublicKeyStringDef.NONE)) {
            return null;
        }
        return TextUtils.TruncateAt.END;
    }

    private int WcQ(String str) {
        char c10;
        int hashCode = str.hashCode();
        if (hashCode != -1178781136) {
            if (hashCode != -1039745817) {
                if (hashCode == 3029637 && str.equals(TtmlNode.BOLD)) {
                    c10 = 0;
                }
                c10 = 65535;
            } else {
                if (str.equals(Constants.NORMAL)) {
                    c10 = 2;
                }
                c10 = 65535;
            }
        } else {
            if (str.equals(TtmlNode.ITALIC)) {
                c10 = 1;
            }
            c10 = 65535;
        }
        if (c10 == 0) {
            return 1;
        }
        if (c10 == 1) {
            return 2;
        }
        return 0;
    }

    private int awB(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 0;
                    break;
                }
                break;
            case -348726240:
                if (str.equals("center_vertical")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(TtmlNode.LEFT)) {
                    c10 = 2;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(TtmlNode.RIGHT)) {
                    c10 = 3;
                    break;
                }
                break;
            case 1063616078:
                if (str.equals("center_horizontal")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 17;
            case 1:
                return 16;
            case 2:
            default:
                return 3;
            case 3:
                return 5;
            case 4:
                return 1;
        }
    }

    private int eZI(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1026963764:
                if (str.equals(TtmlNode.UNDERLINE)) {
                    c10 = 0;
                    break;
                }
                break;
            case -972521773:
                if (str.equals("strikethrough")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3387192:
                if (str.equals(DevicePublicKeyStringDef.NONE)) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 8;
            case 1:
                return 16;
            case 2:
            default:
                return Integer.MAX_VALUE;
        }
    }

    private void ex() {
        ((oJ) this.Pfn).setLineSpacing(0.0f, this.f11681oo);
    }

    private void jFA() {
        float f10 = this.f11681oo;
        if (f10 <= 3.0f) {
            ((oJ) this.Pfn).setLineSpacing(0.0f, f10);
        } else if (Build.VERSION.SDK_INT >= 28) {
            int round = Math.round(so.oJ(this.ZYk, (f10 - (this.BWx * 1.2f)) / 2.0f));
            int paddingTop = ((oJ) this.Pfn).getPaddingTop() + round;
            int paddingBottom = ((oJ) this.Pfn).getPaddingBottom() + round;
            T t10 = this.Pfn;
            ((oJ) t10).setPadding(((oJ) t10).getPaddingLeft(), paddingTop, ((oJ) this.Pfn).getPaddingRight(), paddingBottom);
            ((oJ) this.Pfn).setLineHeight(Math.round(so.oJ(this.ZYk, this.f11681oo)));
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        Typeface create;
        super.ZYk();
        if (TextUtils.equals("null", this.oJ)) {
            this.oJ = "";
        }
        dLZ(this.oJ);
        boolean z10 = true;
        ((oJ) this.Pfn).setTextSize(1, this.BWx);
        ((oJ) this.Pfn).setTextColor(this.YF);
        ((oJ) this.Pfn).setLines(this.f11680ib);
        ((oJ) this.Pfn).setMaxLines(this.hwh);
        ((oJ) this.Pfn).setGravity(this.Qzd);
        ((oJ) this.Pfn).setIncludeFontPadding(false);
        oJ(this.MVA);
        if (nke()) {
            oJ(this.Zzm);
        } else {
            oJ(this.sQ);
        }
        if (this.f11681oo > 0.0f) {
            if (nke()) {
                jFA();
            } else {
                ex();
            }
        }
        int i10 = Build.VERSION.SDK_INT;
        ((oJ) this.Pfn).setBreakStrategy(0);
        if (nke()) {
            if (this.NX) {
                if (this.f11683uq <= 0.0f) {
                    this.f11683uq = 1.0E-5f;
                }
                ((oJ) this.Pfn).setShadowLayer(this.f11683uq, this.Oof, this.yB, this.ZMY);
            }
        } else {
            ((oJ) this.Pfn).setShadowLayer(this.f11683uq, this.Zjw, this.XSu, this.ZMY);
        }
        int i11 = this.JJ;
        if (i11 == 1) {
            ((oJ) this.Pfn).setTypeface(Typeface.DEFAULT, i11);
        } else if (i10 >= 28) {
            Typeface typeface = Typeface.DEFAULT;
            int i12 = (int) this.f11682rg;
            if (i11 != 2) {
                z10 = false;
            }
            create = Typeface.create(typeface, i12, z10);
            ((oJ) this.Pfn).setTypeface(create);
        } else if (this.f11682rg >= 500.0f) {
            ((oJ) this.Pfn).setTypeface(Typeface.DEFAULT, 1);
        }
        if (so.oJ(this.ZYk, this.BWx) > 0.0f) {
            ((oJ) this.Pfn).setLetterSpacing(this.uaj / so.oJ(this.ZYk, this.BWx));
        }
    }

    public void dLZ(String str) {
        this.oJ = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (TextUtils.equals("null", str)) {
            this.oJ = "";
        }
        ((oJ) this.Pfn).setText(this.oJ);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    /* renamed from: tB */
    public oJ oJ() {
        oJ oJVar = new oJ(this.ZYk);
        oJVar.oJ(this);
        return oJVar;
    }

    public void oJ(int i10) {
        this.MVA = i10;
        if (i10 == Integer.MAX_VALUE) {
            return;
        }
        ((oJ) this.Pfn).setPaintFlags(i10);
    }

    public void oJ(TextUtils.TruncateAt truncateAt) {
        if (truncateAt == null) {
            return;
        }
        ((oJ) this.Pfn).setEllipsize(truncateAt);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.oJ(str, str2);
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1621067310:
                if (str.equals("shadowRadius")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1589741021:
                if (str.equals("shadowColor")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1230714651:
                if (str.equals("shadowOffsetX")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1230714650:
                if (str.equals("shadowOffsetY")) {
                    c10 = 3;
                    break;
                }
                break;
            case -1065511464:
                if (str.equals(TtmlNode.ATTR_TTS_TEXT_ALIGN)) {
                    c10 = 4;
                    break;
                }
                break;
            case -1063571914:
                if (str.equals("textColor")) {
                    c10 = 5;
                    break;
                }
                break;
            case -1048634236:
                if (str.equals("textStyle")) {
                    c10 = 6;
                    break;
                }
                break;
            case -1021145689:
                if (str.equals("shadowBlur")) {
                    c10 = 7;
                    break;
                }
                break;
            case -1003668786:
                if (str.equals("textSize")) {
                    c10 = '\b';
                    break;
                }
                break;
            case -879295043:
                if (str.equals(TtmlNode.ATTR_TTS_TEXT_DECORATION)) {
                    c10 = '\t';
                    break;
                }
                break;
            case -756368940:
                if (str.equals("shadowDx")) {
                    c10 = '\n';
                    break;
                }
                break;
            case -756368939:
                if (str.equals("shadowDy")) {
                    c10 = 11;
                    break;
                }
                break;
            case -734428249:
                if (str.equals(TtmlNode.ATTR_TTS_FONT_WEIGHT)) {
                    c10 = '\f';
                    break;
                }
                break;
            case -515807685:
                if (str.equals("lineHeight")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 3556653:
                if (str.equals(MimeTypes.BASE_TYPE_TEXT)) {
                    c10 = 14;
                    break;
                }
                break;
            case 102977279:
                if (str.equals("lines")) {
                    c10 = 15;
                    break;
                }
                break;
            case 188702929:
                if (str.equals("ellipsis")) {
                    c10 = 16;
                    break;
                }
                break;
            case 390232059:
                if (str.equals("maxLines")) {
                    c10 = 17;
                    break;
                }
                break;
            case 1554823821:
                if (str.equals("ellipsize")) {
                    c10 = 18;
                    break;
                }
                break;
            case 2111078717:
                if (str.equals("letterSpacing")) {
                    c10 = 19;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 7:
                this.f11683uq = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case 1:
                this.ZMY = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2);
                this.NX = true;
                return;
            case 2:
                this.Oof = so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f));
                return;
            case 3:
                this.yB = so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f));
                return;
            case 4:
                this.Qzd = awB(str2);
                return;
            case 5:
                this.YF = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2);
                return;
            case 6:
                this.JJ = WcQ(str2);
                return;
            case '\b':
                this.BWx = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case '\t':
                this.MVA = eZI(str2);
                return;
            case '\n':
                this.Zjw = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case 11:
                this.XSu = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case '\f':
                float oJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, -1.0f);
                this.f11682rg = oJ;
                if (oJ < 1.0f || oJ > 1000.0f) {
                    this.f11682rg = 400.0f;
                    return;
                }
                return;
            case '\r':
                this.f11681oo = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 1.0f);
                return;
            case 14:
                this.oJ = str2;
                return;
            case 15:
                this.f11680ib = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0);
                return;
            case 16:
                this.Zzm = PiB(str2);
                return;
            case 17:
                int oJ2 = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, Integer.MAX_VALUE);
                this.hwh = oJ2 > 0 ? oJ2 : Integer.MAX_VALUE;
                return;
            case 18:
                this.sQ = BTZ(str2);
                return;
            case 19:
                this.uaj = so.oJ(this.ZYk, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f));
                return;
            default:
                return;
        }
    }
}
