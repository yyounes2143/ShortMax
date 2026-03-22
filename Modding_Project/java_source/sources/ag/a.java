package ag;

import android.os.Bundle;
import android.text.TextUtils;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import jk.b;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ReelShowEventManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a */
    public static final a f646a = new a();

    private a() {
    }

    public static /* synthetic */ void c(a aVar, DiscoverShorts discoverShorts, int i10, int i11, DiscoverTab discoverTab, DiscoverRanking discoverRanking, Integer num, Integer num2, String str, int i12, Object obj) {
        int i13;
        DiscoverTab discoverTab2;
        DiscoverRanking discoverRanking2;
        Integer num3;
        Integer num4;
        String str2;
        if ((i12 & 4) != 0) {
            i13 = 1;
        } else {
            i13 = i11;
        }
        if ((i12 & 8) != 0) {
            discoverTab2 = null;
        } else {
            discoverTab2 = discoverTab;
        }
        if ((i12 & 16) != 0) {
            discoverRanking2 = null;
        } else {
            discoverRanking2 = discoverRanking;
        }
        if ((i12 & 32) != 0) {
            num3 = null;
        } else {
            num3 = num;
        }
        if ((i12 & 64) != 0) {
            num4 = null;
        } else {
            num4 = num2;
        }
        if ((i12 & 128) != 0) {
            str2 = "discover";
        } else {
            str2 = str;
        }
        aVar.a(discoverShorts, i10, i13, discoverTab2, discoverRanking2, num3, num4, str2);
    }

    public static /* synthetic */ void d(a aVar, String str, String str2, ActResource actResource, int i10, DiscoverRanking discoverRanking, Integer num, Integer num2, String str3, String str4, int i11, Object obj) {
        ActResource actResource2;
        int i12;
        DiscoverRanking discoverRanking2;
        Integer num3;
        Integer num4;
        String str5;
        String str6;
        if ((i11 & 4) != 0) {
            actResource2 = null;
        } else {
            actResource2 = actResource;
        }
        if ((i11 & 8) != 0) {
            i12 = 1;
        } else {
            i12 = i10;
        }
        if ((i11 & 16) != 0) {
            discoverRanking2 = null;
        } else {
            discoverRanking2 = discoverRanking;
        }
        if ((i11 & 32) != 0) {
            num3 = null;
        } else {
            num3 = num;
        }
        if ((i11 & 64) != 0) {
            num4 = null;
        } else {
            num4 = num2;
        }
        if ((i11 & 128) != 0) {
            str5 = "";
        } else {
            str5 = str3;
        }
        if ((i11 & 256) != 0) {
            str6 = "";
        } else {
            str6 = str4;
        }
        aVar.b(str, str2, actResource2, i12, discoverRanking2, num3, num4, str5, str6);
    }

    public static /* synthetic */ void f(a aVar, String str, int i10, String str2, int i11, String str3, Bundle bundle, int i12, Object obj) {
        if ((i12 & 8) != 0) {
            i11 = 1;
        }
        int i13 = i11;
        if ((i12 & 32) != 0) {
            bundle = null;
        }
        aVar.e(str, i10, str2, i13, str3, bundle);
    }

    public final void a(@NotNull DiscoverShorts shorts, int i10, int i11, @Nullable DiscoverTab discoverTab, @Nullable DiscoverRanking discoverRanking, @Nullable Integer num, @Nullable Integer num2, @Nullable String str) {
        String str2;
        int intValue;
        Intrinsics.checkNotNullParameter(shorts, "shorts");
        EventManager eventManager = EventManager.f42463a;
        Bundle a10 = b.a(eventManager.B(discoverTab), eventManager.A(discoverRanking));
        if (i11 == 4) {
            a10.putString("type", "trailer");
            a10.putString("reel_id", String.valueOf(shorts.getTrailerId()));
        } else {
            a10.putString("type", "positive");
            a10.putString("reel_id", shorts.getShortPlayCode());
        }
        a10.putString("scene", str);
        a10.putString("module_id", shorts.getModuleId());
        a10.putString("module_name", shorts.getModuleName());
        a10.putString("position_id", String.valueOf(i10 + 1));
        if (!TextUtils.isEmpty(shorts.getUpack())) {
            a10.putString("upack", shorts.getUpack());
        }
        Integer recommendId = shorts.getRecommendId();
        if (recommendId != null && (intValue = recommendId.intValue()) > 0) {
            a10.putInt(CallAppDataKey.KEY_AUDIENCE_RECOMMEND_ID, intValue);
        }
        if (num != null) {
            str2 = num.toString();
        } else {
            str2 = null;
        }
        a10.putString("module_list", str2);
        if (num2 != null && num2.intValue() == 2) {
            a10.putString("module_list_type", "close");
        } else if (num2 != null && num2.intValue() == 1) {
            a10.putString("module_list_type", MRAIDPresenter.OPEN);
        } else {
            a10.putString("module_list_type", null);
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_show", a10, 0L, 4, null);
    }

    public final void b(@NotNull String scene, @Nullable String str, @Nullable ActResource actResource, int i10, @Nullable DiscoverRanking discoverRanking, @Nullable Integer num, @Nullable Integer num2, @Nullable String str2, @Nullable String str3) {
        String str4;
        Intrinsics.checkNotNullParameter(scene, "scene");
        EventManager eventManager = EventManager.f42463a;
        Bundle a10 = b.a(EventManager.x(eventManager, actResource, false, 2, null), eventManager.A(discoverRanking));
        a10.putString("scene", scene);
        a10.putString("reel_id", str);
        if (!TextUtils.isEmpty(str2)) {
            a10.putString("upack", str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            a10.putString("query", str3);
        }
        if (i10 == 4) {
            a10.putString("type", "trailer");
        } else {
            a10.putString("type", "positive");
        }
        if (num != null) {
            str4 = num.toString();
        } else {
            str4 = null;
        }
        a10.putString("module_list", str4);
        if (num2 != null && num2.intValue() == 2) {
            a10.putString("module_list_type", "close");
        } else if (num2 != null && num2.intValue() == 1) {
            a10.putString("module_list_type", MRAIDPresenter.OPEN);
        } else {
            a10.putString("module_list_type", null);
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_show", a10, 0L, 4, null);
    }

    public final void e(@NotNull String scene, int i10, @Nullable String str, int i11, @Nullable String str2, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(scene, "scene");
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle2 = new Bundle();
        if (!TextUtils.isEmpty(str2)) {
            bundle2.putString("upack", str2);
        }
        bundle2.putString("scene", scene);
        bundle2.putString("reel_id", str);
        if (i11 == 4) {
            bundle2.putString("type", "trailer");
        } else {
            bundle2.putString("type", "positive");
        }
        bundle2.putString("position_id", String.valueOf(i10 + 1));
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_show", bundle2, 0L, 4, null);
    }
}
