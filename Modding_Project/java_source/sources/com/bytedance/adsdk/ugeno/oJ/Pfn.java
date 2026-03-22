package com.bytedance.adsdk.ugeno.oJ;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.texturerender.TextureRenderKeys;
/* loaded from: classes3.dex */
public enum Pfn {
    TRANSLATE("translate", "translation", "point"),
    TRANSLATE_X("translateX", "translationX", TypedValues.Custom.S_FLOAT),
    TRANSLATE_Y("translateY", "translationY", TypedValues.Custom.S_FLOAT),
    ROTATE_X("rotateX", "rotationX", TypedValues.Custom.S_FLOAT),
    ROTATE_Y("rotateY", "rotationY", TypedValues.Custom.S_FLOAT),
    ROTATE_Z("rotateZ", "rotation", TypedValues.Custom.S_FLOAT),
    SCALE(TextureRenderKeys.KEY_IS_SCALE, TextureRenderKeys.KEY_IS_SCALE, "point"),
    SCALE_X("scaleX", "scaleX", TypedValues.Custom.S_FLOAT),
    SCALE_Y("scaleY", "scaleY", TypedValues.Custom.S_FLOAT),
    ALPHA("opacity", "alpha", TypedValues.Custom.S_FLOAT),
    BACKGROUND_COLOR(TtmlNode.ATTR_TTS_BACKGROUND_COLOR, TtmlNode.ATTR_TTS_BACKGROUND_COLOR, "int"),
    BORDER_RADIUS("borderRadius", "borderRadius", TypedValues.Custom.S_FLOAT),
    RIPPLE("ripple", "ripple", TypedValues.Custom.S_FLOAT),
    SHINE("shine", "shine", TypedValues.Custom.S_FLOAT);
    
    private final String awB;
    private final String eZI;

    /* renamed from: si  reason: collision with root package name */
    private final String f11696si;

    Pfn(String str, String str2, String str3) {
        this.awB = str;
        this.eZI = str2;
        this.f11696si = str3;
    }

    public String ZYk() {
        return this.eZI;
    }

    public String oJ() {
        return this.awB;
    }

    public String tB() {
        return this.f11696si;
    }

    public static Pfn oJ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1721943862:
                if (str.equals("translateX")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1721943861:
                if (str.equals("translateY")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1267206133:
                if (str.equals("opacity")) {
                    c10 = 2;
                    break;
                }
                break;
            case -930826704:
                if (str.equals("ripple")) {
                    c10 = 3;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c10 = 4;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c10 = 5;
                    break;
                }
                break;
            case 109250890:
                if (str.equals(TextureRenderKeys.KEY_IS_SCALE)) {
                    c10 = 6;
                    break;
                }
                break;
            case 1052832078:
                if (str.equals("translate")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1287124693:
                if (str.equals(TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1349188574:
                if (str.equals("borderRadius")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 1384173149:
                if (str.equals("rotateX")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1384173150:
                if (str.equals("rotateY")) {
                    c10 = 11;
                    break;
                }
                break;
            case 1384173151:
                if (str.equals("rotateZ")) {
                    c10 = '\f';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return TRANSLATE_X;
            case 1:
                return TRANSLATE_Y;
            case 2:
                return ALPHA;
            case 3:
                return RIPPLE;
            case 4:
                return SCALE_X;
            case 5:
                return SCALE_Y;
            case 6:
                return SCALE;
            case 7:
                return TRANSLATE;
            case '\b':
                return BACKGROUND_COLOR;
            case '\t':
                return BORDER_RADIUS;
            case '\n':
                return ROTATE_X;
            case 11:
                return ROTATE_Y;
            case '\f':
                return ROTATE_Z;
            default:
                return TRANSLATE_X;
        }
    }
}
