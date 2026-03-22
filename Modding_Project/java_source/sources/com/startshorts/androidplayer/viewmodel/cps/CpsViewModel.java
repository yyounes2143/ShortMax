package com.startshorts.androidplayer.viewmodel.cps;

import android.content.Context;
import au.c;
import com.startshorts.androidplayer.bean.eventbus.RefreshCollectListEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.search.RedeemCode;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.cps.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CpsViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CpsViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public static final a f48437e = new a(null);

    /* compiled from: CpsViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private final void B(Context context, String str) {
        BaseViewModel.i(this, "searchExactly " + str, false, new CpsViewModel$searchExactly$1(str, this, context, null), 2, null);
    }

    public final void A(@NotNull com.startshorts.androidplayer.viewmodel.cps.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.C0657a) {
            a.C0657a c0657a = (a.C0657a) intent;
            B(c0657a.a(), c0657a.b());
        }
    }

    public final void C(@NotNull Context context, @NotNull RedeemCode codeInfo, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(codeInfo, "codeInfo");
        c.d().l(new RefreshCollectListEvent());
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("redeem");
        immersionParams.setType(3);
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(codeInfo.getShortPlayId());
        immersionShortsInfo.setShortPlayCode(codeInfo.getShortPlayCode());
        immersionShortsInfo.setUpack(codeInfo.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        if (z10) {
            immersionParams.setRedeemCode(codeInfo);
        }
        Unit unit = Unit.f60915a;
        aVar.a(context, immersionParams);
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "CpsViewModel";
    }
}
