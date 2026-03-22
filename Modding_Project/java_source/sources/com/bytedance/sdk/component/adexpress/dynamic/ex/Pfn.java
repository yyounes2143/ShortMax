package com.bytedance.sdk.component.adexpress.dynamic.ex;

import android.text.TextUtils;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttm.player.MediaFormat;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class Pfn {
    public static final Map<String, Integer> oJ;
    private ba Pfn;
    private String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f12685ba;
    private ba ex;
    private String tB;

    static {
        HashMap hashMap = new HashMap();
        oJ = hashMap;
        hashMap.put("root", 8);
        hashMap.put("footer", 6);
        hashMap.put("empty", 6);
        hashMap.put("title", 0);
        hashMap.put(MediaFormat.KEY_SUBTITLE, 0);
        hashMap.put("source", 0);
        hashMap.put("score-count", 0);
        hashMap.put("text_star", 0);
        hashMap.put(MimeTypes.BASE_TYPE_TEXT, 0);
        hashMap.put("tag-group", 17);
        hashMap.put("app-version", 0);
        hashMap.put("development-name", 0);
        hashMap.put("privacy-detail", 23);
        hashMap.put("image", 1);
        hashMap.put("image-wide", 1);
        hashMap.put("image-square", 1);
        hashMap.put("image-long", 1);
        hashMap.put("image-splash", 1);
        hashMap.put("image-cover", 1);
        hashMap.put("app-icon", 1);
        hashMap.put("icon-download", 1);
        hashMap.put("logoad", 4);
        hashMap.put("logounion", 5);
        hashMap.put("logo-union", 9);
        hashMap.put("dislike", 3);
        hashMap.put("close", 3);
        hashMap.put("close-fill", 3);
        hashMap.put("webview-close", 22);
        hashMap.put("feedback-dislike", 12);
        hashMap.put("button", 2);
        hashMap.put("downloadWithIcon", 2);
        hashMap.put("downloadButton", 2);
        hashMap.put("fillButton", 2);
        hashMap.put("laceButton", 2);
        hashMap.put("cardButton", 2);
        hashMap.put("colourMixtureButton", 2);
        hashMap.put("arrowButton", 1);
        hashMap.put("download-progress-button", 2);
        hashMap.put("vessel", 6);
        hashMap.put("image-group", 6);
        hashMap.put("custom-component-vessel", 6);
        hashMap.put("carousel", 24);
        hashMap.put("carousel-vessel", 26);
        hashMap.put("leisure-interact", 25);
        hashMap.put("video-hd", 7);
        hashMap.put("video", 7);
        hashMap.put("video-vd", 7);
        hashMap.put("video-sq", 7);
        hashMap.put("muted", 10);
        hashMap.put("star", 11);
        hashMap.put("skip-countdowns", 19);
        hashMap.put("skip-with-countdowns-skip-btn", 21);
        hashMap.put("skip-with-countdowns-video-countdown", 13);
        hashMap.put("skip-with-countdowns-skip-countdown", 20);
        hashMap.put("skip-with-time", 14);
        hashMap.put("skip-with-time-countdown", 13);
        hashMap.put("skip-with-time-skip-btn", 15);
        hashMap.put("skip", 27);
        hashMap.put("timedown", 13);
        hashMap.put("icon", 16);
        hashMap.put("scoreCountWithIcon", 6);
        hashMap.put("split-line", 18);
        hashMap.put("creative-playable-bait", 0);
        hashMap.put("score-count-type-2", 0);
        hashMap.put("lottie", 28);
    }

    public ba Pfn() {
        return this.ex;
    }

    public String ZYk() {
        return this.ZYk;
    }

    public int ba() {
        return this.ex.EP();
    }

    public ba cFZ() {
        return this.Pfn;
    }

    public String ex() {
        return this.f12685ba;
    }

    public int oJ() {
        if (TextUtils.isEmpty(this.ZYk)) {
            return 0;
        }
        if (this.ZYk.equals("logo")) {
            String str = this.ZYk + this.tB;
            this.ZYk = str;
            if (str.contains("logoad")) {
                return 4;
            }
            if (this.ZYk.contains("logounion")) {
                return 5;
            }
        }
        Map<String, Integer> map = oJ;
        if (map.get(this.ZYk) != null) {
            return map.get(this.ZYk).intValue();
        }
        return -1;
    }

    public String tB() {
        return this.tB;
    }

    public String toString() {
        return "DynamicLayoutBrick{type='" + this.ZYk + "', data='" + this.tB + "', value=" + this.ex + ", themeValue=" + this.Pfn + ", dataExtraInfo='" + this.f12685ba + "'}";
    }

    public void ZYk(String str) {
        this.tB = str;
    }

    public void tB(String str) {
        this.f12685ba = str;
    }

    public void ZYk(ba baVar) {
        this.Pfn = baVar;
    }

    public void oJ(String str) {
        this.ZYk = str;
    }

    public void oJ(ba baVar) {
        this.ex = baVar;
    }
}
