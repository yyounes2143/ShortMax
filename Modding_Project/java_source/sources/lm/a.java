package lm;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.VersionInfo;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import hm.s;
import hm.u;
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam_dynamic.InternalAd;
import io.bidmachine.protobuf.Waterfall;
/* loaded from: classes7.dex */
public class a extends im.a {

    /* renamed from: lm.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C0867a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f62237a;

        static {
            int[] iArr = new int[AdsFormat.values().length];
            f62237a = iArr;
            try {
                iArr[AdsFormat.Banner.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62237a[AdsFormat.Banner_320x50.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62237a[AdsFormat.Banner_728x90.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62237a[AdsFormat.Banner_300x250.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f62237a[AdsFormat.Interstitial.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f62237a[AdsFormat.InterstitialStatic.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f62237a[AdsFormat.InterstitialVideo.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f62237a[AdsFormat.Rewarded.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f62237a[AdsFormat.RewardedStatic.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f62237a[AdsFormat.RewardedVideo.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public a() {
        super(21, new lr.a(23, 0, 0));
    }

    private boolean f() {
        try {
            int i10 = AdManagerAdView.f19619a;
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean g(@NonNull Context context) {
        try {
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                return false;
            }
            return !TextUtils.isEmpty(bundle.getString("com.google.android.gms.ads.APPLICATION_ID"));
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // im.b
    @SuppressLint({"MissingPermission"})
    public void a(@NonNull Context context) {
        MobileAds.initialize(context);
    }

    @Override // im.b
    public boolean d(@NonNull Context context) {
        if (g(context) && f()) {
            return true;
        }
        return false;
    }

    @Override // im.b
    @Nullable
    public InternalAd e(@NonNull s sVar, @NonNull u uVar, @NonNull AdsFormat adsFormat, @NonNull Waterfall.Configuration.AdUnit adUnit, @NonNull hm.k kVar) {
        switch (C0867a.f62237a[adsFormat.ordinal()]) {
            case 1:
            case 2:
                return new b(sVar, uVar, adsFormat, adUnit, kVar, AdSize.BANNER);
            case 3:
                return new b(sVar, uVar, adsFormat, adUnit, kVar, AdSize.LEADERBOARD);
            case 4:
                return new b(sVar, uVar, adsFormat, adUnit, kVar, AdSize.MEDIUM_RECTANGLE);
            case 5:
            case 6:
            case 7:
                return new g(sVar, uVar, adsFormat, adUnit, kVar);
            case 8:
            case 9:
            case 10:
                return new k(sVar, uVar, adsFormat, adUnit, kVar);
            default:
                return null;
        }
    }

    @Override // im.b
    @Nullable
    public lr.a getVersion() {
        VersionInfo version = MobileAds.getVersion();
        return new lr.a(version.getMajorVersion(), version.getMinorVersion(), version.getMicroVersion());
    }
}
