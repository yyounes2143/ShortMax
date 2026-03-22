package com.bytedance.sdk.component.adexpress.dynamic.tB;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.bean.subs.SubsSku;
/* loaded from: classes3.dex */
public class kkU {
    public static cFZ oJ(Context context, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn pfn, com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz, com.bytedance.sdk.component.adexpress.dynamic.ex.kkU kku, com.bytedance.sdk.component.adexpress.ZYk.PiB piB) {
        cFZ rz;
        String str = null;
        if (context == null || pfn == null || cfz == null) {
            return null;
        }
        String Rl = cfz.Rl();
        String jr2 = piB.jr();
        Rl.hashCode();
        char c10 = 65535;
        switch (Rl.hashCode()) {
            case 48:
                if (Rl.equals(MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
                    c10 = 0;
                    break;
                }
                break;
            case 49:
                if (Rl.equals("1")) {
                    c10 = 1;
                    break;
                }
                break;
            case 50:
                if (Rl.equals("2")) {
                    c10 = 2;
                    break;
                }
                break;
            case 53:
                if (Rl.equals("5")) {
                    c10 = 3;
                    break;
                }
                break;
            case 54:
                if (Rl.equals(SubsSku.SCENE_AD_2_PAY)) {
                    c10 = 4;
                    break;
                }
                break;
            case 55:
                if (Rl.equals("7")) {
                    c10 = 5;
                    break;
                }
                break;
            case 56:
                if (Rl.equals("8")) {
                    c10 = 6;
                    break;
                }
                break;
            case 57:
                if (Rl.equals("9")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1567:
                if (Rl.equals("10")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1568:
                if (Rl.equals("11")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1569:
                if (Rl.equals("12")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1570:
                if (Rl.equals("13")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1571:
                if (Rl.equals("14")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 1573:
                if (Rl.equals("16")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 1574:
                if (Rl.equals("17")) {
                    c10 = 14;
                    break;
                }
                break;
            case 1575:
                if (Rl.equals("18")) {
                    c10 = 15;
                    break;
                }
                break;
            case 1598:
                if (Rl.equals("20")) {
                    c10 = 16;
                    break;
                }
                break;
            case 1600:
                if (Rl.equals("22")) {
                    c10 = 17;
                    break;
                }
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUBTITLE_SENSE_BUFFERING /* 1601 */:
                if (Rl.equals("23")) {
                    c10 = 18;
                    break;
                }
                break;
            case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUBTITLE_LAZY_LOADING /* 1602 */:
                if (Rl.equals("24")) {
                    c10 = 19;
                    break;
                }
                break;
            case 1603:
                if (Rl.equals("25")) {
                    c10 = 20;
                    break;
                }
                break;
            case 1607:
                if (Rl.equals("29")) {
                    c10 = 21;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return new Pfn(context, pfn, cfz);
            case 1:
                return new tB(context, pfn, cfz);
            case 2:
                return new ZYk(context, pfn, cfz);
            case 3:
                if (cfz.Qu() == 1) {
                    return new si(context, pfn, cfz, cfz.Dex());
                }
                return new eZI(context, pfn, cfz);
            case 4:
            case '\t':
                return new WcQ(context, pfn, cfz);
            case 5:
            case '\f':
                return new BTZ(context, pfn, cfz);
            case 6:
                return new PiB(context, pfn, cfz);
            case 7:
            case '\r':
                return new awB(context, pfn, cfz, Rl, kku.oJ(), kku.ZYk(), kku.ex(), kku.cFZ());
            case '\b':
                return new ex(context, pfn, cfz);
            case '\n':
                return new eZI(context, pfn, cfz);
            case 11:
                return new si(context, pfn, cfz);
            case 14:
            case 15:
                rz = new RZ(context, pfn, cfz, Rl, kku);
                break;
            case 16:
                if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    rz = new dLZ(context, pfn, cfz, jr2 + "static/lotties/glass-swipe/glass-swipe.json", "20");
                    break;
                } else {
                    if (!TextUtils.isEmpty(jr2)) {
                        str = jr2 + "brush_mask.json";
                    }
                    rz = new dLZ(context, pfn, cfz, str, "20");
                    break;
                }
            case 17:
                if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    rz = new dLZ(context, pfn, cfz, jr2 + "static/lotties/202327swiper-up-star/index.json", "22");
                    break;
                } else {
                    return new Ry(context, pfn, cfz);
                }
            case 18:
                if (!com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    return null;
                }
                rz = new dLZ(context, pfn, cfz, jr2 + "static/lotties/202327swiper-up-star/click.json", "23");
                break;
            case 19:
                if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    return new oJ(context, pfn, cfz);
                }
                if (!TextUtils.isEmpty(jr2)) {
                    str = jr2 + "swiper_up_star.json";
                }
                rz = new dLZ(context, pfn, cfz, str, "24");
                break;
            case 20:
                if (!com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    return null;
                }
                rz = new dLZ(context, pfn, cfz, jr2 + "static/lotties/gesture-slide.json", "25");
                break;
            case 21:
                return new ba(context, pfn, cfz, kku.oJ(), kku.ZYk(), kku.ex(), kku.cFZ());
            default:
                return null;
        }
        return rz;
    }
}
