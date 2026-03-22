package io.bidmachine;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.explorestack.protobuf.adcom.Ad;
import com.explorestack.protobuf.openrtb.Response;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AuctionResultImpl.java */
/* loaded from: classes7.dex */
public final class c1 implements lp.c {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f54378a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final String f54379b;

    /* renamed from: c  reason: collision with root package name */
    private final double f54380c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final String f54381d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final String f54382e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final String f54383f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String[] f54384g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    private final String f54385h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final Map<String, String> f54386i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private final CreativeFormat f54387j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    private final Map<String, String> f54388k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c1(@NonNull AdsType adsType, @NonNull Response.Seatbid seatbid, @NonNull Response.Seatbid.Bid bid, @NonNull Ad ad2, @NonNull NetworkAdapter networkAdapter, @Nullable AdExtension adExtension) {
        this.f54378a = bid.getId();
        this.f54379b = seatbid.getSeat();
        this.f54380c = bid.getPrice();
        this.f54381d = bid.getDeal();
        this.f54382e = ad2.getId();
        this.f54383f = bid.getCid();
        if (ad2.getAdomainCount() > 0) {
            this.f54384g = (String[]) ad2.m4631getAdomainList().toArray(new String[0]);
        } else {
            this.f54384g = null;
        }
        this.f54388k = e(adExtension);
        this.f54385h = networkAdapter.getKey();
        this.f54386i = d(adsType.obtainHeaderBiddingAd(ad2));
        this.f54387j = f(ad2);
    }

    @NonNull
    private Map<String, String> e(@Nullable AdExtension adExtension) {
        HashMap hashMap = new HashMap();
        if (adExtension != null) {
            try {
                hashMap.putAll(adExtension.getCustomParamsMap());
            } catch (Exception unused) {
            }
        }
        return hashMap;
    }

    @Nullable
    @VisibleForTesting
    static CreativeFormat f(@NonNull Ad ad2) {
        if (ad2.hasDisplay()) {
            Ad.Display display = ad2.getDisplay();
            if (!display.hasBanner() && TextUtils.isEmpty(display.getAdm())) {
                if (display.hasNative()) {
                    return CreativeFormat.Native;
                }
                return null;
            }
            return CreativeFormat.Banner;
        } else if (ad2.hasVideo()) {
            return CreativeFormat.Video;
        } else {
            return null;
        }
    }

    @Override // lp.c
    @NonNull
    public String a() {
        return this.f54385h;
    }

    @Override // lp.c
    @NonNull
    public Map<String, String> b() {
        return this.f54386i;
    }

    @Override // lp.c
    @Nullable
    public CreativeFormat c() {
        return this.f54387j;
    }

    @NonNull
    @VisibleForTesting
    Map<String, String> d(@Nullable HeaderBiddingAd headerBiddingAd) {
        Map<String, String> clientParamsMap;
        HashMap hashMap = new HashMap();
        if (headerBiddingAd != null && (clientParamsMap = headerBiddingAd.getClientParamsMap()) != null) {
            hashMap.putAll(clientParamsMap);
        }
        return hashMap;
    }

    @Override // lp.c
    @NonNull
    public String getCreativeId() {
        return this.f54382e;
    }

    @Override // lp.c
    @NonNull
    public Map<String, String> getCustomParams() {
        return this.f54388k;
    }

    @Override // lp.c
    @Nullable
    public String getDeal() {
        return this.f54381d;
    }

    @Override // lp.c
    @NonNull
    public String getId() {
        return this.f54378a;
    }

    @Override // lp.c
    public double getPrice() {
        return this.f54380c;
    }

    @NonNull
    public String toString() {
        return "id=" + this.f54378a + ", demandSource=" + this.f54379b + ", price=" + this.f54380c + ", creativeId=" + this.f54382e + ", cid=" + this.f54383f;
    }
}
