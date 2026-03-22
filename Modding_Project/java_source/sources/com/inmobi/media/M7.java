package com.inmobi.media;

import android.content.Context;
import android.content.Intent;
import android.util.SparseArray;
import com.inmobi.ads.rendering.InMobiAdActivity;
import com.inmobi.commons.core.configs.AdConfig;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class M7 extends G1 {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ T7 f23847d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ T7 f23848e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public M7(T7 t72, T7 t73) {
        super(t72);
        this.f23847d = t72;
        this.f23848e = t73;
    }

    @Override // com.inmobi.media.G1
    public final void a() {
        JSONObject e10;
        boolean z10;
        T7 t72;
        T7 t73 = this.f23847d;
        if (t73.C == null) {
            InterfaceC3269z5 interfaceC3269z5 = t73.f24185j;
            if (interfaceC3269z5 != null) {
                String TAG = t73.f24188m;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z5).c(TAG, "prepareFullscreenContainer");
            }
            C3113p8 c3113p8 = t73.f24177b;
            JSONArray jSONArray = c3113p8.f25139f;
            if (jSONArray != null && !B2.a(jSONArray) && (e10 = c3113p8.e()) != null) {
                byte b10 = t73.f24176a;
                if (b10 == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                C3113p8 dataModel = new C3113p8(b10, e10, c3113p8, z10, t73.f24194s, t73.f24185j);
                dataModel.f25150q = c3113p8.f25150q;
                Context context = (Context) t73.f24199x.get();
                if (dataModel.f() && context != null) {
                    String adImpressionId = t73.getImpressionId();
                    Set set = t73.f24179d;
                    AdConfig adConfig = t73.f24194s;
                    long j10 = t73.f24180e;
                    boolean z11 = t73.f24181f;
                    String creativeId = t73.getCreativeId();
                    S6 s62 = t73.f24184i;
                    InterfaceC3269z5 interfaceC3269z52 = t73.f24185j;
                    Intrinsics.checkNotNullParameter(context, "context");
                    Intrinsics.checkNotNullParameter(dataModel, "dataModel");
                    Intrinsics.checkNotNullParameter(adImpressionId, "adImpressionId");
                    Intrinsics.checkNotNullParameter(adConfig, "adConfig");
                    Intrinsics.checkNotNullParameter(creativeId, "creativeId");
                    if (dataModel.c().contains("VIDEO")) {
                        t72 = new C2870a9(context, (byte) 0, dataModel, adImpressionId, set, adConfig, j10, z11, creativeId, null, s62, interfaceC3269z52);
                    } else {
                        t72 = new T7(context, (byte) 0, dataModel, adImpressionId, set, adConfig, j10, z11, creativeId, null, s62, interfaceC3269z52);
                    }
                    T7 t74 = t72;
                    t73.C = t74;
                    t74.f24197v = t73;
                    P0 p02 = t73.f24198w;
                    if (p02 != null) {
                        t74.f24198w = p02;
                    }
                }
            }
        }
        T7 container = this.f23847d.C;
        if (container != null) {
            SparseArray sparseArray = InMobiAdActivity.f23426k;
            Intrinsics.checkNotNullParameter(container, "container");
            int hashCode = container.hashCode();
            InMobiAdActivity.f23426k.put(hashCode, container);
            Intent intent = new Intent((Context) this.f23847d.f24199x.get(), InMobiAdActivity.class);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", hashCode);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 102);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", true);
            intent.putExtra("com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", 201);
            Context context2 = (Context) this.f23847d.f24199x.get();
            T7 t75 = this.f23847d;
            if (t75.D) {
                t75.G = intent;
            } else if (context2 != null) {
                Uc.f24267a.a(context2, intent);
            }
        }
    }

    @Override // com.inmobi.media.G1
    public final void c() {
        super.c();
        P0 p02 = this.f23848e.f24198w;
        if (p02 != null) {
            p02.c();
        }
    }
}
