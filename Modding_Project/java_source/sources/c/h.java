package c;

import com.hades.aar.admanager.core.AdAggregatedSdk;
import com.hades.aar.admanager.core.AdFormat;
/* loaded from: classes.dex */
public abstract /* synthetic */ class h {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f2839a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int[] f2840b;

    static {
        int[] iArr = new int[AdAggregatedSdk.values().length];
        try {
            iArr[AdAggregatedSdk.APPLOVIN_MAX.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        f2839a = iArr;
        int[] iArr2 = new int[AdFormat.values().length];
        try {
            iArr2[AdFormat.APP_OPEN.ordinal()] = 1;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[AdFormat.INTERSTITIAL.ordinal()] = 2;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[AdFormat.REWARDED_VIDEO.ordinal()] = 3;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[AdFormat.BANNER.ordinal()] = 4;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[AdFormat.MEDIA_VIDEO.ordinal()] = 5;
        } catch (NoSuchFieldError unused6) {
        }
        try {
            iArr2[AdFormat.NATIVE.ordinal()] = 6;
        } catch (NoSuchFieldError unused7) {
        }
        f2840b = iArr2;
    }
}
