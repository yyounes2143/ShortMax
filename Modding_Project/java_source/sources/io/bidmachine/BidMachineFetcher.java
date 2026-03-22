package io.bidmachine;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import io.bidmachine.AdRequest;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes7.dex */
public class BidMachineFetcher {
    public static final String AD_TYPE_DISPLAY = "display";
    public static final String AD_TYPE_NATIVE = "native";
    public static final String AD_TYPE_VIDEO = "video";
    public static final String KEY_AD_TYPE = "bm_ad_type";
    public static final String KEY_ID = "bm_id";
    public static final String KEY_NETWORK_KEY = "bm_network_key";
    public static final String KEY_PRICE = "bm_pf";
    private static final String TAG = "BidMachineFetcher";
    private static final BigDecimal PRICE_ROUNDING = new BigDecimal("0.01");
    private static final RoundingMode PRICE_ROUNDING_MODE = RoundingMode.CEILING;
    @VisibleForTesting
    static EnumMap<AdsType, Map<String, AdRequest>> cachedRequests = new EnumMap<>(AdsType.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f53561a;

        static {
            int[] iArr = new int[CreativeFormat.values().length];
            f53561a = iArr;
            try {
                iArr[CreativeFormat.Banner.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f53561a[CreativeFormat.Video.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f53561a[CreativeFormat.Native.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Nullable
    public static Map<String, String> fetch(@NonNull final AdRequest adRequest) {
        io.bidmachine.core.a.b(TAG, new hr.b() { // from class: io.bidmachine.b2
            @Override // hr.b
            public final Object get() {
                String lambda$fetch$0;
                lambda$fetch$0 = BidMachineFetcher.lambda$fetch$0(AdRequest.this);
                return lambda$fetch$0;
            }
        });
        Map<String, String> map = toMap(adRequest);
        String str = map.get(KEY_ID);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        AdsType adsType = adRequest.getAdsType();
        adRequest.addListener(new a());
        synchronized (BidMachineFetcher.class) {
            try {
                Map<String, AdRequest> map2 = cachedRequests.get(adsType);
                if (map2 == null) {
                    map2 = new HashMap<>();
                    cachedRequests.put((EnumMap<AdsType, Map<String, AdRequest>>) adsType, (AdsType) map2);
                }
                map2.put(str, adRequest);
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return map;
    }

    @Nullable
    @VisibleForTesting
    static String identifyAdType(@Nullable CreativeFormat creativeFormat) {
        if (creativeFormat == null) {
            return null;
        }
        int i10 = b.f53561a[creativeFormat.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return null;
                }
                return "native";
            }
            return "video";
        }
        return "display";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$fetch$0(AdRequest adRequest) {
        return String.format("fetch - %s", adRequest);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$release$1(String str) {
        return String.format("release - %s", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String lambda$toMap$2(AdRequest adRequest) {
        return String.format("toMap - %s", adRequest);
    }

    @Nullable
    public static <T extends AdRequest> T release(@NonNull T t10) {
        lp.c auctionResult = t10.getAuctionResult();
        if (auctionResult != null) {
            return (T) release(t10.getAdsType(), auctionResult.getId());
        }
        return null;
    }

    private static String roundPrice(double d10) {
        BigDecimal bigDecimal = new BigDecimal(String.valueOf(d10));
        BigDecimal bigDecimal2 = PRICE_ROUNDING;
        if (bigDecimal2.signum() != 0) {
            bigDecimal = bigDecimal.divide(bigDecimal2, 0, PRICE_ROUNDING_MODE).multiply(bigDecimal2);
        }
        return bigDecimal.setScale(bigDecimal2.scale(), RoundingMode.HALF_UP).toString();
    }

    @NonNull
    public static Map<String, String> toMap(@NonNull final AdRequest adRequest) {
        io.bidmachine.core.a.b(TAG, new hr.b() { // from class: io.bidmachine.d2
            @Override // hr.b
            public final Object get() {
                String lambda$toMap$2;
                lambda$toMap$2 = BidMachineFetcher.lambda$toMap$2(AdRequest.this);
                return lambda$toMap$2;
            }
        });
        HashMap hashMap = new HashMap();
        lp.c auctionResult = adRequest.getAuctionResult();
        if (auctionResult == null) {
            return hashMap;
        }
        hashMap.put(KEY_ID, auctionResult.getId());
        hashMap.put(KEY_PRICE, roundPrice(auctionResult.getPrice()));
        hashMap.put(KEY_NETWORK_KEY, auctionResult.a());
        String identifyAdType = identifyAdType(auctionResult.c());
        if (identifyAdType != null) {
            hashMap.put(KEY_AD_TYPE, identifyAdType);
        }
        hashMap.putAll(auctionResult.getCustomParams());
        return hashMap;
    }

    @Nullable
    public static <T extends AdRequest> T release(@NonNull AdsType adsType, @NonNull Map<String, String> map) {
        return (T) release(adsType, map.get(KEY_ID));
    }

    @Nullable
    public static <T extends AdRequest> T release(@NonNull AdsType adsType, @Nullable final String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        io.bidmachine.core.a.b(TAG, new hr.b() { // from class: io.bidmachine.c2
            @Override // hr.b
            public final Object get() {
                String lambda$release$1;
                lambda$release$1 = BidMachineFetcher.lambda$release$1(str);
                return lambda$release$1;
            }
        });
        synchronized (BidMachineFetcher.class) {
            try {
                Map<String, AdRequest> map = cachedRequests.get(adsType);
                if (map != null) {
                    try {
                        return (T) map.remove(str);
                    } catch (Exception unused) {
                        return null;
                    }
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class a implements AdRequest.AdRequestListener {
        a() {
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestExpired(@NonNull AdRequest adRequest) {
            BidMachineFetcher.release(adRequest);
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestFailed(@NonNull AdRequest adRequest, @NonNull fr.a aVar) {
        }

        @Override // io.bidmachine.AdRequest.AdRequestListener
        public void onRequestSuccess(@NonNull AdRequest adRequest, @NonNull lp.c cVar) {
        }
    }
}
