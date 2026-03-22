package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.explorestack.protobuf.Any;
import com.explorestack.protobuf.Message;
import com.explorestack.protobuf.StringValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Placement;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.nativead.NativeRequest;
import io.bidmachine.protobuf.RequestTokenPayload;
import io.bidmachine.protobuf.ResponsePayload;
import io.bidmachine.protobuf.TokenConfiguration;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingPlacement;
import io.bidmachine.protobuf.sdk.App;
import io.bidmachine.protobuf.sdk.Placement;
import io.bidmachine.protobuf.sdk.SDK;
import io.bidmachine.protobuf.sdk.User;
import io.bidmachine.s2;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import nm.b;
import vq.c;
import xm.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BidTokenManager.java */
/* loaded from: classes7.dex */
public class s2 {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final wq.k f58612a = new BidMachineTrackingObject();
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private static final Map<AdsFormat, TokenConfiguration> f58613b = new ConcurrentHashMap();
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private static final Map<String, BidToken> f58614c = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BidTokenManager.java */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f58615a;

        static {
            int[] iArr = new int[AdsFormat.values().length];
            f58615a = iArr;
            try {
                iArr[AdsFormat.Banner.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f58615a[AdsFormat.Banner_320x50.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f58615a[AdsFormat.Banner_300x250.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f58615a[AdsFormat.Banner_728x90.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f58615a[AdsFormat.Interstitial.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f58615a[AdsFormat.InterstitialStatic.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f58615a[AdsFormat.InterstitialVideo.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f58615a[AdsFormat.Rewarded.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f58615a[AdsFormat.RewardedStatic.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f58615a[AdsFormat.RewardedVideo.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f58615a[AdsFormat.Native.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BidTokenManager.java */
    /* loaded from: classes7.dex */
    public static class b implements ExpirationListener<BidToken> {
        private b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ String b(BidToken bidToken) {
            return String.format("BidToken expired - %s", bidToken.getId());
        }

        @Override // io.bidmachine.ExpirationListener
        /* renamed from: c */
        public void onExpired(@NonNull final BidToken bidToken) {
            io.bidmachine.core.a.b("BidTokenManager", new hr.b() { // from class: io.bidmachine.t2
                @Override // hr.b
                public final Object get() {
                    String b10;
                    b10 = s2.b.b(BidToken.this);
                    return b10;
                }
            });
            s2.u(bidToken);
            bidToken.destroyAdRequest();
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }

    private static void A(@Nullable AdsFormat adsFormat, @Nullable fr.a aVar) {
        AdsType adsType;
        wq.k kVar = f58612a;
        TrackEventType trackEventType = TrackEventType.GetBidToken;
        if (adsFormat != null) {
            adsType = adsFormat.getAdsType();
        } else {
            adsType = null;
        }
        kVar.eventFinish(trackEventType, adsType, null, aVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @WorkerThread
    public static String f(@NonNull Context context, @NonNull AdPlacementConfig adPlacementConfig) {
        AdsFormat adsFormat = adPlacementConfig.getAdsFormat();
        RequestTokenPayload g10 = g(context, adPlacementConfig);
        if (g10 == null) {
            w(adsFormat, fr.a.i("Failed to create RequestTokenPayload"));
            return "";
        }
        try {
            String encodeToString = Base64.encodeToString(g10.toByteArray(), 2);
            x(adsFormat);
            return encodeToString;
        } catch (Exception e10) {
            w(adsFormat, fr.a.l("Failed to encode RequestTokenPayload", e10));
            v(g10.getTokenHashValue());
            return "";
        }
    }

    @Nullable
    private static RequestTokenPayload g(@NonNull Context context, @NonNull AdPlacementConfig adPlacementConfig) {
        try {
            AdsFormat adsFormat = adPlacementConfig.getAdsFormat();
            j2 e10 = j2.e();
            RequestTokenPayload.Builder newBuilder = RequestTokenPayload.newBuilder();
            final Placement.Builder placementBuilder = newBuilder.getPlacementBuilder();
            placementBuilder.setAdType(adsFormat.getAdsType().getName());
            io.bidmachine.core.g.H(adPlacementConfig.getPlacementId(), new Executable() { // from class: io.bidmachine.p2
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    s2.m(Placement.Builder.this, (String) obj);
                }
            });
            io.bidmachine.core.g.H(adPlacementConfig.getCustomParams(), new Executable() { // from class: io.bidmachine.q2
                @Override // io.bidmachine.Executable
                public final void execute(Object obj) {
                    s2.n(Placement.Builder.this, (CustomParams) obj);
                }
            });
            App.Builder newBuilder2 = App.newBuilder();
            e10.h().b(context, newBuilder2);
            newBuilder.setAppData(newBuilder2);
            User.Builder h10 = h(e10);
            if (h10 != null) {
                newBuilder.setUserData(h10);
            }
            SDK.Builder sdkver = SDK.newBuilder().setSdk(BidMachine.NAME).setSdkver("3.4.0");
            ym.a.c(sdkver);
            newBuilder.setPlacementData(sdkver);
            e10.i().b(context, newBuilder, e10.u());
            e10.q().e(context, newBuilder, adsFormat);
            t(context, newBuilder, adsFormat);
            Struct.Builder newBuilder3 = Struct.newBuilder();
            Struct privateStruct = ExtraParamsManager.get().getPrivateStruct(context);
            if (privateStruct != null) {
                newBuilder3.putAllFields(privateStruct.getFieldsMap());
            }
            if (newBuilder3.getFieldsCount() > 0) {
                newBuilder.setExt(newBuilder3.build());
            }
            return newBuilder.build();
        } catch (Throwable th2) {
            io.bidmachine.core.a.m(th2);
            return null;
        }
    }

    @Nullable
    private static User.Builder h(@NonNull j2 j2Var) {
        try {
            v5 u10 = j2Var.u();
            User.Builder newBuilder = User.newBuilder();
            u10.h(newBuilder);
            return newBuilder;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void i(@NonNull HeaderBiddingPlacement.Builder builder, @NonNull List<Any> list) {
        for (Any any : list) {
            try {
                builder.addAllAdUnits(((HeaderBiddingPlacement) any.unpack(HeaderBiddingPlacement.class)).getAdUnitsList());
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static <T extends AdRequest<?, ?, ?>> T j(@Nullable ResponsePayload responsePayload) {
        if (responsePayload == null) {
            return null;
        }
        final String k10 = k(responsePayload);
        io.bidmachine.core.a.b("BidTokenManager", new hr.b() { // from class: io.bidmachine.n2
            @Override // hr.b
            public final Object get() {
                String o10;
                o10 = s2.o(k10);
                return o10;
            }
        });
        if (TextUtils.isEmpty(k10)) {
            return null;
        }
        BidToken v10 = v(k10);
        if (v10 == null) {
            io.bidmachine.core.a.b("BidTokenManager", new hr.b() { // from class: io.bidmachine.o2
                @Override // hr.b
                public final Object get() {
                    String p10;
                    p10 = s2.p(k10);
                    return p10;
                }
            });
            return null;
        }
        return (T) v10.getAdRequest();
    }

    @Nullable
    private static String k(@NonNull ResponsePayload responsePayload) {
        try {
            Value value = responsePayload.getResponseCache().getResponse().getExt().getFieldsMap().get("tokenHashValue");
            if (value == null) {
                return null;
            }
            return value.getStringValue();
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    static TokenConfiguration l(@Nullable AdsFormat adsFormat) {
        if (adsFormat == null) {
            return null;
        }
        return f58613b.get(adsFormat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void m(Placement.Builder builder, String str) {
        builder.setPlacementId(StringValue.of(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void n(Placement.Builder builder, CustomParams customParams) {
        Struct.Builder newBuilder = Struct.newBuilder();
        customParams.fillStructBuilder(newBuilder);
        if (newBuilder.getFieldsCount() > 0) {
            builder.setCustomData(newBuilder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String o(String str) {
        return String.format("BidTokenId from bidPayload - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String p(String str) {
        return String.format("BidToken is null by bidTokenId - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String q(BidToken bidToken) {
        return String.format("BidTokenId - %s", bidToken.getId());
    }

    @Nullable
    private static AdRequest<?, ?, ?> r(@NonNull AdsFormat adsFormat) {
        switch (a.f58615a[adsFormat.ordinal()]) {
            case 1:
            case 2:
                return new b.c().c(BannerSize.Size_320x50).build();
            case 3:
                return new b.c().c(BannerSize.Size_300x250).build();
            case 4:
                return new b.c().c(BannerSize.Size_728x90).build();
            case 5:
                return new c.b().setAdContentType(AdContentType.All).build();
            case 6:
                return new c.b().setAdContentType(AdContentType.Static).build();
            case 7:
                return new c.b().setAdContentType(AdContentType.Video).build();
            case 8:
                return new c.b().setAdContentType(AdContentType.All).build();
            case 9:
                return new c.b().setAdContentType(AdContentType.Static).build();
            case 10:
                return new c.b().setAdContentType(AdContentType.Video).build();
            case 11:
                return new NativeRequest.Builder().c(MediaAssetType.All).build();
            default:
                return null;
        }
    }

    @NonNull
    private static TokenConfiguration s(@NonNull AdsFormat adsFormat) {
        TokenConfiguration l10 = l(adsFormat);
        if (l10 == null) {
            l10 = l(adsFormat.getParent());
        }
        if (l10 == null) {
            return TokenConfiguration.newBuilder().setExpirationTime(300).build();
        }
        return l10;
    }

    private static void t(@NonNull Context context, @NonNull RequestTokenPayload.Builder builder, @Nullable AdsFormat adsFormat) {
        if (adsFormat == null) {
            return;
        }
        try {
            AdRequest<?, ?, ?> r10 = r(adsFormat);
            if (r10 == null) {
                return;
            }
            NetworkRegistry.registerAndInitializeCoreNetworks(context);
            TokenConfiguration s10 = s(adsFormat);
            HeaderBiddingPlacement.Builder newBuilder = HeaderBiddingPlacement.newBuilder();
            for (Message.Builder builder2 : r10.collectPlacementFormats(context, s10.getAdNetworksList(), null)) {
                if (builder2 instanceof Placement.DisplayPlacement.Builder) {
                    i(newBuilder, ((Placement.DisplayPlacement.Builder) builder2).getExtProtoList());
                } else if (builder2 instanceof Placement.VideoPlacement.Builder) {
                    i(newBuilder, ((Placement.VideoPlacement.Builder) builder2).getExtProtoList());
                }
            }
            if (!newBuilder.getAdUnitsList().isEmpty()) {
                final BidToken bidToken = new BidToken(r10, s10.getExpirationTime(), new b(null));
                z(bidToken);
                builder.getPlacementBuilder().setHbPlacement(newBuilder);
                builder.setTokenHashValue(bidToken.getId());
                io.bidmachine.core.a.b("BidTokenManager", new hr.b() { // from class: io.bidmachine.r2
                    @Override // hr.b
                    public final Object get() {
                        String q10;
                        q10 = s2.q(BidToken.this);
                        return q10;
                    }
                });
            }
        } catch (Throwable unused) {
            v(builder.getTokenHashValue());
        }
    }

    @Nullable
    static BidToken u(@NonNull BidToken bidToken) {
        return v(bidToken.getId());
    }

    @Nullable
    static BidToken v(@NonNull String str) {
        BidToken remove = f58614c.remove(str);
        if (remove != null) {
            remove.stopExpiration();
        }
        return remove;
    }

    private static void w(@Nullable AdsFormat adsFormat, @NonNull fr.a aVar) {
        A(adsFormat, aVar);
    }

    private static void x(@Nullable AdsFormat adsFormat) {
        A(adsFormat, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void y(@Nullable List<TokenConfiguration> list) {
        f58613b.clear();
        if (list != null) {
            for (TokenConfiguration tokenConfiguration : list) {
                AdsFormat byRemoteName = AdsFormat.byRemoteName(tokenConfiguration.getType());
                if (byRemoteName != null) {
                    f58613b.put(byRemoteName, tokenConfiguration);
                }
            }
        }
    }

    static void z(@NonNull BidToken bidToken) {
        f58614c.put(bidToken.getId(), bidToken);
        bidToken.startExpiration();
    }
}
