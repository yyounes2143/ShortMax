package hi;

import android.content.Context;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.databinding.DialogLoadingBinding;
import com.startshorts.androidplayer.utils.DeviceUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RewardAdLoadingDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public class c extends fi.a<DialogLoadingBinding> implements ha.a {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f52884d = new a(null);

    /* compiled from: RewardAdLoadingDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // ha.a
    public void a() {
        dismiss();
    }

    @Override // ha.a
    public void b() {
        show();
    }

    @Override // fi.a
    public float e() {
        return 0.0f;
    }

    @Override // fi.a
    public int f() {
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        return deviceUtil.F() - deviceUtil.J();
    }

    @Override // fi.a
    public int g() {
        return R$layout.dialog_reward_loading;
    }

    @Override // fi.a
    @NotNull
    public String k() {
        return "RewardAdLoadingDialog";
    }

    @Override // fi.a
    public int n() {
        return -1;
    }

    @Override // fi.a
    public void p() {
    }
}
