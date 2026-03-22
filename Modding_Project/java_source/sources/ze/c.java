package ze;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.discover.ComingSoonDetailDialogFragment;
import com.startshorts.androidplayer.ui.view.discover.ComingSoonChip;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ComingSoonHelper.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c {
    @NotNull

    /* renamed from: a */
    public static final c f71647a = new c();

    private c() {
    }

    public static /* synthetic */ void e(c cVar, FragmentManager fragmentManager, View view, DiscoverShorts discoverShorts, TextView textView, TextView textView2, ComingSoonChip comingSoonChip, TextView textView3, Integer num, DiscoverTab discoverTab, boolean z10, int i10, Object obj) {
        TextView textView4;
        Integer num2;
        DiscoverTab discoverTab2;
        boolean z11;
        if ((i10 & 64) != 0) {
            textView4 = null;
        } else {
            textView4 = textView3;
        }
        if ((i10 & 128) != 0) {
            num2 = null;
        } else {
            num2 = num;
        }
        if ((i10 & 256) != 0) {
            discoverTab2 = null;
        } else {
            discoverTab2 = discoverTab;
        }
        if ((i10 & 512) != 0) {
            z11 = false;
        } else {
            z11 = z10;
        }
        cVar.c(fragmentManager, view, discoverShorts, textView, textView2, comingSoonChip, textView4, num2, discoverTab2, z11);
    }

    public static /* synthetic */ void f(c cVar, DiscoverShorts discoverShorts, View view, TextView textView, TextView textView2, ComingSoonChip comingSoonChip, TextView textView3, Integer num, DiscoverTab discoverTab, boolean z10, int i10, Object obj) {
        TextView textView4;
        Integer num2;
        DiscoverTab discoverTab2;
        boolean z11;
        if ((i10 & 32) != 0) {
            textView4 = null;
        } else {
            textView4 = textView3;
        }
        if ((i10 & 64) != 0) {
            num2 = null;
        } else {
            num2 = num;
        }
        if ((i10 & 128) != 0) {
            discoverTab2 = null;
        } else {
            discoverTab2 = discoverTab;
        }
        if ((i10 & 256) != 0) {
            z11 = false;
        } else {
            z11 = z10;
        }
        cVar.d(discoverShorts, view, textView, textView2, comingSoonChip, textView4, num2, discoverTab2, z11);
    }

    public static final void g(DiscoverTab discoverTab, DiscoverShorts discoverShorts, FragmentManager fragmentManager, Integer num, boolean z10, View view) {
        int i10;
        String str;
        String str2;
        int intValue;
        EventManager eventManager = EventManager.f42463a;
        Bundle B = eventManager.B(discoverTab);
        B.putString("module_name", discoverShorts.getModuleName());
        B.putString("module_id", discoverShorts.getModuleId());
        int i11 = 0;
        if (num != null) {
            i10 = num.intValue();
        } else {
            i10 = 0;
        }
        B.putString("position_id", String.valueOf(i10));
        B.putString("module_type", "coming_soon");
        if (z10) {
            B.putString("scene", "discover_more");
        }
        if (!TextUtils.isEmpty(discoverShorts.getUpack())) {
            B.putString("upack", discoverShorts.getUpack());
        }
        if (discoverShorts.getTrailerId() > 0) {
            B.putString("reel_id", String.valueOf(discoverShorts.getTrailerId()));
            B.putString("type", "trailer");
        }
        B.putString("skip_type", "reel");
        Integer recommendId = discoverShorts.getRecommendId();
        if (recommendId != null && (intValue = recommendId.intValue()) > 0) {
            B.putInt(CallAppDataKey.KEY_AUDIENCE_RECOMMEND_ID, intValue);
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "discover_module_click", B, 0L, 4, null);
        if (discoverShorts.getTrailerId() == 0) {
            ComingSoonDetailDialogFragment.a aVar = ComingSoonDetailDialogFragment.f45847t;
            Intrinsics.checkNotNull(fragmentManager);
            aVar.a(fragmentManager, discoverShorts, discoverTab);
            return;
        }
        c cVar = f71647a;
        Context context = view.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        String formatTitleForEvent = discoverShorts.formatTitleForEvent();
        String moduleId = discoverShorts.getModuleId();
        if (moduleId == null) {
            str = "";
        } else {
            str = moduleId;
        }
        String moduleName = discoverShorts.getModuleName();
        if (moduleName == null) {
            str2 = "";
        } else {
            str2 = moduleName;
        }
        if (num != null) {
            i11 = num.intValue();
        }
        cVar.i(context, formatTitleForEvent, new ModuleInfo(str, "coming_soon", str2, i11, null, String.valueOf(discoverShorts.getTrailerId()), null, null, null, null, null, 2000, null), discoverShorts);
    }

    public static final Unit h(DiscoverShorts discoverShorts, boolean z10) {
        discoverShorts.setReservation(z10);
        return Unit.f60915a;
    }

    private final void i(Context context, String str, ModuleInfo moduleInfo, DiscoverShorts discoverShorts) {
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom(str);
        immersionParams.setType(3);
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setVideoType(4);
        immersionShortsInfo.setShortsId(discoverShorts.getTrailerId());
        immersionShortsInfo.setShortPlayCode(String.valueOf(discoverShorts.getTrailerId()));
        immersionShortsInfo.setBindShortsId(discoverShorts.getId());
        immersionShortsInfo.setShortsName(discoverShorts.getShortPlayName());
        immersionShortsInfo.setCover(discoverShorts.getPicUrl());
        immersionShortsInfo.setUpack(discoverShorts.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        immersionParams.setModuleInfo(moduleInfo);
        immersionParams.setEnableLoadMore(false);
        Unit unit = Unit.f60915a;
        aVar.a(context, immersionParams);
    }

    public final void c(@Nullable final FragmentManager fragmentManager, @Nullable View view, @NotNull final DiscoverShorts shorts, @NotNull TextView shortsNameTv, @NotNull TextView dateTv, @NotNull ComingSoonChip comingSoonCp, @Nullable TextView textView, @Nullable final Integer num, @Nullable final DiscoverTab discoverTab, final boolean z10) {
        String string;
        Intrinsics.checkNotNullParameter(shorts, "shorts");
        Intrinsics.checkNotNullParameter(shortsNameTv, "shortsNameTv");
        Intrinsics.checkNotNullParameter(dateTv, "dateTv");
        Intrinsics.checkNotNullParameter(comingSoonCp, "comingSoonCp");
        shortsNameTv.setText(shorts.getShortPlayName());
        String releaseTime = shorts.getReleaseTime();
        if (releaseTime != null && !StringsKt.t0(releaseTime)) {
            string = shorts.getReleaseTime();
        } else {
            string = dateTv.getContext().getString(R$string.discover_fragment_coming_soon);
        }
        dateTv.setText(string);
        if (textView != null) {
            textView.setText(shorts.getSummary());
        }
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: ze.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    c.g(DiscoverTab.this, shorts, fragmentManager, num, z10, view2);
                }
            });
        }
        if (fragmentManager != null) {
            ComingSoonChip.J(comingSoonCp, fragmentManager, shorts.getId(), shorts.getShortPlayCode(), shorts.isReservation(), new Function1() { // from class: ze.b
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit h10;
                    h10 = c.h(DiscoverShorts.this, ((Boolean) obj).booleanValue());
                    return h10;
                }
            }, null, null, null, 224, null);
        }
    }

    public final void d(@NotNull DiscoverShorts shorts, @Nullable View view, @NotNull TextView shortsNameTv, @NotNull TextView dateTv, @NotNull ComingSoonChip comingSoonCp, @Nullable TextView textView, @Nullable Integer num, @Nullable DiscoverTab discoverTab, boolean z10) {
        FragmentActivity fragmentActivity;
        Intrinsics.checkNotNullParameter(shorts, "shorts");
        Intrinsics.checkNotNullParameter(shortsNameTv, "shortsNameTv");
        Intrinsics.checkNotNullParameter(dateTv, "dateTv");
        Intrinsics.checkNotNullParameter(comingSoonCp, "comingSoonCp");
        Context context = shortsNameTv.getContext();
        FragmentManager fragmentManager = null;
        if (context instanceof FragmentActivity) {
            fragmentActivity = (FragmentActivity) context;
        } else {
            fragmentActivity = null;
        }
        if (fragmentActivity != null) {
            fragmentManager = fragmentActivity.getSupportFragmentManager();
        }
        c(fragmentManager, view, shorts, shortsNameTv, dateTv, comingSoonCp, textView, num, discoverTab, z10);
    }
}
