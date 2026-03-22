package com.moloco.sdk.internal.services.bidtoken;

import androidx.compose.runtime.internal.StabilityInferred;
import com.google.protobuf.ByteString;
import com.moloco.sdk.BidToken$ClientBidToken;
import com.moloco.sdk.BidToken$ClientBidTokenComponents;
import com.moloco.sdk.internal.services.H;
import com.moloco.sdk.internal.services.a;
import com.moloco.sdk.internal.services.i0;
import com.moloco.sdk.internal.services.j0;
import com.moloco.sdk.internal.services.o;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Date;
import java.util.TimeZone;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 1)
/* loaded from: classes6.dex */
public final class t implements s {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final j0 f33284b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final com.moloco.sdk.internal.services.f f33285c;

    /* loaded from: classes6.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f33286a;

        /* renamed from: b  reason: collision with root package name */
        public static final /* synthetic */ int[] f33287b;

        static {
            int[] iArr = new int[H.values().length];
            try {
                iArr[H.f33085a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[H.f33086b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[H.f33087c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f33286a = iArr;
            int[] iArr2 = new int[com.moloco.sdk.internal.services.z.values().length];
            try {
                iArr2[com.moloco.sdk.internal.services.z.f33543a.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[com.moloco.sdk.internal.services.z.f33544b.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[com.moloco.sdk.internal.services.z.f33545c.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            f33287b = iArr2;
        }
    }

    public t(@NotNull j0 deviceInfoService, @NotNull com.moloco.sdk.internal.services.f screenInfoService) {
        Intrinsics.checkNotNullParameter(deviceInfoService, "deviceInfoService");
        Intrinsics.checkNotNullParameter(screenInfoService, "screenInfoService");
        this.f33284b = deviceInfoService;
        this.f33285c = screenInfoService;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.s
    @NotNull
    public BidToken$ClientBidTokenComponents a(@NotNull com.moloco.sdk.internal.services.bidtoken.providers.k clientSignals, @NotNull h bidTokenConfig) {
        BidToken$ClientBidTokenComponents.BatteryInfo.BatteryStatus batteryStatus;
        BidToken$ClientBidTokenComponents.NetworkInfo.ConnectionType connectionType;
        Intrinsics.checkNotNullParameter(clientSignals, "clientSignals");
        Intrinsics.checkNotNullParameter(bidTokenConfig, "bidTokenConfig");
        i0 b10 = this.f33284b.b();
        com.moloco.sdk.internal.services.e a10 = this.f33285c.a();
        BidToken$ClientBidTokenComponents.a newBuilder = BidToken$ClientBidTokenComponents.newBuilder();
        BidToken$ClientBidTokenComponents.SdkInfo.a newBuilder2 = BidToken$ClientBidTokenComponents.SdkInfo.newBuilder();
        newBuilder2.a(clientSignals.k());
        newBuilder.i(newBuilder2.build());
        BidToken$ClientBidTokenComponents.MemoryInfo.a newBuilder3 = BidToken$ClientBidTokenComponents.MemoryInfo.newBuilder();
        Boolean a11 = clientSignals.h().a();
        if (a11 != null) {
            newBuilder3.a(a11.booleanValue());
        }
        Long b11 = clientSignals.h().b();
        if (b11 != null) {
            newBuilder3.b(b11.longValue());
        }
        Long c10 = clientSignals.h().c();
        if (c10 != null) {
            newBuilder3.c(c10.longValue());
        }
        newBuilder.j(newBuilder3.build());
        BidToken$ClientBidTokenComponents.DirInfo.a newBuilder4 = BidToken$ClientBidTokenComponents.DirInfo.newBuilder();
        Long a12 = clientSignals.c().a();
        if (a12 != null) {
            newBuilder4.a(a12.longValue());
        }
        newBuilder.g(newBuilder4.build());
        BidToken$ClientBidTokenComponents.NetworkInfo.a newBuilder5 = BidToken$ClientBidTokenComponents.NetworkInfo.newBuilder();
        if (clientSignals.i().a() != null) {
            newBuilder5.a(clientSignals.i().a().intValue());
        }
        Integer b12 = clientSignals.i().b();
        if (b12 != null) {
            newBuilder5.b(b12.intValue());
        }
        Boolean c11 = clientSignals.i().c();
        if (c11 != null) {
            newBuilder5.c(c11.booleanValue());
        }
        com.moloco.sdk.internal.services.a d10 = clientSignals.i().d();
        if (d10 != null) {
            if (d10 instanceof a.C0488a) {
                connectionType = BidToken$ClientBidTokenComponents.NetworkInfo.ConnectionType.CELLULAR;
            } else if (Intrinsics.areEqual(d10, a.b.f33095a)) {
                connectionType = BidToken$ClientBidTokenComponents.NetworkInfo.ConnectionType.NO_NETWORK;
            } else if (Intrinsics.areEqual(d10, a.c.f33096a)) {
                connectionType = BidToken$ClientBidTokenComponents.NetworkInfo.ConnectionType.WIFI;
            } else {
                throw new NoWhenBranchMatchedException();
            }
            newBuilder5.e(connectionType);
        }
        newBuilder.k(newBuilder5.build());
        BidToken$ClientBidTokenComponents.BatteryInfo.a newBuilder6 = BidToken$ClientBidTokenComponents.BatteryInfo.newBuilder();
        Integer b13 = clientSignals.e().b();
        if (b13 != null) {
            newBuilder6.c(b13.intValue());
        }
        Integer a13 = clientSignals.e().a();
        int i10 = 5;
        if (a13 != null) {
            int intValue = a13.intValue();
            if (intValue != 2) {
                if (intValue != 3) {
                    if (intValue != 4) {
                        if (intValue != 5) {
                            batteryStatus = BidToken$ClientBidTokenComponents.BatteryInfo.BatteryStatus.UNKNOWN;
                        } else {
                            batteryStatus = BidToken$ClientBidTokenComponents.BatteryInfo.BatteryStatus.FULL;
                        }
                    } else {
                        batteryStatus = BidToken$ClientBidTokenComponents.BatteryInfo.BatteryStatus.NOT_CHARGING;
                    }
                } else {
                    batteryStatus = BidToken$ClientBidTokenComponents.BatteryInfo.BatteryStatus.DISCHARGING;
                }
            } else {
                batteryStatus = BidToken$ClientBidTokenComponents.BatteryInfo.BatteryStatus.CHARGING;
            }
            newBuilder6.a(batteryStatus);
        }
        Boolean c12 = clientSignals.e().c();
        if (c12 != null) {
            newBuilder6.b(c12.booleanValue());
        }
        newBuilder.e(newBuilder6.build());
        BidToken$ClientBidTokenComponents.AdvertisingInfo.a newBuilder7 = BidToken$ClientBidTokenComponents.AdvertisingInfo.newBuilder();
        com.moloco.sdk.internal.services.o b14 = clientSignals.b();
        if (b14 instanceof o.a) {
            newBuilder7.a(false);
            newBuilder7.b(((o.a) b14).a());
        } else if (Intrinsics.areEqual(b14, o.b.f33509a)) {
            newBuilder7.a(true);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        newBuilder.b(newBuilder7.build());
        BidToken$ClientBidTokenComponents.Privacy.a newBuilder8 = BidToken$ClientBidTokenComponents.Privacy.newBuilder();
        Boolean isAgeRestrictedUser = clientSignals.j().isAgeRestrictedUser();
        if (isAgeRestrictedUser != null) {
            newBuilder8.b(isAgeRestrictedUser.booleanValue());
        }
        Boolean isUserConsent = clientSignals.j().isUserConsent();
        if (isUserConsent != null) {
            newBuilder8.c(isUserConsent.booleanValue());
        }
        Boolean isDoNotSell = clientSignals.j().isDoNotSell();
        if (isDoNotSell != null) {
            newBuilder8.a(isDoNotSell.booleanValue());
        }
        String tCFConsent = clientSignals.j().getTCFConsent();
        if (tCFConsent != null) {
            newBuilder8.e(tCFConsent);
        }
        newBuilder8.f(clientSignals.j().getUsPrivacy());
        newBuilder.l(newBuilder8.build());
        BidToken$ClientBidTokenComponents.Device.a newBuilder9 = BidToken$ClientBidTokenComponents.Device.newBuilder();
        newBuilder9.m(b10.e());
        newBuilder9.s(b10.j());
        newBuilder9.o(b10.f());
        newBuilder9.p(b10.h());
        newBuilder9.j(b10.d());
        newBuilder9.b(b10.g());
        if (!b10.l()) {
            i10 = 1;
        }
        newBuilder9.e(i10);
        newBuilder9.k(1);
        BidToken$ClientBidTokenComponents.Geo.a newBuilder10 = BidToken$ClientBidTokenComponents.Geo.newBuilder();
        newBuilder10.a(TimeZone.getDefault().getOffset(new Date().getTime()) / 60000);
        newBuilder9.f(newBuilder10.build());
        newBuilder9.v(a10.f());
        newBuilder9.g(a10.d());
        newBuilder9.u(a10.a());
        newBuilder9.t(a10.b());
        newBuilder9.r(b10.i());
        if (bidTokenConfig.a()) {
            newBuilder9.c(c(b10.b()));
        }
        H c13 = clientSignals.f().c();
        if (c13 != null) {
            newBuilder9.q(e(c13));
        }
        Boolean a14 = this.f33284b.a();
        if (a14 != null) {
            newBuilder9.i(a14.booleanValue());
        }
        String a15 = clientSignals.f().a();
        if (a15 != null) {
            newBuilder9.l(a15);
        }
        String b15 = clientSignals.f().b();
        if (b15 != null) {
            newBuilder9.n(b15);
        }
        newBuilder9.w(a10.g());
        newBuilder9.x(a10.h());
        newBuilder9.h(b10.c());
        newBuilder9.a(b10.a());
        newBuilder.f(newBuilder9.build());
        BidToken$ClientBidTokenComponents.AudioInfo.a newBuilder11 = BidToken$ClientBidTokenComponents.AudioInfo.newBuilder();
        com.moloco.sdk.internal.services.z b16 = clientSignals.d().b();
        if (b16 != null) {
            newBuilder11.a(d(b16));
        }
        Integer a16 = clientSignals.d().a();
        if (a16 != null) {
            newBuilder11.b(a16.intValue());
        }
        newBuilder.c(newBuilder11.build());
        BidToken$ClientBidTokenComponents.AccessibilityInfo.a newBuilder12 = BidToken$ClientBidTokenComponents.AccessibilityInfo.newBuilder();
        Float c14 = clientSignals.a().c();
        if (c14 != null) {
            newBuilder12.c(c14.floatValue());
        }
        Boolean b17 = clientSignals.a().b();
        if (b17 != null) {
            newBuilder12.b(b17.booleanValue());
        }
        Boolean a17 = clientSignals.a().a();
        if (a17 != null) {
            newBuilder12.a(a17.booleanValue());
        }
        Boolean d11 = clientSignals.a().d();
        if (d11 != null) {
            newBuilder12.e(d11.booleanValue());
        }
        newBuilder.a(newBuilder12.build());
        if (clientSignals.g().i()) {
            BidToken$ClientBidTokenComponents.ImpLvlRevData.a newBuilder13 = BidToken$ClientBidTokenComponents.ImpLvlRevData.newBuilder();
            newBuilder13.c(clientSignals.g().g());
            newBuilder13.b(clientSignals.g().c());
            newBuilder13.e(clientSignals.g().h());
            BidToken$ClientBidTokenComponents.ImpLvlRevData.ImpCounts.a newBuilder14 = BidToken$ClientBidTokenComponents.ImpLvlRevData.ImpCounts.newBuilder();
            newBuilder14.a(clientSignals.g().a());
            newBuilder14.c(clientSignals.g().d());
            newBuilder14.e(clientSignals.g().e());
            newBuilder14.b(clientSignals.g().b());
            newBuilder14.f(clientSignals.g().f());
            newBuilder13.a(newBuilder14.build());
            newBuilder.h(newBuilder13.build());
        }
        BidToken$ClientBidTokenComponents build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        return build;
    }

    @Override // com.moloco.sdk.internal.services.bidtoken.s
    @NotNull
    public byte[] b(@NotNull byte[] bidTokenComponents, @NotNull byte[] secret) {
        Intrinsics.checkNotNullParameter(bidTokenComponents, "bidTokenComponents");
        Intrinsics.checkNotNullParameter(secret, "secret");
        BidToken$ClientBidToken.a newBuilder = BidToken$ClientBidToken.newBuilder();
        newBuilder.a(ByteString.copyFrom(secret));
        newBuilder.b(ByteString.copyFrom(bidTokenComponents));
        byte[] byteArray = newBuilder.build().toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        return byteArray;
    }

    public final long c(long j10) {
        return j10 * ((long) TTVideoEngineInterface.PLAYER_TIME_BASE);
    }

    public final BidToken$ClientBidTokenComponents.AudioInfo.MuteSwitchState d(com.moloco.sdk.internal.services.z zVar) {
        int i10 = a.f33287b[zVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return BidToken$ClientBidTokenComponents.AudioInfo.MuteSwitchState.NORMAL;
                }
                throw new NoWhenBranchMatchedException();
            }
            return BidToken$ClientBidTokenComponents.AudioInfo.MuteSwitchState.VIBRATE;
        }
        return BidToken$ClientBidTokenComponents.AudioInfo.MuteSwitchState.SILENT;
    }

    public final BidToken$ClientBidTokenComponents.Device.Orientation e(H h10) {
        int i10 = a.f33286a[h10.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    return BidToken$ClientBidTokenComponents.Device.Orientation.LANDSCAPE;
                }
                throw new NoWhenBranchMatchedException();
            }
            return BidToken$ClientBidTokenComponents.Device.Orientation.PORTRAIT;
        }
        return BidToken$ClientBidTokenComponents.Device.Orientation.UNKNOWN;
    }
}
