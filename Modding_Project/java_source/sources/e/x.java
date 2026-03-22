package e;

import com.hades.aar.admanager.core.AdFormat;
/* loaded from: classes.dex */
public abstract /* synthetic */ class x {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f50701a;

    static {
        int[] iArr = new int[AdFormat.values().length];
        try {
            iArr[AdFormat.APP_OPEN.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[AdFormat.INTERSTITIAL.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[AdFormat.REWARDED_VIDEO.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[AdFormat.BANNER.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        f50701a = iArr;
    }
}
