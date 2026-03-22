package com.bytedance.sdk.openadsdk.core.kkU.ba;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.core.BTZ;
import com.bytedance.adsdk.ugeno.core.awB;
import com.bytedance.adsdk.ugeno.core.dLZ;
import com.bytedance.adsdk.ugeno.core.eZI;
import com.bytedance.adsdk.ugeno.ex.ba;
import com.bytedance.sdk.component.utils.QSm;
import com.bytedance.sdk.openadsdk.core.model.Jc;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.bytedance.sdk.openadsdk.core.model.eZI;
import com.bytedance.sdk.openadsdk.utils.cdg;
import com.ss.texturerender.TextureRenderKeys;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ba extends tB {
    private com.bytedance.adsdk.ugeno.ZYk.tB HL;
    private com.bytedance.sdk.openadsdk.core.widget.Pfn IUZ;
    private boolean Ln;

    /* renamed from: tb  reason: collision with root package name */
    private com.bytedance.adsdk.ugeno.ZYk.tB f13156tb;

    public ba(Context context, cY cYVar, boolean z10, oJ oJVar, ViewGroup viewGroup) {
        super(context, cYVar, z10, oJVar, viewGroup);
        this.Ln = false;
    }

    private void BTZ() {
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.f13156tb;
        if (tBVar != null) {
            tBVar.tB(8);
        }
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar2 = this.HL;
        if (tBVar2 != null) {
            tBVar2.tB(8);
        }
    }

    private void PiB() {
        dLZ dlz = new dLZ();
        HashMap hashMap = new HashMap();
        hashMap.put("image_info", this.f13160ba.dLZ());
        hashMap.put(TextureRenderKeys.KEY_IS_BMF_VQSCORE_CACHE_DIR, this.f13160ba.WcQ());
        dlz.oJ(hashMap);
        dlz.oJ(this.ZYk);
        dlz.oJ(this.ex);
        dlz.ZYk(this.Xe);
        this.oJ.oJ("ad", dlz);
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.ba.tB
    protected JSONObject ZYk() {
        return this.f13160ba.tB();
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.ba.tB
    public com.bytedance.adsdk.ugeno.ZYk.tB cFZ() {
        com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar = this.tB;
        if (tBVar == null) {
            return null;
        }
        return tBVar.Pfn("Playable");
    }

    public void dLZ() {
        BTZ btz = this.oJ;
        if (btz != null) {
            btz.oJ(this.tB, "show", new Object[0]);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.ba.tB
    protected int ex() {
        PiB();
        this.oJ.oJ((awB) this);
        this.oJ.oJ((eZI) this);
        Jc BWx = this.Pfn.BWx();
        try {
            if (BWx != null) {
                this.tB = this.oJ.oJ(this.ex, this.Xe, BWx.Pfn());
            } else {
                this.tB = this.oJ.oJ(this.ex, this.Xe, (JSONObject) null);
            }
            if (this.tB != null) {
                if (TextUtils.equals(this.cY, "rewarded_video")) {
                    this.f13156tb = this.tB.Pfn("RVCountdown");
                    this.HL = this.tB.Pfn("RVSkipView");
                } else {
                    this.f13156tb = this.tB.Pfn("FVCountdown");
                    this.HL = this.tB.Pfn("FVSkipView");
                }
                BTZ();
            }
            this.f13160ba.Jc().ZYk();
            this.f13160ba.Jc().tB();
            return 0;
        } catch (NoClassDefFoundError unused) {
            return 140;
        } catch (UnsatisfiedLinkError unused2) {
            return 139;
        } catch (Throwable unused3) {
            return 141;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.ba.tB
    protected com.bytedance.adsdk.ugeno.ZYk.tB jFA() {
        return null;
    }

    public void kkU() {
        BTZ btz = this.oJ;
        if (btz != null) {
            btz.oJ(this.tB, "videoFail", new Object[0]);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.ba.tB
    protected JSONObject oJ() {
        JSONObject tB = this.f13160ba.tB();
        if (tB != null) {
            return tB.optJSONObject("xTemplate");
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.ba.tB, com.bytedance.sdk.component.adexpress.dynamic.ex
    public void setTime(CharSequence charSequence, int i10, int i11, boolean z10) {
        if (this.tB == null) {
            return;
        }
        boolean z11 = true;
        if (i10 != 1) {
            z11 = false;
        }
        oJ(charSequence, z11, i11, z10);
        ZYk(charSequence, z11, i11, z10);
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.ba.tB
    protected com.bytedance.adsdk.ugeno.ZYk.tB so() {
        com.bytedance.adsdk.ugeno.ZYk.tB<View> tBVar = this.tB;
        if (tBVar == null) {
            return null;
        }
        return tBVar.Pfn("VideoV3");
    }

    private void ZYk(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.HL;
        if (tBVar != null && (tBVar instanceof com.bytedance.sdk.openadsdk.core.kkU.ZYk.ba)) {
            int i11 = 0;
            if (!z10 && !z11) {
                i11 = 8;
            }
            tBVar.tB(i11);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.ba.tB
    public void oJ(com.bytedance.sdk.openadsdk.core.widget.Pfn pfn) {
        this.IUZ = pfn;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.bytedance.sdk.openadsdk.core.kkU.ba.tB, com.bytedance.adsdk.ugeno.core.awB
    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, String str, ba.oJ oJVar) {
        char c10;
        int i10 = 7;
        int i11 = 5;
        boolean z10 = true;
        int i12 = -1;
        if (this.f13164so == null || oJVar == null) {
            return;
        }
        String ZYk = oJVar.ZYk();
        ZYk.hashCode();
        switch (ZYk.hashCode()) {
            case -1882810668:
                if (ZYk.equals("sendLogExtra")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case -1439599355:
                if (ZYk.equals("sendAdExtra")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -511324706:
                if (ZYk.equals("openPrivacy")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -55818203:
                if (ZYk.equals("pauseVideo")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 3532159:
                if (ZYk.equals("skip")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 72484600:
                if (ZYk.equals("openPlayable")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case 804386914:
                if (ZYk.equals("videoControl")) {
                    c10 = 6;
                    break;
                }
                c10 = 65535;
                break;
            case 951590323:
                if (ZYk.equals("convert")) {
                    c10 = 7;
                    break;
                }
                c10 = 65535;
                break;
            case 1151744482:
                if (ZYk.equals("muteVideo")) {
                    c10 = '\b';
                    break;
                }
                c10 = 65535;
                break;
            case 1528469391:
                if (ZYk.equals("openLinks")) {
                    c10 = '\t';
                    break;
                }
                c10 = 65535;
                break;
            case 1603466254:
                if (ZYk.equals("speedVideoOrTimer")) {
                    c10 = '\n';
                    break;
                }
                c10 = 65535;
                break;
            case 1671642405:
                if (ZYk.equals("dislike")) {
                    c10 = 11;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        switch (c10) {
            case 0:
                new cFZ().oJ("sendLogExtra", this.Pfn, this.cY, oJVar.tB());
                return;
            case 1:
                new cFZ().oJ("sendAdExtra", this.Pfn, this.cY, oJVar.tB());
                return;
            case 2:
                break;
            case 3:
            case 6:
                i10 = 4;
                break;
            case 4:
                i10 = 6;
                break;
            case 5:
                com.bytedance.sdk.openadsdk.core.so.awB awb = this.jFA;
                if (awb != null) {
                    awb.ZYk((JSONObject) null);
                    return;
                }
                return;
            case 7:
                i10 = 2;
                break;
            case '\b':
                i10 = i11;
                break;
            case '\t':
                new Pfn().oJ(oJ(tBVar.dLZ()), this.ZYk instanceof Activity, this.Pfn, this.cY, oJVar.tB(), this.IUZ);
                return;
            case '\n':
                QSm.ZYk("UGenRender", "onUGenEvent: " + oJVar.tB());
                i11 = 13;
                if (oJVar.tB() != null && !oJVar.tB().isEmpty()) {
                    try {
                        i12 = Integer.parseInt(oJVar.tB().get("switch"));
                    } catch (Throwable th2) {
                        QSm.tB("UGenRender", th2);
                    }
                }
                i10 = i11;
                break;
            case 11:
                i10 = 3;
                break;
            default:
                i10 = 0;
                break;
        }
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        WeakReference<View> weakReference = this.Id;
        if (weakReference != null) {
            int[] oJ = cdg.oJ(weakReference.get());
            if (oJ != null) {
                iArr = oJ;
            }
            int[] tB = cdg.tB(this.Id.get());
            if (tB != null) {
                iArr2 = tB;
            }
        }
        eZI.oJ oJ2 = new eZI.oJ().ex(this.WcQ).tB(this.awB).ZYk(this.eZI).oJ(this.f13163si).ZYk(this.Ry).oJ(this.RZ).tB(i12).ex(iArr[0]).Pfn(iArr[1]).ba(iArr2[0]).cFZ(iArr2[1]).oJ(this.f13161jr);
        if (str.equals("tap") && !this.QSm) {
            z10 = false;
        }
        this.f13164so.oJ(tBVar.dLZ(), i10, oJ2.oJ(z10).oJ(tBVar.mu()).ZYk(false).oJ());
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.ba.tB, com.bytedance.sdk.component.adexpress.dynamic.ex
    public void setSoundMute(boolean z10) {
    }

    private void oJ(CharSequence charSequence, boolean z10, int i10, boolean z11) {
        int i11;
        com.bytedance.adsdk.ugeno.ZYk.tB tBVar = this.f13156tb;
        if (tBVar != null && (tBVar instanceof com.bytedance.sdk.openadsdk.core.kkU.ZYk.ZYk)) {
            try {
                i11 = Integer.parseInt((String) charSequence);
            } catch (Exception unused) {
                QSm.tB("UGenRender", "parse duration exception", charSequence);
                i11 = 0;
            }
            if (!z11 && i11 > 0 && !this.Ln) {
                this.f13156tb.tB(0);
                if (!z10 && this.f13160ba.oJ() && com.bytedance.sdk.component.adexpress.ex.ba.ZYk(this.f13160ba.ex())) {
                    ((com.bytedance.sdk.openadsdk.core.kkU.ZYk.ZYk) this.f13156tb).dLZ(String.valueOf(i10));
                    return;
                } else if (!"open_ad".equals(this.f13160ba.ex()) && this.f13160ba.oJ()) {
                    this.Ln = true;
                    this.f13156tb.tB(8);
                    return;
                } else {
                    ((com.bytedance.sdk.openadsdk.core.kkU.ZYk.ZYk) this.f13156tb).dLZ(String.valueOf(charSequence));
                    return;
                }
            }
            this.f13156tb.tB(8);
        }
    }

    private Context oJ(View view) {
        Activity oJ = view != null ? com.bytedance.sdk.component.utils.ZYk.oJ(view) : null;
        return oJ == null ? this.ZYk : oJ;
    }

    @Override // com.bytedance.sdk.openadsdk.core.kkU.ba.tB
    public void oJ(long j10, long j11) {
        super.oJ(j10, j11);
        BTZ btz = this.oJ;
        if (btz != null) {
            btz.oJ(this.tB, "videoProgress", Long.valueOf(j10), Long.valueOf(j11));
        }
    }
}
