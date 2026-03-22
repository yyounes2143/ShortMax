package com.startshorts.androidplayer.manager.immersion.feature;

import androidx.startup.AppInitializer;
import com.jiuzhou.cdn.model.request.CdnEventValue;
import com.ss.ttvideoengine.Resolution;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlayResolution;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.manager.player.cdn.CdnEventManager;
import com.startshorts.androidplayer.startup.NetworkInitializer;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CDNFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b implements IImmersionFeature {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final CdnEventManager f42595a = new CdnEventManager();

    /* renamed from: b  reason: collision with root package name */
    private long f42596b = -1;

    /* renamed from: c  reason: collision with root package name */
    private int f42597c = -1;

    /* renamed from: d  reason: collision with root package name */
    private int f42598d = -1;

    /* compiled from: CDNFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.PLAY_EPISODE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_RELEASE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAY_EPISODE_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_RENDER_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_BUFFER_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_BUFFER_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_ERROR_HEADERS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_RESOLUTION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_COMPLETE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SEEKBAR_START_TOUCH.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final Resolution b(Integer num) {
        if (num != null && num.intValue() == 480) {
            return Resolution.High;
        }
        if (num != null && num.intValue() == 720) {
            return Resolution.SuperHigh;
        }
        if (num != null && num.intValue() == 1080) {
            return Resolution.ExtremelyHigh;
        }
        return null;
    }

    private final String c(int i10, int i11) {
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

    private final String e() {
        NetworkInitializer networkInitializer;
        Object initializeComponent = AppInitializer.getInstance(fk.u.f51776a.b()).initializeComponent(NetworkInitializer.class);
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

    private final void h() {
        this.f42596b = -1L;
        this.f42597c = -1;
        this.f42598d = -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:180:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0128  */
    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(@org.jetbrains.annotations.NotNull com.startshorts.androidplayer.manager.immersion.feature.k r19) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.immersion.feature.b.a(com.startshorts.androidplayer.manager.immersion.feature.k):void");
    }

    @Nullable
    public BaseEpisode d(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    @Nullable
    public PlayResolution f(@NotNull k kVar) {
        return IImmersionFeature.a.d(this, kVar);
    }

    @Nullable
    public Resolution g(@NotNull k kVar) {
        return IImmersionFeature.a.e(this, kVar);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.CDN;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
