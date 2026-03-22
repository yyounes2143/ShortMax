package com.inmobi.media;

import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.inmobi.adsession.AdEvents;
import com.iab.omid.library.inmobi.adsession.AdSession;
import com.iab.omid.library.inmobi.adsession.AdSessionConfiguration;
import com.iab.omid.library.inmobi.adsession.AdSessionContext;
import com.iab.omid.library.inmobi.adsession.CreativeType;
import com.iab.omid.library.inmobi.adsession.ErrorType;
import com.iab.omid.library.inmobi.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.inmobi.adsession.ImpressionType;
import com.iab.omid.library.inmobi.adsession.Owner;
import com.iab.omid.library.inmobi.adsession.media.InteractionType;
import com.iab.omid.library.inmobi.adsession.media.MediaEvents;
import com.iab.omid.library.inmobi.adsession.media.PlayerState;
import com.iab.omid.library.inmobi.adsession.media.VastProperties;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.ga  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C2971ga {

    /* renamed from: a  reason: collision with root package name */
    public final String f24771a;

    /* renamed from: b  reason: collision with root package name */
    public final ImpressionType f24772b;

    /* renamed from: c  reason: collision with root package name */
    public AdSessionContext f24773c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f24774d;

    /* renamed from: e  reason: collision with root package name */
    public byte f24775e;

    /* renamed from: f  reason: collision with root package name */
    public AdSession f24776f;

    /* renamed from: g  reason: collision with root package name */
    public C3247y f24777g;

    public C2971ga(String mAdSessionType, ImpressionType impressionType, AdSessionContext adSessionContext, boolean z10) {
        Intrinsics.checkNotNullParameter(mAdSessionType, "mAdSessionType");
        Intrinsics.checkNotNullParameter(impressionType, "impressionType");
        this.f24771a = mAdSessionType;
        this.f24772b = impressionType;
        this.f24773c = adSessionContext;
        this.f24774d = z10;
    }

    public static boolean a(byte b10, byte b11) {
        if (b10 == b11) {
            return true;
        }
        S5 s52 = S5.f24132a;
        C2947f2 event = new C2947f2(new Exception("Omid AdSession State Error currentState :: " + ((int) b10) + ", expectedState :: " + ((int) b11)));
        Intrinsics.checkNotNullParameter(event, "event");
        S5.f24135d.a(event);
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void a(View view, Map map, View view2) {
        AdSession adSession;
        CreativeType creativeType;
        Owner owner;
        CreativeType creativeType2;
        Intrinsics.checkNotNullParameter(view, "trackingView");
        if (this.f24776f == null) {
            boolean z10 = this.f24774d;
            Owner owner2 = Owner.JAVASCRIPT;
            CreativeType creativeType3 = CreativeType.DEFINED_BY_JAVASCRIPT;
            String str = this.f24771a;
            switch (str.hashCode()) {
                case -2139264536:
                    if (str.equals("native_display_ad")) {
                        owner2 = Owner.NATIVE;
                        owner = Owner.NONE;
                        creativeType = CreativeType.NATIVE_DISPLAY;
                        break;
                    }
                    creativeType = creativeType3;
                    owner = null;
                    break;
                case -1329992236:
                    if (str.equals("html_display_ad")) {
                        owner = Owner.NONE;
                        creativeType = CreativeType.HTML_DISPLAY;
                        break;
                    }
                    creativeType = creativeType3;
                    owner = null;
                    break;
                case -1191784049:
                    if (str.equals("native_video_ad")) {
                        owner2 = Owner.NATIVE;
                        creativeType2 = CreativeType.VIDEO;
                        creativeType = creativeType2;
                        owner = owner2;
                        break;
                    }
                    creativeType = creativeType3;
                    owner = null;
                    break;
                case 363190080:
                    if (str.equals("html_audio_ad")) {
                        creativeType2 = CreativeType.AUDIO;
                        creativeType = creativeType2;
                        owner = owner2;
                        break;
                    }
                    creativeType = creativeType3;
                    owner = null;
                    break;
                case 538665083:
                    if (str.equals("html_video_ad")) {
                        creativeType2 = CreativeType.VIDEO;
                        creativeType = creativeType2;
                        owner = owner2;
                        break;
                    }
                    creativeType = creativeType3;
                    owner = null;
                    break;
                default:
                    creativeType = creativeType3;
                    owner = null;
                    break;
            }
            AdSession createAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(creativeType, this.f24772b, owner2, owner, z10), this.f24773c);
            Intrinsics.checkNotNullExpressionValue(createAdSession, "createAdSession(...)");
            this.f24776f = createAdSession;
            if (createAdSession != null) {
                this.f24777g = new C3247y(createAdSession, this.f24771a);
                this.f24775e = (byte) 1;
            }
        }
        Intrinsics.checkNotNullParameter(view, "view");
        if (a(this.f24775e, (byte) 1) && (adSession = this.f24776f) != null) {
            adSession.registerAdView(view);
        }
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                a((View) entry.getKey(), (FriendlyObstructionPurpose) entry.getValue());
            }
        }
        if (view2 != null && (view2 instanceof ViewGroup)) {
            a(view, map, (ViewGroup) view2);
        }
        if (a(this.f24775e, (byte) 1)) {
            AdSession adSession2 = this.f24776f;
            if (adSession2 != null) {
                adSession2.start();
            }
            this.f24775e = (byte) 2;
        }
    }

    public final void a(int i10, int i11, float f10, VastProperties vastProps) {
        C3247y c3247y;
        AdEvents adEvents;
        AdSession adSession;
        Intrinsics.checkNotNullParameter(vastProps, "vastProperties");
        if (a(this.f24775e, (byte) 2)) {
            byte b10 = (byte) i10;
            if (b10 == 17) {
                ErrorType errorType = ErrorType.VIDEO;
                Intrinsics.checkNotNullParameter(errorType, "errorType");
                Intrinsics.checkNotNullParameter("Unknown Player error", "errorMsg");
                if (a(this.f24775e, (byte) 2) && (adSession = this.f24776f) != null) {
                    adSession.error(errorType, "Unknown Player error");
                }
            } else if (b10 == 0 && (c3247y = this.f24777g) != null && (adEvents = c3247y.f25441a) != null) {
                adEvents.impressionOccurred();
            }
            C3247y c3247y2 = this.f24777g;
            if (c3247y2 != null) {
                Intrinsics.checkNotNullParameter(vastProps, "vastProps");
                MediaEvents mediaEvents = c3247y2.f25442b;
                if (mediaEvents == null) {
                    return;
                }
                if (b10 == 7) {
                    mediaEvents.pause();
                } else if (b10 == 5) {
                    AdEvents adEvents2 = c3247y2.f25441a;
                    if (adEvents2 != null) {
                        adEvents2.loaded(vastProps);
                    }
                } else if (b10 == 6) {
                    mediaEvents.start(i11, f10);
                } else if (b10 == 8 || b10 == 16) {
                    mediaEvents.resume();
                } else if (b10 == 15) {
                    mediaEvents.skipped();
                } else if (b10 == 9) {
                    mediaEvents.firstQuartile();
                } else if (b10 == 10) {
                    mediaEvents.midpoint();
                } else if (b10 == 11) {
                    mediaEvents.thirdQuartile();
                } else if (b10 == 12) {
                    mediaEvents.complete();
                } else if (b10 == 13) {
                    mediaEvents.volumeChange(0.0f);
                } else if (b10 == 14) {
                    mediaEvents.volumeChange(f10);
                } else if (b10 == 1) {
                    mediaEvents.playerStateChange(PlayerState.FULLSCREEN);
                } else if (b10 == 2) {
                    mediaEvents.playerStateChange(PlayerState.NORMAL);
                } else if (b10 == 4) {
                    mediaEvents.adUserInteraction(InteractionType.CLICK);
                } else if (b10 == 18) {
                    mediaEvents.adUserInteraction(InteractionType.INVITATION_ACCEPTED);
                }
            }
        }
    }

    public final void a(View childView, FriendlyObstructionPurpose obstructionCode) {
        Intrinsics.checkNotNullParameter(childView, "childView");
        Intrinsics.checkNotNullParameter(obstructionCode, "obstructionCode");
        byte b10 = this.f24775e;
        if (b10 > 0) {
            AdSession adSession = this.f24776f;
            if (adSession != null) {
                adSession.addFriendlyObstruction(childView, obstructionCode, null);
                return;
            }
            return;
        }
        S5 s52 = S5.f24132a;
        C2947f2 event = new C2947f2(new Exception("Omid AdSession State Error currentState :: " + ((int) b10) + ", expectedState :: 1"));
        Intrinsics.checkNotNullParameter(event, "event");
        S5.f24135d.a(event);
    }

    public final void a(View view, Map map, ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (!Intrinsics.areEqual(childAt, view)) {
                if (map == null || !map.containsKey(childAt)) {
                    Intrinsics.checkNotNull(childAt);
                    a(childAt, FriendlyObstructionPurpose.OTHER);
                }
                if (childAt instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) childAt;
                    if (viewGroup2.getChildCount() > 0) {
                        a(view, map, viewGroup2);
                    }
                }
            }
        }
    }
}
