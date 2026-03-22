package com.startshorts.androidplayer.viewmodel.recommend;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.lifecycle.MutableLiveData;
import com.applovin.sdk.AppLovinEventParameters;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.bean.shorts.RecommendShorts;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.recommend.NewUserRecommendShortViewModel;
import jk.b;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: NewUserRecommendShortViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class NewUserRecommendShortViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<Boolean> f49076e = new MutableLiveData<>();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final i f49077f = c.b(new Function0() { // from class: cl.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData H;
            H = NewUserRecommendShortViewModel.H();
            return H;
        }
    });

    private final String B(int i10) {
        if (i10 == 0) {
            return "suspension_window";
        }
        return "immersion_back";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData H() {
        return new MutableLiveData();
    }

    @NotNull
    public final MutableLiveData<a> C() {
        return (MutableLiveData) this.f49077f.getValue();
    }

    @NotNull
    public final MutableLiveData<Boolean> D() {
        return this.f49076e;
    }

    public final void E(int i10, @NotNull RecommendShorts shorts) {
        Intrinsics.checkNotNullParameter(shorts, "shorts");
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", B(i10));
        bundle.putString(TextureRenderKeys.KEY_IS_ACTION, "reel");
        bundle.putString(TtmlNode.TAG_STYLE, "new");
        if (!TextUtils.isEmpty(shorts.getUpack())) {
            bundle.putString("upack", shorts.getUpack());
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "new_user_drama_click", b.a(bundle, eventManager.C(shorts)), 0L, 4, null);
    }

    public final void F(int i10, @NotNull String gpSkuId) {
        Intrinsics.checkNotNullParameter(gpSkuId, "gpSkuId");
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", B(i10));
        bundle.putString(TextureRenderKeys.KEY_IS_ACTION, AppLovinEventParameters.PRODUCT_IDENTIFIER);
        bundle.putString(TtmlNode.TAG_STYLE, "new");
        bundle.putString(AppLovinEventParameters.PRODUCT_IDENTIFIER, gpSkuId);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "new_user_drama_click", bundle, 0L, 4, null);
    }

    public final void G(int i10, @NotNull String action) {
        Intrinsics.checkNotNullParameter(action, "action");
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", B(i10));
        bundle.putString(TextureRenderKeys.KEY_IS_ACTION, action);
        bundle.putString(TtmlNode.TAG_STYLE, "new");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "new_user_drama_click", bundle, 0L, 4, null);
    }

    @NotNull
    public final r I() {
        return BaseViewModel.i(this, "queryRecommendShorts", false, new NewUserRecommendShortViewModel$queryRecommend$1(this, null), 2, null);
    }
}
