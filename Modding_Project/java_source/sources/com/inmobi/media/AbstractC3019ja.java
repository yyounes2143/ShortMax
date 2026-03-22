package com.inmobi.media;

import com.iab.omid.library.inmobi.adsession.AdSessionContext;
import com.iab.omid.library.inmobi.adsession.ImpressionType;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.ja  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3019ja {
    public static C2971ga a(String creativeType, GestureDetector$OnGestureListenerC2941ec webView, boolean z10, String str, byte b10, String str2) {
        AdSessionContext adSessionContext;
        ImpressionType impressionType;
        Intrinsics.checkNotNullParameter(creativeType, "creativeType");
        if (webView != null) {
            C3099oa c3099oa = AbstractC3083na.f25061a;
            c3099oa.getClass();
            Intrinsics.checkNotNullParameter(webView, "webView");
            adSessionContext = AdSessionContext.createHtmlAdSessionContext(c3099oa.f25122b, webView, str, str2);
            Intrinsics.checkNotNullExpressionValue(adSessionContext, "createHtmlAdSessionContext(...)");
        } else {
            adSessionContext = null;
        }
        if (b10 == 1) {
            impressionType = ImpressionType.DEFINED_BY_JAVASCRIPT;
        } else if (b10 == 2) {
            impressionType = ImpressionType.UNSPECIFIED;
        } else if (b10 == 3) {
            impressionType = ImpressionType.LOADED;
        } else if (b10 == 4) {
            impressionType = ImpressionType.BEGIN_TO_RENDER;
        } else if (b10 == 5) {
            impressionType = ImpressionType.ONE_PIXEL;
        } else if (b10 == 6) {
            impressionType = ImpressionType.VIEWABLE;
        } else if (b10 == 7) {
            impressionType = ImpressionType.AUDIBLE;
        } else if (b10 == 0) {
            impressionType = ImpressionType.OTHER;
        } else {
            impressionType = ImpressionType.OTHER;
        }
        int hashCode = creativeType.hashCode();
        if (hashCode != -284840886) {
            if (hashCode != 93166550) {
                if (hashCode != 112202875) {
                    if (hashCode == 1425678798 && creativeType.equals("nonvideo")) {
                        return new C2971ga("html_display_ad", impressionType, adSessionContext, false);
                    }
                } else if (creativeType.equals("video")) {
                    return new C2971ga("html_video_ad", impressionType, adSessionContext, z10);
                }
            } else if (creativeType.equals("audio")) {
                return new C2971ga("html_audio_ad", impressionType, adSessionContext, z10);
            }
        } else if (creativeType.equals("unknown")) {
            Intrinsics.checkNotNullExpressionValue("ka", "access$getTAG$cp(...)");
            return null;
        }
        Intrinsics.checkNotNullExpressionValue("ka", "access$getTAG$cp(...)");
        return null;
    }
}
