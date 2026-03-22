package io.bidmachine;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.banner.BannerSize;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum Banner uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes7.dex */
public final class AdsFormat {
    private static final /* synthetic */ AdsFormat[] $VALUES;
    public static final AdsFormat Banner;
    public static final AdsFormat Banner_300x250;
    public static final AdsFormat Banner_320x50;
    public static final AdsFormat Banner_728x90;
    public static final AdsFormat Interstitial;
    public static final AdsFormat InterstitialStatic;
    public static final AdsFormat InterstitialVideo;
    public static final AdsFormat Native;
    public static final AdsFormat Rewarded;
    public static final AdsFormat RewardedStatic;
    public static final AdsFormat RewardedVideo;
    @NonNull
    private final l matcher;
    @Nullable
    private final AdsFormat parent;
    @NonNull
    private final String remoteName;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes7.dex */
    public static abstract class l<T extends xq.d> {
        @NonNull

        /* renamed from: a  reason: collision with root package name */
        private final AdsType f53533a;

        l(@NonNull AdsType adsType) {
            this.f53533a = adsType;
        }

        final boolean b(@NonNull AdsType adsType, @NonNull T t10, @NonNull AdContentType adContentType) {
            if (adsType == this.f53533a && c(t10, adContentType)) {
                return true;
            }
            return false;
        }

        abstract boolean c(@NonNull T t10, @NonNull AdContentType adContentType);
    }

    private static /* synthetic */ AdsFormat[] $values() {
        return new AdsFormat[]{Banner, Banner_320x50, Banner_300x250, Banner_728x90, Interstitial, InterstitialVideo, InterstitialStatic, Rewarded, RewardedVideo, RewardedStatic, Native};
    }

