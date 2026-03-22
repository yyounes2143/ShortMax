package com.startshorts.androidplayer.manager.shorts.feature;

import android.os.Bundle;
import com.bytedance.vodsetting.Module;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature;
import com.startshorts.androidplayer.ui.view.seekbar.DiscreteSeekBar;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.k;
/* compiled from: EventFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class d implements IShortsFeature {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f42976b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private int f42977a = -1;

    /* compiled from: EventFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: EventFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IShortsFeature.MessageType.values().length];
            try {
                iArr[IShortsFeature.MessageType.SEEKBAR_START_TOUCH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IShortsFeature.MessageType.SEEKBAR_STOP_TOUCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IShortsFeature.MessageType.PLAYER_RENDER_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IShortsFeature.MessageType.PLAYER_BUFFER_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[IShortsFeature.MessageType.PLAYER_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final String b(BaseEpisode baseEpisode) {
        if (baseEpisode == null) {
            return "";
        }
        if (k.f64864a.s() && baseEpisode.contains1080pUrl()) {
            return "1080p";
        }
        if (baseEpisode.contains720pUrl()) {
            return "720p";
        }
        return "480p";
    }

    private final String c(String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        if (StringsKt.b0(str, "_720", false, 2, null)) {
            return "720p";
        }
        if (StringsKt.b0(str, "_1080p", false, 2, null)) {
            return "1080p";
        }
        if (!StringsKt.b0(str, "_480p", false, 2, null)) {
            return "";
        }
        return "480p";
    }

    private final String e(BaseEpisode baseEpisode) {
        int i10;
        if (baseEpisode == null) {
            return "";
        }
        if (k.f64864a.s() && baseEpisode.contains1080pUrl()) {
            i10 = 1080;
        } else if (baseEpisode.contains720pUrl()) {
            i10 = 720;
        } else {
            i10 = 480;
        }
        String parseVideoUrl = baseEpisode.parseVideoUrl(i10);
        if (parseVideoUrl == null) {
            return "";
        }
        return parseVideoUrl;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void a(@NotNull i message) {
        Object obj;
        Object obj2;
        int i10;
        Object obj3;
        long j10;
        String c10;
        Object obj4;
        Integer num;
        Object obj5;
        Integer num2;
        Object obj6;
        Integer num3;
        String c11;
        Object obj7;
        String str;
        String c12;
        Intrinsics.checkNotNullParameter(message, "message");
        int i11 = b.$EnumSwitchMapping$0[message.b().ordinal()];
        int i12 = 1;
        int i13 = -1;
        DiscreteSeekBar discreteSeekBar = null;
        ShortsEpisode shortsEpisode = null;
        ShortsEpisode shortsEpisode2 = null;
        Long l10 = null;
        DiscreteSeekBar discreteSeekBar2 = null;
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        if (i11 == 5) {
                            HashMap<String, Object> a10 = message.a();
                            if (a10 != null) {
                                obj7 = a10.get("err_code");
                            } else {
                                obj7 = null;
                            }
                            if (obj7 instanceof String) {
                                str = (String) obj7;
                            } else {
                                str = null;
                            }
                            ShortsEpisode d10 = d(message);
                            if ((Intrinsics.areEqual(str, "-9999") || Intrinsics.areEqual(str, "-1")) && d10 != null && !d10.isAd()) {
                                ud.b.f68412a.E3(d10.getId(), 0);
                                ud.a.f68411a.k0(d10.getId(), 0);
                            }
                            String e10 = e(d10);
                            if (d10 != null && d10.getNeedDecrypt()) {
                                c12 = b(d10);
                            } else {
                                c12 = c(e10);
                            }
                            Logger.f41511a.e("EventFeature", "onError -> playErrorUrl(" + e10 + ") clarity(" + c12 + ')');
                            EventManager eventManager = EventManager.f42463a;
                            if (d10 == null || !d10.isAd()) {
                                shortsEpisode = d10;
                            }
                            Bundle C = eventManager.C(shortsEpisode);
                            C.putString("scene", "shorts");
                            C.putString("err_msg", str);
                            C.putString(CampaignEx.JSON_KEY_VIDEO_URL, e10);
                            C.putString("clarity_level", c12);
                            C.putString("userNetworkType", DeviceUtil.f48146a.A());
                            Unit unit = Unit.f60915a;
                            EventManager.s0(eventManager, "reel_play_fail", C, 0L, 4, null);
                            return;
                        }
                        return;
                    }
                    ShortsEpisode d11 = d(message);
                    HashMap<String, Object> a11 = message.a();
                    if (a11 != null) {
                        obj4 = a11.get(Module.ResponseKey.Code);
                    } else {
                        obj4 = null;
                    }
                    if (obj4 instanceof Integer) {
                        num = (Integer) obj4;
                    } else {
                        num = null;
                    }
                    HashMap<String, Object> a12 = message.a();
                    if (a12 != null) {
                        obj5 = a12.get("after_first_frame");
                    } else {
                        obj5 = null;
                    }
                    if (obj5 instanceof Integer) {
                        num2 = (Integer) obj5;
                    } else {
                        num2 = null;
                    }
                    HashMap<String, Object> a13 = message.a();
                    if (a13 != null) {
                        obj6 = a13.get(TextureRenderKeys.KEY_IS_ACTION);
                    } else {
                        obj6 = null;
                    }
                    if (obj6 instanceof Integer) {
                        num3 = (Integer) obj6;
                    } else {
                        num3 = null;
                    }
                    if (d11 != null && num != null && num3 != null) {
                        if (d11.getNeedDecrypt()) {
                            c11 = b(d11);
                        } else {
                            c11 = c(e(d11));
                        }
                        EventManager eventManager2 = EventManager.f42463a;
                        if (!d11.isAd()) {
                            shortsEpisode2 = d11;
                        }
                        Bundle C2 = eventManager2.C(shortsEpisode2);
                        C2.putInt(Module.ResponseKey.Code, num.intValue());
                        if (num2 != null) {
                            i13 = num2.intValue();
                        }
                        C2.putInt("after_first_frame", i13);
                        C2.putInt(TextureRenderKeys.KEY_IS_ACTION, num3.intValue());
                        C2.putString("clarity_level", c11);
                        C2.putString("scene", "shorts");
                        Unit unit2 = Unit.f60915a;
                        EventManager.s0(eventManager2, "reel_play_buffering", C2, 0L, 4, null);
                        return;
                    }
                    Logger.f41511a.e("EventFeature", "notify -> episode or code or afterFirstFrame or action is null");
                    return;
                }
                ShortsEpisode d12 = d(message);
                if (d12 == null || d12.isAd()) {
                    return;
                }
                HashMap<String, Object> a14 = message.a();
                if (a14 != null) {
                    obj3 = a14.get(HiAnalyticsConstant.BI_KEY_COST_TIME);
                } else {
                    obj3 = null;
                }
                if (obj3 instanceof Long) {
                    l10 = (Long) obj3;
                }
                if (l10 != null) {
                    j10 = l10.longValue();
                } else {
                    j10 = 0;
                }
                if (d12.getNeedDecrypt()) {
                    c10 = b(d12);
                } else {
                    c10 = c(e(d12));
                }
                EventManager eventManager3 = EventManager.f42463a;
                Bundle C3 = eventManager3.C(d12);
                C3.putString(CrashHianalyticsData.TIME, String.valueOf(j10));
                C3.putString("clarity_level", c10);
                C3.putString("scene", "shorts");
                Unit unit3 = Unit.f60915a;
                EventManager.s0(eventManager3, "initial_loading_time", C3, 0L, 4, null);
                return;
            } else if (this.f42977a == -1) {
                return;
            } else {
                HashMap<String, Object> a15 = message.a();
                if (a15 != null) {
                    obj2 = a15.get("seekbar");
                } else {
                    obj2 = null;
                }
                if (obj2 instanceof DiscreteSeekBar) {
                    discreteSeekBar2 = (DiscreteSeekBar) obj2;
                }
                if (discreteSeekBar2 != null) {
                    i10 = discreteSeekBar2.getProgress();
                } else {
                    i10 = -1;
                }
                ShortsEpisode d13 = d(message);
                Logger.f41511a.h("EventFeature", "stopTouch -> " + i10 + "ms");
                if (i10 != -1 && d13 != null) {
                    if (i10 >= this.f42977a) {
                        i12 = 0;
                    }
                    EventManager eventManager4 = EventManager.f42463a;
                    Bundle C4 = eventManager4.C(d13);
                    C4.putString("scene", "shorts");
                    TimeUtil timeUtil = TimeUtil.f48175a;
                    C4.putString("drag_start_time", timeUtil.c(this.f42977a / 1000, false));
                    Unit unit4 = Unit.f60915a;
                    EventManager.s0(eventManager4, "video_drag_start", C4, 0L, 4, null);
                    Bundle C5 = eventManager4.C(d13);
                    C5.putString("scene", "shorts");
                    C5.putString("drag_end_time", timeUtil.c(i10 / 1000, false));
                    C5.putString("drag_duration", String.valueOf(Math.abs(i10 - this.f42977a) / 1000));
                    C5.putString("is_rewind", String.valueOf(i12));
                    EventManager.s0(eventManager4, "video_drag_end", C5, 0L, 4, null);
                    this.f42977a = -1;
                    return;
                }
                this.f42977a = -1;
                return;
            }
        }
        if (this.f42977a == -1) {
            HashMap<String, Object> a16 = message.a();
            if (a16 != null) {
                obj = a16.get("seekbar");
            } else {
                obj = null;
            }
            if (obj instanceof DiscreteSeekBar) {
                discreteSeekBar = (DiscreteSeekBar) obj;
            }
            if (discreteSeekBar != null) {
                i13 = discreteSeekBar.getProgress();
            }
            this.f42977a = i13;
        }
        Logger.f41511a.h("EventFeature", "startTouch -> " + this.f42977a + "ms");
    }

    @Nullable
    public ShortsEpisode d(@NotNull i iVar) {
        return IShortsFeature.a.a(this, iVar);
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    @NotNull
    public IShortsFeature.FeatureType type() {
        return IShortsFeature.FeatureType.EVENT;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void release() {
    }
}
