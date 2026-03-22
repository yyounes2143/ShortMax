package df;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.view.immersion.CampaignShortsFloatView;
import com.startshorts.androidplayer.ui.view.subs.RestoreTipView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import ff.a;
import java.lang.ref.WeakReference;
import jk.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FloatViewManagerFactory.kt */
@Metadata
/* loaded from: classes6.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f50390a = new f();

    /* renamed from: b  reason: collision with root package name */
    private static final int f50391b = g.a(10.0f);

    /* compiled from: FloatViewManagerFactory.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a implements ef.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f50392a;

        a(View view) {
            this.f50392a = view;
        }

        @Override // ef.b
        public View a(Activity activity, ViewGroup parent) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            Intrinsics.checkNotNullParameter(parent, "parent");
            int G = DeviceUtil.f48146a.G() - (f.f50391b * 2);
            View view = this.f50392a;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(G, -2);
            layoutParams.gravity = 1;
            view.setLayoutParams(layoutParams);
            return view;
        }
    }

    private f() {
    }

    private final e c(View view, a.InterfaceC0743a interfaceC0743a) {
        e eVar = new e();
        eVar.l().e(f50391b + DeviceUtil.f48146a.J());
        ff.a aVar = new ff.a();
        aVar.b(interfaceC0743a);
        eVar.o(aVar);
        eVar.n(new a(view));
        return eVar;
    }

    static /* synthetic */ e d(f fVar, View view, a.InterfaceC0743a interfaceC0743a, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            interfaceC0743a = null;
        }
        return fVar.c(view, interfaceC0743a);
    }

    @NotNull
    public final e b(@NotNull Activity activity, @NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(episode, "episode");
        CampaignShortsFloatView campaignShortsFloatView = new CampaignShortsFloatView(activity);
        campaignShortsFloatView.setEpisode(episode);
        return d(this, campaignShortsFloatView, null, 2, null);
    }

    @Nullable
    public final e e(@NotNull String content) {
        IDActivity iDActivity;
        BaseActivity baseActivity;
        Intrinsics.checkNotNullParameter(content, "content");
        WeakReference<IDActivity> d10 = aa.a.f321a.d();
        if (d10 != null) {
            iDActivity = d10.get();
        } else {
            iDActivity = null;
        }
        if (iDActivity instanceof BaseActivity) {
            baseActivity = (BaseActivity) iDActivity;
        } else {
            baseActivity = null;
        }
        if (baseActivity == null) {
            return null;
        }
        RestoreTipView restoreTipView = new RestoreTipView(baseActivity);
        restoreTipView.setContent(content);
        return d(this, restoreTipView, null, 2, null);
    }
}
