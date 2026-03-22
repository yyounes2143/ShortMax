package ed;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f51339a = new a();

    private a() {
    }

    public static /* synthetic */ void c(a aVar, Activity activity, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        aVar.b(activity, z10);
    }

    public final void a(Activity activity) {
        View decorView;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Window window = activity.getWindow();
        if (window != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
        }
    }

    public final void b(Activity activity, boolean z10) {
        View childAt;
        Intrinsics.checkNotNullParameter(activity, "activity");
        Window window = activity.getWindow();
        window.addFlags(Integer.MIN_VALUE);
        if (z10) {
            window.clearFlags(67108864);
            window.setStatusBarColor(0);
            window.getDecorView().setSystemUiVisibility(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER);
        } else {
            window.addFlags(67108864);
            window.getDecorView().setSystemUiVisibility(0);
        }
        ViewGroup viewGroup = (ViewGroup) window.findViewById(16908290);
        if (viewGroup != null && (childAt = viewGroup.getChildAt(0)) != null) {
            childAt.setFitsSystemWindows(false);
            childAt.requestApplyInsets();
        }
    }
}
