package com.startshorts.androidplayer.manager.shorts.feature;

import androidx.startup.AppInitializer;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.jiuzhou.cdn.model.request.CdnEventValue;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.bean.player.PlayerHeaderInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.manager.player.cdn.CdnEventManager;
import com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature;
import com.startshorts.androidplayer.startup.NetworkInitializer;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.u;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.k;
/* compiled from: CDNFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b implements IShortsFeature {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CdnEventManager f42971a = new CdnEventManager();

    /* renamed from: b  reason: collision with root package name */
    private long f42972b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f42973c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f42974d = -1;

    /* compiled from: CDNFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IShortsFeature.MessageType.values().length];
            try {
                iArr[IShortsFeature.MessageType.PLAY_EPISODE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IShortsFeature.MessageType.PLAY_EPISODE_END.ordinal()] = 2;
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
                iArr[IShortsFeature.MessageType.PLAYER_BUFFER_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[IShortsFeature.MessageType.PLAYER_ERROR_HEADERS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[IShortsFeature.MessageType.PLAYER_ERROR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[IShortsFeature.MessageType.PLAYER_COMPLETE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[IShortsFeature.MessageType.SEEKBAR_START_TOUCH.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final String b(int i10, int i11) {
        if (i10 == 1) {
            if (i11 != 1) {
                if (i11 != 2) {
                    return CdnEventValue.VALUE_PLAY;
                }
                return CdnEventValue.VALUE_SWITCH;
            }
            return CdnEventValue.VALUE_SEEK;
        }
        return CdnEventValue.VALUE_FIRST_FRAME;
    }

    private final String d() {
        NetworkInitializer networkInitializer;
        Object initializeComponent = AppInitializer.getInstance(u.f51776a.b()).initializeComponent(NetworkInitializer.class);
        String str = null;
        if (initializeComponent instanceof NetworkInitializer) {
            networkInitializer = (NetworkInitializer) initializeComponent;
        } else {
            networkInitializer = null;
        }
        if (networkInitializer != null) {
            str = networkInitializer.j();
        }
        if (str == null || str.length() == 0) {
            str = DeviceUtil.f48146a.A();
        }
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != -1068855134) {
                if (hashCode != -1040310753) {
                    if (hashCode == 3649301 && str.equals("wifi")) {
                        return "wifi";
                    }
                    return str;
                } else if (str.equals("no_net")) {
                    return "no_network";
                } else {
                    return str;
                }
            } else if (str.equals("mobile")) {
                return "cellular";
            } else {
                return str;
            }
        }
        return str;
    }

    private final PlayResolution e(BaseEpisode baseEpisode) {
        if (k.f64864a.s() && baseEpisode.contains1080pUrl()) {
            return PlayResolution.Companion.getPLAY_RESOLUTION_1080P();
        }
        if (baseEpisode.contains720pUrl()) {
            return PlayResolution.Companion.getPLAY_RESOLUTION_720P();
        }
        return PlayResolution.Companion.getPLAY_RESOLUTION_480P();
    }

    private final void f() {
        this.f42972b = -1L;
        this.f42973c = -1;
        this.f42974d = -1;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void a(@NotNull i message) {
        Object obj;
        BaseEpisode baseEpisode;
        int i10;
        Object obj2;
        long j10;
        Object obj3;
        Integer num;
        int i11;
        Object obj4;
        ShortsEpisode c10;
        Object obj5;
        String str;
        ShortsEpisode c11;
        Intrinsics.checkNotNullParameter(message, "message");
        Integer num2 = null;
        String str2 = null;
        PlayerHeaderInfo playerHeaderInfo = null;
        Integer num3 = null;
        Long l10 = null;
        switch (a.$EnumSwitchMapping$0[message.b().ordinal()]) {
            case 1:
                f();
                ShortsEpisode c12 = c(message);
                if (c12 == null) {
                    return;
                }
                if (c12.isAd() && !c12.isBrandVideoAd()) {
                    return;
                }
                this.f42971a.r(c12, e(c12), d());
                return;
            case 2:
                HashMap<String, Object> a10 = message.a();
                if (a10 != null) {
                    obj = a10.get("last_episode");
                } else {
                    obj = null;
                }
                if (obj instanceof ShortsEpisode) {
                    baseEpisode = (ShortsEpisode) obj;
                } else {
                    baseEpisode = null;
                }
                if (baseEpisode == null) {
                    return;
                }
                Object obj6 = message.a().get("real_watch_time");
                if (obj6 instanceof Integer) {
                    num2 = (Integer) obj6;
                }
                if (num2 != null) {
                    i10 = num2.intValue();
                } else {
                    i10 = 0;
                }
                this.f42971a.k(baseEpisode, e(baseEpisode), i10, d());
                return;
            case 3:
                ShortsEpisode c13 = c(message);
                if (c13 == null) {
                    return;
                }
                HashMap<String, Object> a11 = message.a();
                if (a11 != null) {
                    obj2 = a11.get(HiAnalyticsConstant.BI_KEY_COST_TIME);
                } else {
                    obj2 = null;
                }
                if (obj2 instanceof Long) {
                    l10 = (Long) obj2;
                }
                if (l10 != null) {
                    j10 = l10.longValue();
                } else {
                    j10 = 0;
                }
                long j11 = j10;
                if (c13.isAd() && !c13.isBrandVideoAd()) {
                    return;
                }
                this.f42971a.g(c13, e(c13), j11, d());
                return;
            case 4:
                ShortsEpisode c14 = c(message);
                if (c14 == null) {
                    return;
                }
                if (c14.isAd() && !c14.isBrandVideoAd()) {
                    return;
                }
                HashMap<String, Object> a12 = message.a();
                if (a12 != null) {
                    obj3 = a12.get(TextureRenderKeys.KEY_IS_ACTION);
                } else {
                    obj3 = null;
                }
                if (obj3 instanceof Integer) {
                    num = (Integer) obj3;
                } else {
                    num = null;
                }
                if (num != null) {
                    int intValue = num.intValue();
                    Object obj7 = message.a().get("after_first_frame");
                    if (obj7 instanceof Integer) {
                        num3 = (Integer) obj7;
                    }
                    if (num3 != null) {
                        i11 = num3.intValue();
                    } else {
                        i11 = 1;
                    }
                    this.f42972b = DeviceUtil.f48146a.L();
                    this.f42973c = i11;
                    this.f42974d = intValue;
                    this.f42971a.i(c14, e(c14), b(i11, intValue), d());
                    return;
                }
                return;
            case 5:
                ShortsEpisode c15 = c(message);
                if (c15 == null) {
                    return;
                }
                if (this.f42972b != -1) {
                    this.f42971a.h(c15, e(c15), DeviceUtil.f48146a.L() - this.f42972b, b(this.f42973c, this.f42974d), d());
                }
                f();
                return;
            case 6:
                HashMap<String, Object> a13 = message.a();
                if (a13 != null) {
                    obj4 = a13.get("error_header_info");
                } else {
                    obj4 = null;
                }
                if (obj4 instanceof PlayerHeaderInfo) {
                    playerHeaderInfo = (PlayerHeaderInfo) obj4;
                }
                if (playerHeaderInfo == null || (c10 = c(message)) == null) {
                    return;
                }
                this.f42971a.l(playerHeaderInfo, c10, e(c10), d());
                return;
            case 7:
                f();
                HashMap<String, Object> a14 = message.a();
                if (a14 != null) {
                    obj5 = a14.get("err_code");
                } else {
                    obj5 = null;
                }
                if (obj5 instanceof String) {
                    str = (String) obj5;
                } else {
                    str = null;
                }
                if (str == null || (c11 = c(message)) == null) {
                    return;
                }
                Object obj8 = message.a().get("err_msg");
                if (obj8 instanceof String) {
                    str2 = (String) obj8;
                }
                this.f42971a.m(c11, e(c11), str, str2, d());
                return;
            case 8:
                ShortsEpisode c16 = c(message);
                if (c16 == null) {
                    return;
                }
                this.f42971a.j(c16, e(c16), d());
                return;
            case 9:
                ShortsEpisode c17 = c(message);
                if (c17 == null) {
                    return;
                }
                this.f42971a.q(c17, e(c17), d());
                return;
            default:
                return;
        }
    }

    @Nullable
    public ShortsEpisode c(@NotNull i iVar) {
        return IShortsFeature.a.a(this, iVar);
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    @NotNull
    public IShortsFeature.FeatureType type() {
        return IShortsFeature.FeatureType.CDN;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void release() {
    }
}
