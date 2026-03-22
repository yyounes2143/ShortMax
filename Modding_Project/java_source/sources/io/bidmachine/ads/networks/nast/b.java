package io.bidmachine.ads.networks.nast;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.vungle.ads.internal.Constants;
import io.bidmachine.Function;
import io.bidmachine.LabelData;
import io.bidmachine.MediaAssetType;
import io.bidmachine.PrivacySheetData;
import xq.c;
import xq.k;
import xq.n;
import xq.o;
/* compiled from: NastParams.java */
/* loaded from: classes7.dex */
public class b extends o {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    final String f53875b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    final String f53876c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    final String f53877d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    final Float f53878e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    final String f53879f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    final String f53880g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    final String f53881h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    final String f53882i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    final String f53883j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    final LabelData f53884k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    final PrivacySheetData f53885l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@NonNull k kVar) {
        super(kVar);
        this.f53875b = kVar.k("title");
        this.f53876c = kVar.k(InMobiNetworkValues.DESCRIPTION);
        this.f53877d = kVar.k(InMobiNetworkValues.CTA);
        this.f53878e = kVar.c("rating");
        this.f53879f = kVar.k("iconUrl");
        this.f53880g = kVar.k("imageUrl");
        this.f53881h = kVar.k("videoUrl");
        this.f53882i = kVar.k("videoAdm");
        this.f53883j = kVar.k(Constants.CLICK_URL);
        this.f53884k = (LabelData) kVar.g("adLabel", new Function() { // from class: mm.a
            @Override // io.bidmachine.Function
            public final Object apply(Object obj) {
                LabelData e10;
                e10 = io.bidmachine.ads.networks.nast.b.e(obj);
                return e10;
            }
        });
        this.f53885l = (PrivacySheetData) kVar.g("privacySheet", new Function() { // from class: mm.b
            @Override // io.bidmachine.Function
            public final Object apply(Object obj) {
                PrivacySheetData f10;
                f10 = io.bidmachine.ads.networks.nast.b.f(obj);
                return f10;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ LabelData e(Object obj) {
        return (LabelData) obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ PrivacySheetData f(Object obj) {
        return (PrivacySheetData) obj;
    }

    public boolean c(@NonNull c cVar) {
        if (TextUtils.isEmpty(this.f53875b)) {
            cVar.onAdLoadFailed(fr.a.k("title"));
            return false;
        } else if (TextUtils.isEmpty(this.f53877d)) {
            cVar.onAdLoadFailed(fr.a.k(InMobiNetworkValues.CTA));
            return false;
        } else {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(@NonNull n nVar, @NonNull c cVar) {
        if (!c(cVar)) {
            return false;
        }
        io.bidmachine.nativead.a adRequestParameters = nVar.getAdRequestParameters();
        if (adRequestParameters.c() && adRequestParameters.a(MediaAssetType.Icon) && TextUtils.isEmpty(this.f53879f)) {
            cVar.onAdLoadFailed(fr.a.k("iconUrl"));
            return false;
        } else if (adRequestParameters.c() && adRequestParameters.a(MediaAssetType.Image) && TextUtils.isEmpty(this.f53880g)) {
            cVar.onAdLoadFailed(fr.a.k("imageUrl"));
            return false;
        } else if (adRequestParameters.c() && adRequestParameters.a(MediaAssetType.Video) && TextUtils.isEmpty(this.f53882i) && TextUtils.isEmpty(this.f53881h)) {
            cVar.onAdLoadFailed(fr.a.k("videoAdm or videoUrl"));
            return false;
        } else {
            return true;
        }
    }
}
