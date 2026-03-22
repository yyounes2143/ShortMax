package om;

import androidx.annotation.NonNull;
import com.explorestack.protobuf.adcom.Ad;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.vungle.ads.internal.Constants;
import io.bidmachine.LabelData;
import io.bidmachine.PrivacySheetData;
import io.bidmachine.TrackEventType;
import yq.r;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NativeAdObjectParams.java */
/* loaded from: classes7.dex */
public final class k extends a {
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private final pm.b f64294d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private final pm.a f64295e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    private final pm.c f64296f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(@NonNull Ad ad2) {
        super(ad2);
        pm.b bVar = new pm.b();
        this.f64294d = bVar;
        pm.a aVar = new pm.a(bVar);
        this.f64295e = aVar;
        this.f64296f = new pm.c(aVar);
        Ad.Display.Native r62 = ad2.getDisplay().getNative();
        Ad.Display.Native.LinkAsset link = r62.getLink();
        if (link != null && link != Ad.Display.Native.LinkAsset.getDefaultInstance()) {
            b().put(Constants.CLICK_URL, link.getUrl());
            for (int i10 = 0; i10 < link.getTrkrCount(); i10++) {
                a(TrackEventType.Click, link.getTrkr(i10));
            }
        }
        for (Ad.Display.Native.Asset asset : r62.getAssetList()) {
            int id2 = asset.getId();
            if (id2 != 4) {
                if (id2 != 7) {
                    if (id2 != 8) {
                        if (id2 != 101) {
                            if (id2 != 102) {
                                if (id2 != 123) {
                                    if (id2 != 124) {
                                        if (id2 != 127) {
                                            if (id2 == 128) {
                                                b().put("imageUrl", asset.getImage().getUrl());
                                            }
                                        } else {
                                            b().put(InMobiNetworkValues.DESCRIPTION, asset.getData().getValue());
                                        }
                                    } else {
                                        b().put("iconUrl", asset.getImage().getUrl());
                                    }
                                } else {
                                    b().put("title", asset.getTitle().getText());
                                }
                            } else {
                                r.m(this.f64296f.a(asset), new yq.d() { // from class: om.j
                                    @Override // yq.d
                                    public final void execute(Object obj) {
                                        k.this.p((PrivacySheetData) obj);
                                    }
                                });
                            }
                        } else {
                            r.m(this.f64295e.a(asset.getLabel()), new yq.d() { // from class: om.i
                                @Override // yq.d
                                public final void execute(Object obj) {
                                    k.this.o((LabelData) obj);
                                }
                            });
                        }
                    } else {
                        b().put(InMobiNetworkValues.CTA, asset.getData().getValue());
                    }
                } else {
                    try {
                        b().put("rating", Float.valueOf(asset.getData().getValue()));
                    } catch (NumberFormatException unused) {
                    }
                }
            } else {
                Ad.Display.Native.Asset.VideoAsset defaultInstance = Ad.Display.Native.Asset.VideoAsset.getDefaultInstance();
                if (!asset.getVideo().getCurl().equals(defaultInstance.getCurl())) {
                    b().put("videoUrl", asset.getVideo().getCurl());
                }
                if (!asset.getVideo().getAdm().equals(defaultInstance.getAdm())) {
                    b().put("videoAdm", asset.getVideo().getAdm());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(LabelData labelData) {
        b().put("adLabel", labelData);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p(PrivacySheetData privacySheetData) {
        b().put("privacySheet", privacySheetData);
    }

    @Override // om.h, lp.b
    public boolean f() {
        return true;
    }
}
