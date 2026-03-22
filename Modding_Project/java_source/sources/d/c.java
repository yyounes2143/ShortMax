package d;

import com.hades.aar.admanager.core.AdFormat;
/* loaded from: classes.dex */
public abstract /* synthetic */ class c {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f49734a;

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
            iArr[AdFormat.NATIVE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[AdFormat.REWARDED_VIDEO.ordinal()] = 4;
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
        f49734a = iArr;
    }
}
