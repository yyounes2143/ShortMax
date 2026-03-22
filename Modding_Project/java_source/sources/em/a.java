package em;

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
import io.bidmachine.AdsFormat;
import io.bidmachine.ads.networks.gam.InternalGAMAd;
import io.bidmachine.ads.networks.gam.j;
import io.bidmachine.ads.networks.gam.t;
/* loaded from: classes7.dex */
public class a extends dm.a {

    /* renamed from: em.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    static /* synthetic */ class C0739a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51352a;

        static {
            int[] iArr = new int[AdsFormat.values().length];
            f51352a = iArr;
            try {
                iArr[AdsFormat.Banner.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51352a[AdsFormat.Banner_320x50.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51352a[AdsFormat.Banner_728x90.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51352a[AdsFormat.Banner_300x250.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f51352a[AdsFormat.Interstitial.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f51352a[AdsFormat.InterstitialStatic.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f51352a[AdsFormat.InterstitialVideo.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f51352a[AdsFormat.Rewarded.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f51352a[AdsFormat.RewardedStatic.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f51352a[AdsFormat.RewardedVideo.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public a() {
        super(19, new lr.a(21, 0, 0));
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

    @Override // dm.b
    @SuppressLint({"MissingPermission"})
    public void a(@NonNull Context context) {
        MobileAds.initialize(context);
    }

    @Override // dm.b
    public boolean d(@NonNull Context context) {
        if (g(context) && f()) {
            return true;
        }
        return false;
    }

    @Override // dm.b
    @Nullable
    public InternalGAMAd e(@NonNull j jVar, @NonNull AdsFormat adsFormat, @NonNull t tVar) {
        switch (C0739a.f51352a[adsFormat.ordinal()]) {
            case 1:
            case 2:
                return new d(jVar, adsFormat, tVar, AdSize.BANNER);
            case 3:
                return new d(jVar, adsFormat, tVar, AdSize.LEADERBOARD);
            case 4:
                return new d(jVar, adsFormat, tVar, AdSize.MEDIUM_RECTANGLE);
            case 5:
            case 6:
            case 7:
                return new e(jVar, adsFormat, tVar);
            case 8:
            case 9:
            case 10:
                return new f(jVar, adsFormat, tVar);
            default:
                return null;
        }
    }

    @Override // dm.b
    @Nullable
    public lr.a getVersion() {
        VersionInfo version = MobileAds.getVersion();
        return new lr.a(version.getMajorVersion(), version.getMinorVersion(), version.getMicroVersion());
    }
}