    static {
        AdsType adsType = AdsType.Banner;
        AdsFormat adsFormat = new AdsFormat("Banner", 0, "banner", null, new l<xq.g>(adsType) { // from class: io.bidmachine.AdsFormat.c
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.AdsFormat.l
            /* renamed from: d */
            public boolean c(@NonNull xq.g gVar, @NonNull AdContentType adContentType) {
                return true;
            }
        });
        Banner = adsFormat;
        Banner_320x50 = new AdsFormat("Banner_320x50", 1, "banner_320x50", adsFormat, new l<xq.g>(adsType) { // from class: io.bidmachine.AdsFormat.d
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.AdsFormat.l
            /* renamed from: d */
            public boolean c(@NonNull xq.g gVar, @NonNull AdContentType adContentType) {
                if (gVar.getAdRequestParameters().b() == BannerSize.Size_320x50) {
                    return true;
                }
                return false;
            }
        });
        Banner_300x250 = new AdsFormat("Banner_300x250", 2, "banner_300x250", adsFormat, new l<xq.g>(adsType) { // from class: io.bidmachine.AdsFormat.e
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.AdsFormat.l
            /* renamed from: d */
            public boolean c(@NonNull xq.g gVar, @NonNull AdContentType adContentType) {
                if (gVar.getAdRequestParameters().b() == BannerSize.Size_300x250) {
                    return true;
                }
                return false;
            }
        });
        Banner_728x90 = new AdsFormat("Banner_728x90", 3, "banner_728x90", adsFormat, new l<xq.g>(adsType) { // from class: io.bidmachine.AdsFormat.f
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.AdsFormat.l
            /* renamed from: d */
            public boolean c(@NonNull xq.g gVar, @NonNull AdContentType adContentType) {
                if (gVar.getAdRequestParameters().b() == BannerSize.Size_728x90) {
                    return true;
                }
                return false;
            }
        });
        AdsType adsType2 = AdsType.Interstitial;
        AdsFormat adsFormat2 = new AdsFormat("Interstitial", 4, com.vungle.ads.internal.Constants.PLACEMENT_TYPE_INTERSTITIAL, null, new l<xq.j>(adsType2) { // from class: io.bidmachine.AdsFormat.g
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.AdsFormat.l
            /* renamed from: d */
            public boolean c(@NonNull xq.j jVar, @NonNull AdContentType adContentType) {
                return true;
            }
        });
        Interstitial = adsFormat2;
        InterstitialVideo = new AdsFormat("InterstitialVideo", 5, "interstitial_video", adsFormat2, new l<xq.j>(adsType2) { // from class: io.bidmachine.AdsFormat.h
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.AdsFormat.l
            /* renamed from: d */
            public boolean c(@NonNull xq.j jVar, @NonNull AdContentType adContentType) {
                if (adContentType == AdContentType.Video) {
                    return true;
                }
                return false;
            }
        });
        InterstitialStatic = new AdsFormat("InterstitialStatic", 6, "interstitial_static", adsFormat2, new l<xq.j>(adsType2) { // from class: io.bidmachine.AdsFormat.i
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.AdsFormat.l
            /* renamed from: d */
            public boolean c(@NonNull xq.j jVar, @NonNull AdContentType adContentType) {
                if (adContentType == AdContentType.Static) {
                    return true;
                }
                return false;
            }
        });
        AdsType adsType3 = AdsType.Rewarded;
        AdsFormat adsFormat3 = new AdsFormat("Rewarded", 7, com.vungle.ads.internal.Constants.PLACEMENT_TYPE_REWARDED, null, new l<xq.j>(adsType3) { // from class: io.bidmachine.AdsFormat.j
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.AdsFormat.l
            /* renamed from: d */
            public boolean c(@NonNull xq.j jVar, @NonNull AdContentType adContentType) {
                return true;
            }
        });
        Rewarded = adsFormat3;
        RewardedVideo = new AdsFormat("RewardedVideo", 8, "rewarded_video", adsFormat3, new l<xq.j>(adsType3) { // from class: io.bidmachine.AdsFormat.k
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.AdsFormat.l
            /* renamed from: d */
            public boolean c(@NonNull xq.j jVar, @NonNull AdContentType adContentType) {
                if (adContentType == AdContentType.Video) {
                    return true;
                }
                return false;
            }
        });
        RewardedStatic = new AdsFormat("RewardedStatic", 9, "rewarded_static", adsFormat3, new l<xq.j>(adsType3) { // from class: io.bidmachine.AdsFormat.a
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.AdsFormat.l
            /* renamed from: d */
            public boolean c(@NonNull xq.j jVar, @NonNull AdContentType adContentType) {
                if (adContentType == AdContentType.Static) {
                    return true;
                }
                return false;
            }
        });
        Native = new AdsFormat("Native", 10, "native", null, new l<xq.n>(AdsType.Native) { // from class: io.bidmachine.AdsFormat.b
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // io.bidmachine.AdsFormat.l
            /* renamed from: d */
            public boolean c(@NonNull xq.n nVar, @NonNull AdContentType adContentType) {
                return true;
            }
        });
        $VALUES = $values();
    }

    private AdsFormat(@NonNull String str, @Nullable int i10, @NonNull String str2, AdsFormat adsFormat, l lVar) {
        this.remoteName = str2;
        this.parent = adsFormat;
        this.matcher = lVar;
    }

    @Nullable
    public static AdsFormat byRemoteName(@Nullable String str) {
        AdsFormat[] values;
        if (!TextUtils.isEmpty(str)) {
            for (AdsFormat adsFormat : values()) {
                if (adsFormat.remoteName.equals(str)) {
                    return adsFormat;
                }
            }
            return null;
        }
        return null;
    }

    public static AdsFormat valueOf(String str) {
        return (AdsFormat) Enum.valueOf(AdsFormat.class, str);
    }

    public static AdsFormat[] values() {
        return (AdsFormat[]) $VALUES.clone();
    }

    @NonNull
    public AdsType getAdsType() {
        return this.matcher.f53533a;
    }

    @Nullable
    public AdsFormat getParent() {
        return this.parent;
    }

    @NonNull
    public String getRemoteName() {
        return this.remoteName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T extends xq.d> boolean isMatch(@NonNull AdsType adsType, @NonNull T t10, @NonNull AdContentType adContentType) {
        return this.matcher.b(adsType, t10, adContentType);
    }
}
