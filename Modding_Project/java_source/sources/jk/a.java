package jk;

import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.hades.aar.admanager.core.AdFormat;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.manager.ad.AdHelper;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdExt.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {

    /* compiled from: AdExt.kt */
    @Metadata
    /* renamed from: jk.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public /* synthetic */ class C0834a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AdFormat.values().length];
            try {
                iArr[AdFormat.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdFormat.APP_OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AdFormat.REWARDED_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AdFormat.NATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AdFormat.BANNER.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AdFormat.MEDIA_VIDEO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public static final String a(@NotNull AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "<this>");
        switch (C0834a.$EnumSwitchMapping$0[adFormat.ordinal()]) {
            case 1:
                return MBridgeConstans.ENDCARD_URL_TYPE_PL;
            case 2:
                return "2";
            case 3:
                return "1";
            case 4:
                return "3";
            case 5:
                return "4";
            case 6:
                return "5";
            default:
                return "unknown";
        }
    }

    @NotNull
    public static final String b(@NotNull ca.d dVar) {
        Intrinsics.checkNotNullParameter(dVar, "<this>");
        return d(dVar.d());
    }

    @NotNull
    public static final String c(@NotNull ca.e eVar) {
        Intrinsics.checkNotNullParameter(eVar, "<this>");
        return d(eVar.c());
    }

    @NotNull
    public static final String d(@Nullable AdAggregatedSdk adAggregatedSdk) {
        return AdHelper.f41598a.k(adAggregatedSdk);
    }
}
